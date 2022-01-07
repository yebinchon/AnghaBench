; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_sysfs_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_sysfs_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"The new_device interface is still experimental and may change in a near future\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Missing parameters\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"new_device\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Invalid device name\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%hi%c\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: Can't parse I2C address\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: Extra parameters\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: Invalid I2C address 0x%hx\0A\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@core_lock = common dso_local global i32 0, align 4
@userspace_devices = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: Instantiated device %s at 0x%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @i2c_sysfs_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2c_sysfs_new_device(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.i2c_board_info, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %16)
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @memset(%struct.i2c_board_info* %11, i32 0, i32 8)
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %115

30:                                               ; preds = %4
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i32, i32* @I2C_NAME_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %115

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i32 %47, i8* %48, i32 %54)
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  %58 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %59 = call i32 @sscanf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %58, i8* %14)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %115

67:                                               ; preds = %45
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i8, i8* %14, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 10
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub i64 0, %77
  store i64 %78, i64* %5, align 8
  br label %115

79:                                               ; preds = %70, %67
  %80 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 119
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %79
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i64, i64* @EINVAL, align 8
  %93 = sub i64 0, %92
  store i64 %93, i64* %5, align 8
  br label %115

94:                                               ; preds = %83
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %96 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %95, %struct.i2c_board_info* %11)
  store %struct.i2c_client* %96, %struct.i2c_client** %12, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %98 = icmp ne %struct.i2c_client* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* @EEXIST, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %5, align 8
  br label %115

102:                                              ; preds = %94
  %103 = call i32 @mutex_lock(i32* @core_lock)
  %104 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %105, i32* @userspace_devices)
  %107 = call i32 @mutex_unlock(i32* @core_lock)
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %112)
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %102, %99, %87, %74, %62, %40, %25
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
