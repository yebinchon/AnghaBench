; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_setkeycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i32, i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32)* @legacy_dvb_usb_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_setkeycode(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.dvb_usb_rc_key*, align 8
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %8, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %15, align 8
  store %struct.dvb_usb_rc_key* %16, %struct.dvb_usb_rc_key** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %25, i64 %27
  %29 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %35, i64 %37
  %39 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %90

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %17

44:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %84, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %45
  %53 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %53, i64 %55
  %57 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KEY_RESERVED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %62, i64 %64
  %66 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @KEY_UNKNOWN, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %61, %52
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %72, i64 %74
  %76 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %78, i64 %80
  %82 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %90

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %70, %33
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
