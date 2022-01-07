; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADM1026_REG_COMPANY = common dso_local global i32 0, align 4
@ADM1026_REG_VERSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Detecting device at %d,0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Autodetecting device at %d,0x%02x ...\0A\00", align 1
@ADM1026_COMPANY_ANALOG_DEV = common dso_local global i32 0, align 4
@ADM1026_VERSTEP_ADM1026 = common dso_local global i32 0, align 4
@adm1026 = common dso_local global i32 0, align 4
@ADM1026_VERSTEP_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Unrecognized stepping 0x%02x. Defaulting to ADM1026.\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Found version/stepping 0x%02x. Assuming generic ADM1026.\0A\00", align 1
@any_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Autodetection failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Generic ADM1026 not found at %d,0x%02x.  Try force_adm1026.\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"adm1026\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adm1026_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1026_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %113

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @ADM1026_REG_COMPANY, align 4
  %28 = call i32 @adm1026_read_value(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @ADM1026_REG_VERSTEP, align 4
  %31 = call i32 @adm1026_read_value(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %35, align 8
  %37 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %25
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %50 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ADM1026_COMPANY_ANALOG_DEV, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ADM1026_VERSTEP_ADM1026, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @adm1026, align 4
  store i32 %61, i32* %6, align 4
  br label %106

62:                                               ; preds = %56, %46
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @ADM1026_COMPANY_ANALOG_DEV, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 240
  %69 = load i32, i32* @ADM1026_VERSTEP_GENERIC, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %73 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @adm1026, align 4
  store i32 %76, i32* %6, align 4
  br label %105

77:                                               ; preds = %66, %62
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 240
  %80 = load i32, i32* @ADM1026_VERSTEP_GENERIC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %84 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @any_chip, align 4
  store i32 %87, i32* %6, align 4
  br label %104

88:                                               ; preds = %77
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %90 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %95, i32 0, i32 0
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %98 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %88
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %113

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %71
  br label %106

106:                                              ; preds = %105, %60
  br label %107

107:                                              ; preds = %106, %25
  %108 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %109 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @I2C_NAME_SIZE, align 4
  %112 = call i32 @strlcpy(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %107, %101, %22
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @adm1026_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
