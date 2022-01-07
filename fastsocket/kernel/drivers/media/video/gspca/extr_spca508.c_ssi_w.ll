; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_ssi_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_ssi_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ssi_w busy %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @ssi_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_w(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 1
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %7, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = call i32 @reg_write(%struct.usb_device* %13, i32 34818, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @reg_write(%struct.usb_device* %21, i32 34817, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %80

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 65280
  %31 = icmp eq i32 %30, 4096
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = call i32 @reg_write(%struct.usb_device* %33, i32 34821, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %80

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %28
  %44 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @reg_write(%struct.usb_device* %44, i32 34816, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %80

50:                                               ; preds = %43
  store i32 10, i32* %9, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = call i32 @reg_read(%struct.gspca_dev* %52, i32 34819)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %79

57:                                               ; preds = %51
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %79

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* @D_ERR, align 4
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @PDEBUG(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %75)
  store i32 -1, i32* %8, align 4
  br label %79

77:                                               ; preds = %65
  %78 = call i32 @msleep(i32 8)
  br label %51

79:                                               ; preds = %69, %64, %56
  br label %80

80:                                               ; preds = %79, %49, %39, %27, %19
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @reg_write(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
