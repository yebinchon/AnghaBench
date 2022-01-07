; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.gspca_dev* }
%struct.gspca_dev = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[%s] open\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEBUG_IOCTL_ARG = common dso_local global i32 0, align 4
@gspca_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.gspca_dev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load i32, i32* @D_STREAM, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PDEBUG(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call i64 @video_devdata(%struct.file* %10)
  %12 = inttoptr i64 %11 to %struct.gspca_dev*
  store %struct.gspca_dev* %12, %struct.gspca_dev** %4, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @try_module_get(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.gspca_dev* %30, %struct.gspca_dev** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %26, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i64 @video_devdata(%struct.file*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
