; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_getkeycode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i32, i32 }

@KEY_RESERVED = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32*)* @legacy_dvb_usb_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_getkeycode(%struct.input_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.dvb_usb_rc_key*, align 8
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
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

17:                                               ; preds = %42, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %25, i64 %27
  %29 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %34, i64 %36
  %38 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %81

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %17

45:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %75, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %46
  %54 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %54, i64 %56
  %58 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @KEY_RESERVED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %63, i64 %65
  %67 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @KEY_UNKNOWN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62, %53
  %72 = load i32, i32* @KEY_RESERVED, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %81

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %46

78:                                               ; preds = %46
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %71, %33
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
