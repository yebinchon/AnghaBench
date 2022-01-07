; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_start_12a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_start_12a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.usb_device*, i64, %struct.TYPE_4__ }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@sd_start_12a.Reg8391 = internal constant [8 x i32] [i32 146, i32 48, i32 32, i32 0, i32 12, i32 0, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start_12a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_12a(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 1
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = or i32 16, %24
  %26 = call i32 @reg_w_val(%struct.usb_device* %23, i32 34048, i32 %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @reg_w_val(%struct.usb_device* %28, i32 34048, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 170, i32* %35, align 4
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w_buf(%struct.gspca_dev* %40, i32 33543, i32 2)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 1
  %44 = load %struct.usb_device*, %struct.usb_device** %43, align 8
  %45 = call i32 @reg_w_val(%struct.usb_device* %44, i32 34560, i32 138)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 1
  %48 = load %struct.usb_device*, %struct.usb_device** %47, align 8
  %49 = call i32 @reg_w_val(%struct.usb_device* %48, i32 33042, i32 62)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 1
  %52 = load %struct.usb_device*, %struct.usb_device** %51, align 8
  %53 = call i32 @reg_w_val(%struct.usb_device* %52, i32 34059, i32 3)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @memcpy(i32* %56, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_start_12a.Reg8391, i64 0, i64 0), i32 8)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @reg_w_buf(%struct.gspca_dev* %58, i32 33681, i32 8)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @reg_w_buf(%struct.gspca_dev* %60, i32 33680, i32 8)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @setwhite(%struct.gspca_dev* %62)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @setgain(%struct.gspca_dev* %64)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @setexposure(%struct.gspca_dev* %66)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %68, i32 0, i32 1
  %70 = load %struct.usb_device*, %struct.usb_device** %69, align 8
  %71 = call i32 @reg_w_val(%struct.usb_device* %70, i32 33044, i32 0)
  ret i32 0
}

declare dso_local i32 @reg_w_val(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @setwhite(%struct.gspca_dev*) #1

declare dso_local i32 @setgain(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
