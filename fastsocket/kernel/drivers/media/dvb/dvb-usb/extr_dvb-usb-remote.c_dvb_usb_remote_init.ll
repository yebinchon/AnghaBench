; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_remote_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@dvb_usb_disable_rc_polling = common dso_local global i64 0, align 8
@DVB_RC_LEGACY = common dso_local global i64 0, align 8
@DVB_RC_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"/ir0\00", align 1
@DVB_USB_STATE_REMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_remote_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %5 = load i64, i64* @dvb_usb_disable_rc_polling, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

8:                                                ; preds = %1
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i64, i64* @DVB_RC_LEGACY, align 8
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  br label %39

25:                                               ; preds = %14, %8
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64, i64* @DVB_RC_CORE, align 8
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %84

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_make_path(i32 %42, i32 %45, i32 4)
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strlcat(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 40
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 100, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %39
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DVB_RC_LEGACY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %69 = call i32 @legacy_dvb_usb_remote_init(%struct.dvb_usb_device* %68)
  store i32 %69, i32* %4, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %72 = call i32 @rc_core_dvb_usb_remote_init(%struct.dvb_usb_device* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @DVB_USB_STATE_REMOTE, align 4
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %78, %76, %37, %7
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @legacy_dvb_usb_remote_init(%struct.dvb_usb_device*) #1

declare dso_local i32 @rc_core_dvb_usb_remote_init(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
