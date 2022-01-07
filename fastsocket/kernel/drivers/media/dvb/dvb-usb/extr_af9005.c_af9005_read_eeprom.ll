; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Read eeprom, invalid reply code\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Read eeprom, invalid reply length\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Read eeprom, wrong sequence in reply \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Read eeprom, wrong status in reply \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_read_eeprom(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.af9005_device_state*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca [14 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = load %struct.af9005_device_state*, %struct.af9005_device_state** %16, align 8
  store %struct.af9005_device_state* %17, %struct.af9005_device_state** %10, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 64)
  %20 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 56)
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  store i32 14, i32* %22, align 16
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 2
  store i32 42, i32* %24, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 3
  store i32 12, i32* %25, align 4
  %26 = load %struct.af9005_device_state*, %struct.af9005_device_state** %10, align 8
  %27 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  store i32 %28, i32* %30, align 16
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 5
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 6
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 7
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %38 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %39 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %36, i32* %37, i32 16, i32* %38, i32 14, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %97

44:                                               ; preds = %4
  %45 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 43
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %44
  %53 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %97

60:                                               ; preds = %52
  %61 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 4
  %62 = load i32, i32* %61, align 16
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 4
  %64 = load i32, i32* %63, align 16
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %97

70:                                               ; preds = %60
  %71 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %97

78:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 6, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %79

96:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %74, %66, %56, %48, %42
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
