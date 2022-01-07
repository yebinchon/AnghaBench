; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rc query failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"rc query bad header.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rc query bad sequence.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rc query invalid length\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rc data (%d) \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"rc_decode failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"rc_decode state %x event %x\0A\00", align 1
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @af9005_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.af9005_device_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca [256 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  store %struct.af9005_device_state* %15, %struct.af9005_device_state** %8, align 8
  %16 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 3, i32* %18, align 16
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 64, i32* %20, align 8
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 1, i32* %21, align 4
  %22 = load %struct.af9005_device_state*, %struct.af9005_device_state** %8, align 8
  %23 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %24, i32* %26, align 16
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %30 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %27, i32* %28, i32 5, i32* %29, i32 256, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %3
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 65
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %102

44:                                               ; preds = %36
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 4
  %46 = load i32, i32* %45, align 16
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %48 = load i32, i32* %47, align 16
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %44
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 246
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %102

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @debug_dump(i32* %70, i32 %71, i32 (i8*, i32, i32)* bitcast (i32 (i8*, i32, ...)* @deb_rc to i32 (i8*, i32, i32)*))
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 6
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @rc_decode(%struct.dvb_usb_device* %73, i32* %74, i32 %75, i32* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %66
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %84
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %63
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %81, %59, %50, %40, %33
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_rc(i8*, i32, ...) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32)*) #1

declare dso_local i32 @rc_decode(%struct.dvb_usb_device*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
