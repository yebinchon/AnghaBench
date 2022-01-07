; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i64, %struct.cinergyt2_state* }
%struct.cinergyt2_state = type { i64 }

@CINERGYT2_EP1_GET_RC_EVENTS = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@RC_REPEAT_DELAY = common dso_local global i64 0, align 8
@repeatable_keys = common dso_local global i64* null, align 8
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"repeat key, event %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"repeated key (non repeatable)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"key: %x %x %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64*, i32*)* @cinergyt2_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_rc_query(%struct.dvb_usb_device* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cinergyt2_state*, align 8
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 1
  %14 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %13, align 8
  store %struct.cinergyt2_state* %14, %struct.cinergyt2_state** %8, align 8
  %15 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 20, i1 false)
  %16 = load i32, i32* @CINERGYT2_EP1_GET_RC_EVENTS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %21 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %19, i32* %10, i32 1, i32* %20, i32 20, i32 0)
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  %23 = load i32, i32* %22, align 16
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %68

25:                                               ; preds = %3
  %26 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %8, align 8
  %27 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %8, align 8
  %31 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RC_REPEAT_DELAY, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i64*, i64** @repeatable_keys, align 8
  %39 = call i32 @ARRAY_SIZE(i64* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @repeatable_keys, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %59)
  store i32 0, i32* %4, align 4
  br label %104

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %36

65:                                               ; preds = %36
  %66 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %25
  store i32 0, i32* %4, align 4
  br label %104

68:                                               ; preds = %3
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %75 = load i64*, i64** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %73, i32* %74, i64* %75, i32* %76)
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %68
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %8, align 8
  %90 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %81
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = call i32 (i8*, ...) @deb_rc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %95, i32 %97, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %91, %68
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %67, %51
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @deb_rc(i8*, ...) #2

declare dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device*, i32*, i64*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
