; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_alloc_dma_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_alloc_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._diva_dma_map_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._diva_dma_map_entry* @diva_alloc_dma_map(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._diva_dma_map_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = call %struct._diva_dma_map_entry* @diva_os_malloc(i32 0, i32 %10)
  store %struct._diva_dma_map_entry* %11, %struct._diva_dma_map_entry** %5, align 8
  %12 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %5, align 8
  %13 = icmp ne %struct._diva_dma_map_entry* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct._diva_dma_map_entry* %15, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %5, align 8
  ret %struct._diva_dma_map_entry* %23
}

declare dso_local %struct._diva_dma_map_entry* @diva_os_malloc(i32, i32) #1

declare dso_local i32 @memset(%struct._diva_dma_map_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
