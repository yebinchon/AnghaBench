; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-firmware.c_cx25840_loadfw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-firmware.c_cx25840_loadfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.firmware = type { i32, i32* }

@FWSEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c" Firmware download size changed to 16 bytes max length\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to open firmware %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_loadfw(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @i2c_get_clientdata(%struct.i2c_client* %17)
  %19 = call %struct.cx25840_state* @to_state(i32 %18)
  store %struct.cx25840_state* %19, %struct.cx25840_state** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %20 = load i32, i32* @FWSEND, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i8* @get_fw_name(%struct.i2c_client* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* @FWSEND, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %28 = call i64 @is_cx2388x(%struct.cx25840_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @cx25840_read(%struct.i2c_client* %31, i32 352)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @cx25840_read(%struct.i2c_client* %33, i32 356)
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %37 = call i64 @is_cx231xx(%struct.cx25840_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 16
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 16, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %39, %35
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = call i32 @FWDEV(%struct.i2c_client* %47)
  %49 = call i64 @request_firmware(%struct.firmware** %5, i8* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %120

57:                                               ; preds = %45
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = call i32 @start_fw_load(%struct.i2c_client* %58)
  %60 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 8, i32* %60, align 16
  %61 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 2, i32* %61, align 4
  %62 = load %struct.firmware*, %struct.firmware** %5, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %10, align 4
  %65 = load %struct.firmware*, %struct.firmware** %5, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %8, align 8
  br label %68

68:                                               ; preds = %90, %57
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %72, 2
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @min(i32 %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = getelementptr inbounds i32, i32* %23, i64 2
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 2
  %83 = call i32 @fw_write(%struct.i2c_client* %80, i32* %23, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load %struct.firmware*, %struct.firmware** %5, align 8
  %88 = call i32 @release_firmware(%struct.firmware* %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %120

90:                                               ; preds = %71
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %8, align 8
  br label %68

98:                                               ; preds = %68
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = call i32 @end_fw_load(%struct.i2c_client* %99)
  %101 = load %struct.firmware*, %struct.firmware** %5, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.firmware*, %struct.firmware** %5, align 8
  %105 = call i32 @release_firmware(%struct.firmware* %104)
  %106 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %107 = call i64 @is_cx2388x(%struct.cx25840_state* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %98
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @cx25840_write(%struct.i2c_client* %110, i32 352, i32 %111)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @cx25840_write(%struct.i2c_client* %113, i32 356, i32 %114)
  br label %116

116:                                              ; preds = %109, %98
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @check_fw_load(%struct.i2c_client* %117, i32 %118)
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %120

120:                                              ; preds = %116, %86, %51
  %121 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @get_fw_name(%struct.i2c_client*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, ...) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @FWDEV(%struct.i2c_client*) #1

declare dso_local i32 @start_fw_load(%struct.i2c_client*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fw_write(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @end_fw_load(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @check_fw_load(%struct.i2c_client*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
