; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm92.c_max6635_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm92.c_max6635_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LM92_REG_TEMP_LOW = common dso_local global i64 0, align 8
@LM92_REG_MAN_ID = common dso_local global i64 0, align 8
@LM92_REG_TEMP_HIGH = common dso_local global i64 0, align 8
@LM92_REG_TEMP_HYST = common dso_local global i64 0, align 8
@LM92_REG_TEMP_CRIT = common dso_local global i64 0, align 8
@LM92_REG_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max6635_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6635_check(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i64, i64* @LM92_REG_TEMP_LOW, align 8
  %12 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %10, i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load i64, i64* @LM92_REG_MAN_ID, align 8
  %15 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i64, i64* @LM92_REG_TEMP_HIGH, align 8
  %22 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %20, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load i64, i64* @LM92_REG_MAN_ID, align 8
  %25 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %114

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 32512
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 32512
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29
  store i32 0, i32* %2, align 4
  br label %114

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i64, i64* @LM92_REG_TEMP_HYST, align 8
  %41 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %39, i64 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load i64, i64* @LM92_REG_TEMP_CRIT, align 8
  %44 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %42, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 32512
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 32512
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %114

53:                                               ; preds = %48
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i64, i64* @LM92_REG_CONFIG, align 8
  %56 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i64 %55)
  store i64 %56, i64* %8, align 8
  store i32 16, i32* %9, align 4
  br label %57

57:                                               ; preds = %110, %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 96
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i64, i64* @LM92_REG_TEMP_HYST, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = sub nsw i64 %66, 16
  %68 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %62, i64 %67)
  %69 = icmp ne i32 %61, %68
  br i1 %69, label %108, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = load i64, i64* @LM92_REG_TEMP_CRIT, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %72, i64 %76)
  %78 = icmp ne i32 %71, %77
  br i1 %78, label %108, label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load i64, i64* @LM92_REG_TEMP_LOW, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = add nsw i64 %85, 16
  %87 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %81, i64 %86)
  %88 = icmp ne i32 %80, %87
  br i1 %88, label %108, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i64, i64* @LM92_REG_TEMP_HIGH, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = add nsw i64 %95, 32
  %97 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %91, i64 %96)
  %98 = icmp ne i32 %90, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %89
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i64, i64* @LM92_REG_CONFIG, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %101, i64 %105)
  %107 = icmp ne i64 %100, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99, %89, %79, %70, %60
  store i32 0, i32* %2, align 4
  br label %114

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %9, align 4
  br label %57

113:                                              ; preds = %57
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %108, %52, %37, %28, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i64) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
