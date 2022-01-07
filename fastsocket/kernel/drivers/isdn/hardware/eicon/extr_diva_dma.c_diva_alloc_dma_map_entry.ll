; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_alloc_dma_map_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_alloc_dma_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._diva_dma_map_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diva_alloc_dma_map_entry(%struct._diva_dma_map_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._diva_dma_map_entry*, align 8
  %4 = alloca i32, align 4
  store %struct._diva_dma_map_entry* %0, %struct._diva_dma_map_entry** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %3, align 8
  %7 = icmp ne %struct._diva_dma_map_entry* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %9, i64 %11
  %13 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %8, %5
  %17 = phi i1 [ false, %5 ], [ %15, %8 ]
  br i1 %17, label %18, label %37

18:                                               ; preds = %16
  %19 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
