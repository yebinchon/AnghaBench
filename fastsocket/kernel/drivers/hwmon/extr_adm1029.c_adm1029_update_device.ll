; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1029.c_adm1029_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1029.c_adm1029_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1029_data = type { i32, i32, i64, i8**, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Updating adm1029 data\0A\00", align 1
@ADM1029_REG_TEMP = common dso_local global i32* null, align 8
@ADM1029_REG_FAN = common dso_local global i32* null, align 8
@ADM1029_REG_FAN_DIV = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1029_data* (%struct.device*)* @adm1029_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1029_data* @adm1029_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adm1029_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.adm1029_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.adm1029_data* %9, %struct.adm1029_data** %4, align 8
  %10 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %11 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %15 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %25 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %106, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %51, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** @ADM1029_REG_TEMP, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load i32*, i32** @ADM1029_REG_TEMP, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %43)
  %45 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %46 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %45, i32 0, i32 5
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %32

54:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** @ADM1029_REG_FAN, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32*, i32** @ADM1029_REG_FAN, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 %66)
  %68 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %69 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %68, i32 0, i32 4
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %55

77:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %85 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %84, i32 %89)
  %91 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %92 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %91, i32 0, i32 3
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %103 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %105 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %100, %23
  %107 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  %108 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load %struct.adm1029_data*, %struct.adm1029_data** %4, align 8
  ret %struct.adm1029_data* %110
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1029_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
