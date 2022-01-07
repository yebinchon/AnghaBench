; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-dma.c_flexcop_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.flexcop_dma = type { i32, i32, i32 }

@FC_DMA_1 = common dso_local global i32 0, align 4
@dma1_000 = common dso_local global i32 0, align 4
@dma1_004 = common dso_local global i32 0, align 4
@dma1_00c = common dso_local global i32 0, align 4
@FC_DMA_2 = common dso_local global i32 0, align 4
@dma2_010 = common dso_local global i32 0, align 4
@dma2_014 = common dso_local global i32 0, align 4
@dma2_01c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"either DMA1 or DMA2 can be configured within one flexcop_dma_config call.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_dma_config(%struct.flexcop_device* %0, %struct.flexcop_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca %struct.flexcop_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store %struct.flexcop_dma* %1, %struct.flexcop_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %15 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 2
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %21 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.flexcop_dma*, %struct.flexcop_dma** %6, align 8
  %27 = getelementptr inbounds %struct.flexcop_dma, %struct.flexcop_dma* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @FC_DMA_1, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %3
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %39 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %38, i32 0, i32 0
  %40 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %39, align 8
  %41 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %42 = load i32, i32* @dma1_000, align 4
  %43 = call i32 %40(%struct.flexcop_device* %41, i32 %42, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %8)
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 0
  %46 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %45, align 8
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %48 = load i32, i32* @dma1_004, align 4
  %49 = call i32 %46(%struct.flexcop_device* %47, i32 %48, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %9)
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 0
  %52 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %51, align 8
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %54 = load i32, i32* @dma1_00c, align 4
  %55 = call i32 %52(%struct.flexcop_device* %53, i32 %54, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %10)
  br label %86

56:                                               ; preds = %3
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FC_DMA_2, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %64 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %63, i32 0, i32 0
  %65 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %64, align 8
  %66 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %67 = load i32, i32* @dma2_010, align 4
  %68 = call i32 %65(%struct.flexcop_device* %66, i32 %67, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %8)
  %69 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %70 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %69, i32 0, i32 0
  %71 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %70, align 8
  %72 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %73 = load i32, i32* @dma2_014, align 4
  %74 = call i32 %71(%struct.flexcop_device* %72, i32 %73, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %9)
  %75 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %76 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %75, i32 0, i32 0
  %77 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_14__*)** %76, align 8
  %78 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %79 = load i32, i32* @dma2_01c, align 4
  %80 = call i32 %77(%struct.flexcop_device* %78, i32 %79, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %10)
  br label %85

81:                                               ; preds = %56
  %82 = call i32 @err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %37
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
