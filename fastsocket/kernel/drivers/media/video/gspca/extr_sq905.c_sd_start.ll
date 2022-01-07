; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq905.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Start streaming at high resolution\00", align 1
@SQ905_CAPTURE_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Start streaming at medium resolution\00", align 1
@SQ905_CAPTURE_MED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Start streaming at low resolution\00", align 1
@SQ905_CAPTURE_LOW = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Start streaming command failed\00", align 1
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 1, label %18
    i32 0, label %25
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @D_STREAM, align 4
  %13 = call i32 @PDEBUG(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 2
  %16 = load i32, i32* @SQ905_CAPTURE_HIGH, align 4
  %17 = call i32 @sq905_command(i32* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @D_STREAM, align 4
  %20 = call i32 @PDEBUG(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 2
  %23 = load i32, i32* @SQ905_CAPTURE_MED, align 4
  %24 = call i32 @sq905_command(i32* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @D_STREAM, align 4
  %27 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.sd*, %struct.sd** %4, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 2
  %30 = load i32, i32* @SQ905_CAPTURE_LOW, align 4
  %31 = call i32 @sq905_command(i32* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %18, %11
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @D_ERR, align 4
  %37 = call i32 @PDEBUG(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %32
  %40 = load i32, i32* @MODULE_NAME, align 4
  %41 = call i32 @create_singlethread_workqueue(i32 %40)
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  %49 = call i32 @queue_work(i32 %46, i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @sq905_command(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
