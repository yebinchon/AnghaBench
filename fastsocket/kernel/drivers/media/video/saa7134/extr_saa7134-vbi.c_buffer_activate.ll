; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.saa7134_buf = type { %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"buffer_activate [%p]\0A\00", align 1
@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@TASK_A = common dso_local global i32 0, align 4
@TASK_B = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_B = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %9 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %9)
  %11 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %12 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %16 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %18 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %19 = load i32, i32* @TASK_A, align 4
  %20 = call i32 @task_init(%struct.saa7134_dev* %17, %struct.saa7134_buf* %18, i32 %19)
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %22 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %23 = load i32, i32* @TASK_B, align 4
  %24 = call i32 @task_init(%struct.saa7134_dev* %21, %struct.saa7134_buf* %22, i32 %23)
  %25 = load i32, i32* @SAA7134_OFMT_DATA_A, align 4
  %26 = call i32 @saa_writeb(i32 %25, i32 6)
  %27 = load i32, i32* @SAA7134_OFMT_DATA_B, align 4
  %28 = call i32 @saa_writeb(i32 %27, i32 6)
  %29 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %30 = call i64 @saa7134_buffer_base(%struct.saa7134_buf* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %32 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %35 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 12
  %40 = or i32 %33, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %7, align 8
  %42 = call i32 @SAA7134_RS_BA1(i32 2)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @saa_writel(i32 %42, i64 %43)
  %45 = call i32 @SAA7134_RS_BA2(i32 2)
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %48 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = add i64 %46, %52
  %54 = call i32 @saa_writel(i32 %45, i64 %53)
  %55 = call i32 @SAA7134_RS_PITCH(i32 2)
  %56 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %57 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @saa_writel(i32 %55, i64 %59)
  %61 = call i32 @SAA7134_RS_CONTROL(i32 2)
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @saa_writel(i32 %61, i64 %62)
  %64 = call i32 @SAA7134_RS_BA1(i32 3)
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @saa_writel(i32 %64, i64 %65)
  %67 = call i32 @SAA7134_RS_BA2(i32 3)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %70 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = add i64 %68, %74
  %76 = call i32 @saa_writel(i32 %67, i64 %75)
  %77 = call i32 @SAA7134_RS_PITCH(i32 3)
  %78 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %79 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @saa_writel(i32 %77, i64 %81)
  %83 = call i32 @SAA7134_RS_CONTROL(i32 3)
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @saa_writel(i32 %83, i64 %84)
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %87 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %86)
  %88 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %89 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i64, i64* @BUFFER_TIMEOUT, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @mod_timer(i32* %90, i64 %93)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, %struct.saa7134_buf*) #1

declare dso_local i32 @task_init(%struct.saa7134_dev*, %struct.saa7134_buf*, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
