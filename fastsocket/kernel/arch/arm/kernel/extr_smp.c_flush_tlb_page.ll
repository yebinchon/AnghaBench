; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.tlb_args = type { i64, %struct.vm_area_struct* }

@ipi_flush_tlb_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tlb_args, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64 (...) @tlb_ops_need_broadcast()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %5, i32 0, i32 1
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %5, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mm_cpumask(i32 %15)
  %17 = load i32, i32* @ipi_flush_tlb_page, align 4
  %18 = call i32 @on_each_cpu_mask(i32 %16, i32 %17, %struct.tlb_args* %5, i32 1)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @local_flush_tlb_page(%struct.vm_area_struct* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %8
  ret void
}

declare dso_local i64 @tlb_ops_need_broadcast(...) #1

declare dso_local i32 @on_each_cpu_mask(i32, i32, %struct.tlb_args*, i32) #1

declare dso_local i32 @mm_cpumask(i32) #1

declare dso_local i32 @local_flush_tlb_page(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
