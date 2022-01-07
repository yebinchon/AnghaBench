; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme_firmware_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme_firmware_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@__const.lme_firmware_switch.lme2510c_s7395 = private unnamed_addr constant [26 x i8] c"dvb-usb-lme2510c-s7395.fw\00", align 16
@__const.lme_firmware_switch.lme2510c_lg = private unnamed_addr constant [23 x i8] c"dvb-usb-lme2510c-lg.fw\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"Loading\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Switching to\00", align 1
@__const.lme_firmware_switch.firm_msg = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)], align 16
@dvb_usb_lme2510_firmware = common dso_local global i32 0, align 4
@lme_firmware = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"FRM %s S7395 Firmware\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"FRM %s LG Firmware\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FRM No Firmware Found - please install\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @lme_firmware_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme_firmware_switch(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca [26 x i8], align 16
  %8 = alloca [23 x i8], align 16
  %9 = alloca [2 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.firmware* null, %struct.firmware** %6, align 8
  %11 = bitcast [26 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.lme_firmware_switch.lme2510c_s7395, i32 0, i32 0), i64 26, i1 false)
  %12 = bitcast [23 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.lme_firmware_switch.lme2510c_lg, i32 0, i32 0), i64 23, i1 false)
  %13 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([2 x i8*]* @__const.lme_firmware_switch.firm_msg to i8*), i64 16, i1 false)
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %5, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4386
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %81

28:                                               ; preds = %20
  %29 = load i32, i32* @dvb_usb_lme2510_firmware, align 4
  switch i32 %29, label %31 [
    i32 0, label %30
    i32 1, label %52
  ]

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %28, %30
  %32 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %33 = call i32 @memcpy(i32* @lme_firmware, i8* %32, i32 26)
  %34 = load i32, i32* @lme_firmware, align 4
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = call i32 @request_firmware(%struct.firmware** %6, i32 %34, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %69

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* @dvb_usb_lme2510_firmware, align 4
  br label %51

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %28, %51
  %53 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %54 = call i32 @memcpy(i32* @lme_firmware, i8* %53, i32 23)
  %55 = load i32, i32* @lme_firmware, align 4
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 0
  %58 = call i32 @request_firmware(%struct.firmware** %6, i32 %55, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %69

67:                                               ; preds = %52
  %68 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* @dvb_usb_lme2510_firmware, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %61, %40
  %70 = load %struct.firmware*, %struct.firmware** %6, align 8
  %71 = call i32 @release_firmware(%struct.firmware* %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %76 = call i32 @lme_coldreset(%struct.usb_device* %75)
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %74, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #2

declare dso_local i32 @info(i8*, ...) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @lme_coldreset(%struct.usb_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
