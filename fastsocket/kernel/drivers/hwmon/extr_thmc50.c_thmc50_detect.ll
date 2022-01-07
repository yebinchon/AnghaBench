; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"thmc50: detect failed, smbus byte data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"thmc50: Probing for THMC50 at 0x%2X on bus %d\0A\00", align 1
@THMC50_REG_COMPANY_ID = common dso_local global i32 0, align 4
@THMC50_REG_DIE_CODE = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@thmc50 = common dso_local global i32 0, align 4
@adm1022 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"thmc50: Detection of THMC50/ADM1022 failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"adm1022\00", align 1
@adm1022_temp3_num = common dso_local global i32 0, align 4
@adm1022_temp3 = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"thmc50\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"thmc50: Detected %s (version %x, revision %x)\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @thmc50_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thmc50_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %143

27:                                               ; preds = %3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %32, align 8
  %34 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %33)
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @THMC50_REG_COMPANY_ID, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* @THMC50_REG_DIE_CODE, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load i32, i32* @THMC50_REG_CONF, align 4
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load i32, i32* @thmc50, align 4
  store i32 %48, i32* %6, align 4
  br label %75

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp uge i32 %55, 192
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 73
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @thmc50, align 4
  store i32 %65, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 65
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @adm1022, align 4
  store i32 %70, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %64
  br label %73

73:                                               ; preds = %72, %57, %52
  br label %74

74:                                               ; preds = %73, %49
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %143

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @adm1022, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %128

87:                                               ; preds = %83
  %88 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 1
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %89, align 8
  %91 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %90)
  store i32 %91, i32* %14, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %124, %87
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32, i32* @adm1022_temp3_num, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %92
  %98 = load i32*, i32** @adm1022_temp3, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %97
  %106 = load i32*, i32** @adm1022_temp3, align 8
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, 128
  store i32 %118, i32* %10, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %120 = load i32, i32* @THMC50_REG_CONF, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %119, i32 %120, i32 %121)
  br label %127

123:                                              ; preds = %105, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %15, align 4
  br label %92

127:                                              ; preds = %116, %92
  br label %129

128:                                              ; preds = %83
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* %9, align 4
  %132 = lshr i32 %131, 4
  %133 = sub i32 %132, 12
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 15
  %136 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %130, i32 %133, i32 %135)
  %137 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %138 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* @I2C_NAME_SIZE, align 4
  %142 = call i32 @strlcpy(i32 %139, i8* %140, i32 %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %129, %80, %23
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
