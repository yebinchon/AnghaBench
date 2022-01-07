; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_set_remote_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_set_remote_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dvb_usb_device_properties = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@dvb_usb_af9015_remote = common dso_local global i32 0, align 4
@af9015_rc_setup_modparam = common dso_local global i32 0, align 4
@af9015_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@af9015_rc_setup_hashes = common dso_local global i32 0, align 4
@af9015_rc_setup_usbids = common dso_local global i32 0, align 4
@USB_VID_AFATECH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3 = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.dvb_usb_device_properties*)* @af9015_set_remote_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @af9015_set_remote_config(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.dvb_usb_device_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %4, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @dvb_usb_af9015_remote, align 4
  %19 = load i32, i32* @af9015_rc_setup_modparam, align 4
  %20 = call i8* @af9015_rc_setup_match(i32 %18, i32 %19)
  %21 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @af9015_config, i32 0, i32 0), align 4
  %31 = load i32, i32* @af9015_rc_setup_hashes, align 4
  %32 = call i8* @af9015_rc_setup_match(i32 %30, i32 %31)
  %33 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @af9015_rc_setup_usbids, align 4
  %48 = call i8* @af9015_rc_setup_match(i32 %46, i32 %47)
  %49 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %42, %36
  %53 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %83, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @USB_VID_AFATECH, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %64 = call i32 @memset(i8* %63, i32 0, i32 10)
  %65 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %71 = call i32 @usb_string(%struct.usb_device* %65, i32 %69, i8* %70, i32 10)
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @AF9015_REMOTE_MSI_DIGIVOX_MINI_II_V3, align 4
  %77 = load i32, i32* @af9015_rc_setup_modparam, align 4
  %78 = call i8* @af9015_rc_setup_match(i32 %76, i32 %77)
  %79 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %62
  br label %83

83:                                               ; preds = %82, %58, %52
  %84 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** @RC_MAP_EMPTY, align 8
  %91 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %4, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %83
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @af9015_rc_setup_match(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
