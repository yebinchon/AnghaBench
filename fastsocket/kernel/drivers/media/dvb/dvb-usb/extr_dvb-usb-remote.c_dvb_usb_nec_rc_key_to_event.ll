; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_nec_rc_key_to_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_nec_rc_key_to_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i64 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"remote control checksum failed.\0A\00", align 1
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"key mapping failed - no appropriate key found in keymapping\0A\00", align 1
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unknown type of remote status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_usb_rc_key*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %14, align 8
  store %struct.dvb_usb_rc_key* %15, %struct.dvb_usb_rc_key** %11, align 8
  %16 = load i64*, i64** %8, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %90 [
    i32 130, label %22
    i32 129, label %23
    i32 128, label %87
  ]

22:                                               ; preds = %4
  br label %95

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %23
  %42 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %95

43:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %44
  %52 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %52, i64 %54
  %56 = call i32 @rc5_custom(%struct.dvb_usb_rc_key* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %51
  %62 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %62, i64 %64
  %66 = call i32 @rc5_data(%struct.dvb_usb_rc_key* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %72, i64 %74
  %76 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %5, align 4
  br label %96

81:                                               ; preds = %61, %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %44

85:                                               ; preds = %44
  %86 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %95

87:                                               ; preds = %4
  %88 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %95

90:                                               ; preds = %4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %87, %85, %41, %22
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @deb_err(i8*, ...) #1

declare dso_local i32 @rc5_custom(%struct.dvb_usb_rc_key*) #1

declare dso_local i32 @rc5_data(%struct.dvb_usb_rc_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
