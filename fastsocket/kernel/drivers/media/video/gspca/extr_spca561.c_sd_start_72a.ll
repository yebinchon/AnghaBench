; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_start_72a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_start_72a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@rev72a_reset = common dso_local global i32 0, align 4
@rev72a_init_data1 = common dso_local global i32 0, align 4
@rev72a_init_sensor1 = common dso_local global i32 0, align 4
@rev72a_init_sensor2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start_72a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_72a(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 2
  %8 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  store %struct.usb_device* %8, %struct.usb_device** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @rev72a_reset, align 4
  %11 = call i32 @write_vector(%struct.gspca_dev* %9, i32 %10)
  %12 = call i32 @msleep(i32 200)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32, i32* @rev72a_init_data1, align 4
  %15 = call i32 @write_vector(%struct.gspca_dev* %13, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i32, i32* @rev72a_init_sensor1, align 4
  %18 = call i32 @write_sensor_72a(%struct.gspca_dev* %16, i32 %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %32 [
    i32 0, label %33
    i32 1, label %34
    i32 2, label %35
    i32 3, label %36
  ]

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %1, %32
  store i32 39, i32* %4, align 4
  br label %37

34:                                               ; preds = %1
  store i32 37, i32* %4, align 4
  br label %37

35:                                               ; preds = %1
  store i32 34, i32* %4, align 4
  br label %37

36:                                               ; preds = %1
  store i32 33, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35, %34, %33
  %38 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @reg_w_val(%struct.usb_device* %38, i32 34560, i32 %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = call i32 @reg_w_val(%struct.usb_device* %41, i32 34562, i32 129)
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @reg_w_val(%struct.usb_device* %43, i32 34048, i32 %44)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load i32, i32* @rev72a_init_sensor2, align 4
  %48 = call i32 @write_sensor_72a(%struct.gspca_dev* %46, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @setcontrast(%struct.gspca_dev* %49)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @setautogain(%struct.gspca_dev* %51)
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = call i32 @reg_w_val(%struct.usb_device* %53, i32 33042, i32 48)
  ret i32 0
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @write_sensor_72a(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w_val(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setautogain(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
