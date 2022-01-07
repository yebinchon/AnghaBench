; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_int_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_int_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.rc_dev*, i32, i32 }
%struct.rc_dev = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"STA Configuring Remote\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/ir0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"LME2510 Remote Control\00", align 1
@RC_MAP_LME2510 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"LME 2510\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"INT Unable to start Interupt Service\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @lme2510_int_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_int_service(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 0
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %4, align 8
  %10 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %11, %struct.rc_dev** %5, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %13 = icmp ne %struct.rc_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_make_path(i32 %20, i32 %23, i32 4)
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlcat(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %29 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %35 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @RC_MAP_LME2510, align 4
  %37 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 2
  %46 = call i32 @usb_to_input_id(i32 %43, i32* %45)
  %47 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %48 = call i32 @rc_register_device(%struct.rc_dev* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %17
  %52 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %53 = call i32 @rc_free_device(%struct.rc_dev* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %70

55:                                               ; preds = %17
  %56 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 0
  store %struct.rc_dev* %56, %struct.rc_dev** %58, align 8
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %60 = call i32 @lme2510_int_read(%struct.dvb_usb_adapter* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %65 = call i32 @rc_unregister_device(%struct.rc_dev* %64)
  %66 = call i32 @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %63, %51, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @info(i8*) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(i32, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @lme2510_int_read(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @rc_unregister_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
