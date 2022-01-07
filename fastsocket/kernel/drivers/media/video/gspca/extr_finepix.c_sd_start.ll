; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_finepix.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_finepix.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_fpix = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"init failed %d\00", align 1
@FPIX_MAX_TRANSFER = common dso_local global i32 0, align 4
@FPIX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"usb_bulk_msg failed %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"frame request failed %d\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_fpix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.usb_fpix*
  store %struct.usb_fpix* %8, %struct.usb_fpix** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @command(%struct.gspca_dev* %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FPIX_MAX_TRANSFER, align 4
  %36 = load i32, i32* @FPIX_TIMEOUT, align 4
  %37 = call i32 @usb_bulk_msg(i32 %20, i32 %27, i32 %34, i32 %35, i32* %6, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %17
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = call i32 @command(%struct.gspca_dev* %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %75

53:                                               ; preds = %44
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_clear_halt(i32 %56, i32 %63)
  %65 = load i32, i32* @MODULE_NAME, align 4
  %66 = call i32 @create_singlethread_workqueue(i32 %65)
  %67 = load %struct.usb_fpix*, %struct.usb_fpix** %4, align 8
  %68 = getelementptr inbounds %struct.usb_fpix, %struct.usb_fpix* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.usb_fpix*, %struct.usb_fpix** %4, align 8
  %70 = getelementptr inbounds %struct.usb_fpix, %struct.usb_fpix* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_fpix*, %struct.usb_fpix** %4, align 8
  %73 = getelementptr inbounds %struct.usb_fpix, %struct.usb_fpix* %72, i32 0, i32 0
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %53, %49, %40, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @command(%struct.gspca_dev*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
