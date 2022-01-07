; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_change_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_4__, %struct.dib0700_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dib0700_state = type { i32 }

@REQUEST_SET_RC = common dso_local global i32 0, align 4
@RC_TYPE_RC5 = common dso_local global i64 0, align 8
@RC_TYPE_NEC = common dso_local global i64 0, align 8
@RC_TYPE_RC6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ir protocol setup failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_change_protocol(%struct.rc_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.dib0700_state*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 0
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %12, align 8
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %6, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.dib0700_state*, %struct.dib0700_state** %15, align 8
  store %struct.dib0700_state* %16, %struct.dib0700_state** %7, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* @REQUEST_SET_RC, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @RC_TYPE_RC5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @RC_TYPE_NEC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @RC_TYPE_RC6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.dib0700_state*, %struct.dib0700_state** %7, align 8
  %36 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 66048
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34
  store i32 2, i32* %9, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %53 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %51, i32* %52, i32 12)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = call i32 @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %48
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %60, i64* %64, align 8
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %56, %43, %39
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
