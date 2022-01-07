; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_IDENT_SN9C20X = common dso_local global i32 0, align 4
@i2c_ident = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_dbg_chip_ident*)* @sd_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_chip_ident(%struct.gspca_dev* %0, %struct.v4l2_dbg_chip_ident* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_dbg_chip_ident* %1, %struct.v4l2_dbg_chip_ident** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %28
  ]

13:                                               ; preds = %2
  %14 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %13
  %23 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @V4L2_IDENT_SN9C20X, align 4
  %26 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sd*, %struct.sd** %6, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %28
  %41 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** @i2c_ident, align 8
  %44 = load %struct.sd*, %struct.sd** %6, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %40, %37, %22, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
