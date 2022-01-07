; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_initDma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_initDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@dmaChannelCount_0 = common dso_local global i32 0, align 4
@dmaChannelCount_1 = common dso_local global i32 0, align 4
@chipcHw_REG_BUS_CLOCK_DMAC0 = common dso_local global i32 0, align 4
@chipcHw_REG_BUS_CLOCK_DMAC1 = common dso_local global i32 0, align 4
@dmacHw_MAX_CHANNEL_COUNT = common dso_local global i32 0, align 4
@dmacHw_gCblk = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmacHw_initDma() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @dmacHw_GET_NUM_CHANNEL(i32 0)
  store i32 %2, i32* @dmaChannelCount_0, align 4
  %3 = call i32 @dmacHw_GET_NUM_CHANNEL(i32 1)
  store i32 %3, i32* @dmaChannelCount_1, align 4
  %4 = load i32, i32* @chipcHw_REG_BUS_CLOCK_DMAC0, align 4
  %5 = call i32 @chipcHw_busInterfaceClockEnable(i32 %4)
  %6 = load i32, i32* @chipcHw_REG_BUS_CLOCK_DMAC1, align 4
  %7 = call i32 @chipcHw_busInterfaceClockEnable(i32 %6)
  %8 = load i32, i32* @dmaChannelCount_0, align 4
  %9 = load i32, i32* @dmaChannelCount_1, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @dmacHw_MAX_CHANNEL_COUNT, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @dmacHw_ASSERT(i32 0)
  br label %15

15:                                               ; preds = %13, %0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmacHw_gCblk, align 8
  %17 = bitcast %struct.TYPE_2__* %16 to i8*
  %18 = load i32, i32* @dmaChannelCount_0, align 4
  %19 = load i32, i32* @dmaChannelCount_1, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i8* %17, i32 0, i32 %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %41, %15
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @dmaChannelCount_0, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmacHw_gCblk, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmacHw_gCblk, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @dmaChannelCount_1, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmacHw_gCblk, align 8
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @dmaChannelCount_0, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmacHw_gCblk, align 8
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @dmaChannelCount_0, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %45

68:                                               ; preds = %45
  ret void
}

declare dso_local i32 @dmacHw_GET_NUM_CHANNEL(i32) #1

declare dso_local i32 @chipcHw_busInterfaceClockEnable(i32) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
