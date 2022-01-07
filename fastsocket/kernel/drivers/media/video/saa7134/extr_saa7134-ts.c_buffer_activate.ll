; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-ts.c_buffer_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-ts.c_buffer_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.saa7134_buf = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"buffer_activate [%p]\00", align 1
@VIDEOBUF_ACTIVE = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"- [top]     buf=%p next=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"- [bottom]  buf=%p next=%p\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TS_BUFFER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_buf*, %struct.saa7134_buf*)* @buffer_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_activate(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, %struct.saa7134_buf* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca %struct.saa7134_buf*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %2, %struct.saa7134_buf** %6, align 8
  %7 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %8 = call i32 (i8*, %struct.saa7134_buf*, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.saa7134_buf* %7)
  %9 = load i32, i32* @VIDEOBUF_ACTIVE, align 4
  %10 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %11 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %14 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %16 = icmp eq %struct.saa7134_buf* null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  store %struct.saa7134_buf* %18, %struct.saa7134_buf** %6, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %21 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %22 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %28 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %29 = call i32 (i8*, %struct.saa7134_buf*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.saa7134_buf* %27, %struct.saa7134_buf* %28)
  %30 = call i32 @SAA7134_RS_BA1(i32 5)
  %31 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %32 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %31)
  %33 = call i32 @saa_writel(i32 %30, i32 %32)
  %34 = call i32 @SAA7134_RS_BA2(i32 5)
  %35 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %36 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %35)
  %37 = call i32 @saa_writel(i32 %34, i32 %36)
  br label %50

38:                                               ; preds = %19
  %39 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %40 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %41 = call i32 (i8*, %struct.saa7134_buf*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.saa7134_buf* %39, %struct.saa7134_buf* %40)
  %42 = call i32 @SAA7134_RS_BA1(i32 5)
  %43 = load %struct.saa7134_buf*, %struct.saa7134_buf** %6, align 8
  %44 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %43)
  %45 = call i32 @saa_writel(i32 %42, i32 %44)
  %46 = call i32 @SAA7134_RS_BA2(i32 5)
  %47 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %48 = call i32 @saa7134_buffer_base(%struct.saa7134_buf* %47)
  %49 = call i32 @saa_writel(i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %38, %26
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %52 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %51)
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* @TS_BUFFER_TIMEOUT, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @mod_timer(i32* %55, i64 %58)
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %61 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %50
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %66 = call i32 @saa7134_ts_start(%struct.saa7134_dev* %65)
  br label %67

67:                                               ; preds = %64, %50
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, %struct.saa7134_buf*, ...) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @saa7134_buffer_base(%struct.saa7134_buf*) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @saa7134_ts_start(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
