; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905c.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905c.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Start streaming at high resolution\00", align 1
@SQ905C_CAPTURE_HI = common dso_local global i32 0, align 4
@SQ905C_CAPTURE_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Start streaming at medium resolution\00", align 1
@SQ905C_CAPTURE_MED = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Start streaming command failed\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %28 [
    i32 640, label %17
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @D_STREAM, align 4
  %19 = call i32 @PDEBUG(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load i32, i32* @SQ905C_CAPTURE_HI, align 4
  %26 = load i32, i32* @SQ905C_CAPTURE_INDEX, align 4
  %27 = call i32 @sq905c_command(%struct.gspca_dev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* @D_STREAM, align 4
  %30 = call i32 @PDEBUG(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = load i32, i32* @SQ905C_CAPTURE_MED, align 4
  %33 = load i32, i32* @SQ905C_CAPTURE_INDEX, align 4
  %34 = call i32 @sq905c_command(%struct.gspca_dev* %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %17
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @D_ERR, align 4
  %40 = call i32 @PDEBUG(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load i32, i32* @MODULE_NAME, align 4
  %44 = call i32 @create_singlethread_workqueue(i32 %43)
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = call i32 @queue_work(i32 %49, i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %42, %38
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @sq905c_command(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
