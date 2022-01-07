; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"send command, wlen less than 0 bytes. Makes no sense.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"send command, wlen more than 54 bytes. Not supported.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"send command, rlen more than 54 bytes. Not supported.\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"send command, wrong reply code.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"send command, wrong sequence in reply.\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"send command, wrong status code in reply.\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"send command, invalid data length in reply.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_send_command(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.af9005_device_state*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i32], align 16
  %19 = alloca [64 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.af9005_device_state*, %struct.af9005_device_state** %21, align 8
  store %struct.af9005_device_state* %22, %struct.af9005_device_state** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %150

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 54
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %150

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 54
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %150

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 5
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  store i32 %47, i32* %48, align 16
  %49 = load i32, i32* %17, align 4
  %50 = and i32 %49, 65280
  %51 = ashr i32 %50, 8
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 2
  store i32 38, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 3
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  %58 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 4
  store i32 %59, i32* %61, align 16
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 5
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 6
  store i32 %64, i32* %65, align 8
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %80, %43
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 7, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 7
  %88 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 7
  %91 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %84, i32* %85, i32 %87, i32* %88, i32 %90, i32 0)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %7, align 4
  br label %150

96:                                               ; preds = %83
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 39
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %150

104:                                              ; preds = %96
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 4
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 4
  %108 = load i32, i32* %107, align 16
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %150

114:                                              ; preds = %104
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %150

122:                                              ; preds = %114
  %123 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %150

131:                                              ; preds = %122
  store i32 0, i32* %16, align 4
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 7
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %132

149:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %127, %118, %110, %100, %94, %39, %32, %25
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
