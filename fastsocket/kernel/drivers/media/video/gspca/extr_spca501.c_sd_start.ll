; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca501.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__, %struct.usb_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.sd = type { i32 }

@spca501_3com_open_data = common dso_local global i32 0, align 4
@spca501c_arowana_open_data = common dso_local global i32 0, align 4
@spca501c_mysterious_init_data = common dso_local global i32 0, align 4
@spca501_open_data = common dso_local global i32 0, align 4
@SPCA50X_REG_USB = common dso_local global i32 0, align 4
@SPCA501_REG_CTLRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 131, label %18
    i32 129, label %18
    i32 130, label %22
  ]

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @spca501_3com_open_data, align 4
  %17 = call i32 @write_vector(%struct.gspca_dev* %15, i32 %16)
  br label %30

18:                                               ; preds = %1, %1
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @spca501c_arowana_open_data, align 4
  %21 = call i32 @write_vector(%struct.gspca_dev* %19, i32 %20)
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @spca501c_mysterious_init_data, align 4
  %25 = call i32 @write_vector(%struct.gspca_dev* %23, i32 %24)
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i32, i32* @spca501_open_data, align 4
  %29 = call i32 @write_vector(%struct.gspca_dev* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22, %18, %14
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load i32, i32* @SPCA50X_REG_USB, align 4
  %45 = call i32 @reg_write(%struct.usb_device* %43, i32 %44, i32 6, i32 148)
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %55 [
    i32 0, label %47
    i32 1, label %51
  ]

47:                                               ; preds = %30
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load i32, i32* @SPCA50X_REG_USB, align 4
  %50 = call i32 @reg_write(%struct.usb_device* %48, i32 %49, i32 7, i32 74)
  br label %59

51:                                               ; preds = %30
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = load i32, i32* @SPCA50X_REG_USB, align 4
  %54 = call i32 @reg_write(%struct.usb_device* %52, i32 %53, i32 7, i32 4170)
  br label %59

55:                                               ; preds = %30
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = load i32, i32* @SPCA50X_REG_USB, align 4
  %58 = call i32 @reg_write(%struct.usb_device* %56, i32 %57, i32 7, i32 8266)
  br label %59

59:                                               ; preds = %55, %51, %47
  %60 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %61 = load i32, i32* @SPCA501_REG_CTLRL, align 4
  %62 = call i32 @reg_write(%struct.usb_device* %60, i32 %61, i32 1, i32 2)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @setbrightness(%struct.gspca_dev* %63)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = call i32 @setcontrast(%struct.gspca_dev* %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = call i32 @setcolors(%struct.gspca_dev* %67)
  ret i32 0
}

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setcontrast(%struct.gspca_dev*) #1

declare dso_local i32 @setcolors(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
