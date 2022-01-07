; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_storevcore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_storevcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atxp1_data = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"VID calculation failed.\0A\00", align 1
@ATXP1_VIDENA = common dso_local global i32 0, align 4
@ATXP1_VIDMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Setting VCore to %d mV (0x%02x)\0A\00", align 1
@ATXP1_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @atxp1_storevcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atxp1_storevcore(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.atxp1_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.atxp1_data* @atxp1_update_device(%struct.device* %17)
  store %struct.atxp1_data* %18, %struct.atxp1_data** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i32* null, i32 10)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = udiv i32 %21, 25
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = mul i32 %23, 25
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %27 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vid_to_reg(i32 %25, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %107

35:                                               ; preds = %4
  %36 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %37 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ATXP1_VIDENA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %45 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATXP1_VIDMASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  br label %55

50:                                               ; preds = %35
  %51 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %52 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %107

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %77 = load i32, i32* @ATXP1_VID, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @ATXP1_VIDENA, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  br label %71

85:                                               ; preds = %71
  br label %102

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %93 = load i32, i32* @ATXP1_VID, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @ATXP1_VIDENA, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %87

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %85
  %103 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %104 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %59, %32
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.atxp1_data* @atxp1_update_device(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @vid_to_reg(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
