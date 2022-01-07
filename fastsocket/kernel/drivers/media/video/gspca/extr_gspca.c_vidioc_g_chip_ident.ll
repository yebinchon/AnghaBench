; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32 }
%struct.gspca_dev = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)* }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dbg_chip_ident*)* @vidioc_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_chip_ident(%struct.file* %0, i8* %1, %struct.v4l2_dbg_chip_ident* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gspca_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dbg_chip_ident* %2, %struct.v4l2_dbg_chip_ident** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %9, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)*, i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)** %15, align 8
  %17 = icmp ne i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 0
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ERESTARTSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)*, i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)** %40, align 8
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %43 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %7, align 8
  %44 = call i32 %41(%struct.gspca_dev* %42, %struct.v4l2_dbg_chip_ident* %43)
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %29
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %26, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
