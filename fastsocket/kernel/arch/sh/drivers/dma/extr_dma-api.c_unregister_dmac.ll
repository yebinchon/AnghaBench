; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_unregister_dmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_unregister_dmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i32, i32, i32, i32, i64 }

@DMAC_CHANNELS_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_dmac(%struct.dma_info* %0) #0 {
  %2 = alloca %struct.dma_info*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %7 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %12 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %18 = call i32 @dma_remove_sysfs_files(i64 %16, %struct.dma_info* %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %24 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMAC_CHANNELS_CONFIGURED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %31 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @kfree(i64 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %36 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %35, i32 0, i32 3
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.dma_info*, %struct.dma_info** %2, align 8
  %39 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @platform_device_unregister(i32 %40)
  ret void
}

declare dso_local i32 @dma_remove_sysfs_files(i64, %struct.dma_info*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
