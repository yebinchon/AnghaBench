; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_get_dma_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-api.c_get_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }
%struct.dma_info = type { i32, %struct.dma_channel* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_channel* @get_dma_channel(i32 %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca %struct.dma_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.dma_info* @get_dma_info(i32 %7)
  store %struct.dma_info* %8, %struct.dma_info** %4, align 8
  %9 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %10 = icmp ne %struct.dma_info* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dma_channel* @ERR_PTR(i32 %17)
  store %struct.dma_channel* %18, %struct.dma_channel** %2, align 8
  br label %45

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %23 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %28 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %27, i32 0, i32 1
  %29 = load %struct.dma_channel*, %struct.dma_channel** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %29, i64 %31
  store %struct.dma_channel* %32, %struct.dma_channel** %5, align 8
  %33 = load %struct.dma_channel*, %struct.dma_channel** %5, align 8
  %34 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load %struct.dma_channel*, %struct.dma_channel** %5, align 8
  store %struct.dma_channel* %39, %struct.dma_channel** %2, align 8
  br label %45

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %20

44:                                               ; preds = %20
  store %struct.dma_channel* null, %struct.dma_channel** %2, align 8
  br label %45

45:                                               ; preds = %44, %38, %15
  %46 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  ret %struct.dma_channel* %46
}

declare dso_local %struct.dma_info* @get_dma_info(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dma_channel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
