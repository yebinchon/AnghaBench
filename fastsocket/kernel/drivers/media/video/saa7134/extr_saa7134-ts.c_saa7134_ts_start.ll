; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-ts.c_saa7134_ts_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-ts.c_saa7134_ts_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.saa7134_dev = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"TS start\0A\00", align 1
@SAA7134_TS_DMA0 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA1 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA2 = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@SAA7134_TS_SERIAL1 = common dso_local global i32 0, align 4
@saa7134_boards = common dso_local global %struct.TYPE_6__* null, align 8
@SAA7134_TS_SERIAL0 = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL_SERIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_ts_start(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %5 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* @SAA7134_TS_DMA0, align 4
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %13, 255
  %15 = call i32 @saa_writeb(i32 %8, i32 %14)
  %16 = load i32, i32* @SAA7134_TS_DMA1, align 4
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %18 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = call i32 @saa_writeb(i32 %16, i32 %23)
  %25 = load i32, i32* @SAA7134_TS_DMA2, align 4
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 63
  %33 = call i32 @saa_writeb(i32 %25, i32 %32)
  %34 = call i32 @SAA7134_RS_PITCH(i32 5)
  %35 = load i32, i32* @TS_PACKET_SIZE, align 4
  %36 = call i32 @saa_writel(i32 %34, i32 %35)
  %37 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %38 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %39 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 12
  %47 = or i32 %40, %46
  %48 = call i32 @saa_writel(i32 %37, i32 %47)
  %49 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %50 = call i32 @saa_writeb(i32 %49, i32 0)
  %51 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %52 = call i32 @saa_writeb(i32 %51, i32 3)
  %53 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %54 = call i32 @saa_writeb(i32 %53, i32 0)
  %55 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %56 = call i32 @saa_writeb(i32 %55, i32 1)
  %57 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %58 = call i32 @saa_writeb(i32 %57, i32 0)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @saa7134_boards, align 8
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %61 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %98 [
    i32 129, label %66
    i32 128, label %80
  ]

66:                                               ; preds = %1
  %67 = load i32, i32* @SAA7134_TS_SERIAL0, align 4
  %68 = call i32 @saa_writeb(i32 %67, i32 64)
  %69 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @saa7134_boards, align 8
  %71 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %72 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 4
  %78 = or i32 236, %77
  %79 = call i32 @saa_writeb(i32 %69, i32 %78)
  br label %98

80:                                               ; preds = %1
  %81 = load i32, i32* @SAA7134_TS_SERIAL0, align 4
  %82 = call i32 @saa_writeb(i32 %81, i32 216)
  %83 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @saa7134_boards, align 8
  %85 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %86 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 4
  %92 = or i32 108, %91
  %93 = call i32 @saa_writeb(i32 %83, i32 %92)
  %94 = load i32, i32* @SAA7134_TS_PARALLEL_SERIAL, align 4
  %95 = call i32 @saa_writeb(i32 %94, i32 188)
  %96 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %97 = call i32 @saa_writeb(i32 %96, i32 2)
  br label %98

98:                                               ; preds = %1, %80, %66
  %99 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %100 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
