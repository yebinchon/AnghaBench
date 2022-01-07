; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_cache.c_flush_dma_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_cache.c_flush_dma_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_descr_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dma_list(%struct.dma_descr_data* %0) #0 {
  %2 = alloca %struct.dma_descr_data*, align 8
  store %struct.dma_descr_data* %0, %struct.dma_descr_data** %2, align 8
  br label %3

3:                                                ; preds = %1, %11
  %4 = load %struct.dma_descr_data*, %struct.dma_descr_data** %2, align 8
  %5 = call i32 @flush_dma_descr(%struct.dma_descr_data* %4, i32 1)
  %6 = load %struct.dma_descr_data*, %struct.dma_descr_data** %2, align 8
  %7 = getelementptr inbounds %struct.dma_descr_data, %struct.dma_descr_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %17

11:                                               ; preds = %3
  %12 = load %struct.dma_descr_data*, %struct.dma_descr_data** %2, align 8
  %13 = getelementptr inbounds %struct.dma_descr_data, %struct.dma_descr_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call %struct.dma_descr_data* @phys_to_virt(i32 %15)
  store %struct.dma_descr_data* %16, %struct.dma_descr_data** %2, align 8
  br label %3

17:                                               ; preds = %10
  ret void
}

declare dso_local i32 @flush_dma_descr(%struct.dma_descr_data*, i32) #1

declare dso_local %struct.dma_descr_data* @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
