; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm75.c_lm75_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm75.c_lm75_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm75\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm75_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %129

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %123

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %30, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %34, i32 2)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %36, i32 4)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %41, i32 5)
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %46, i32 6)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %51, i32 7)
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %45, %40, %29
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %129

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %59, i32 3)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %61, i32 4)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %80, label %65

65:                                               ; preds = %58
  %66 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %67 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %66, i32 5)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %71, i32 6)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %76, i32 7)
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %70, %65, %58
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %129

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 224
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %129

90:                                               ; preds = %83
  store i32 8, i32* %9, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 255
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %94
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 2
  %105 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %102, i32 %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 3
  %112 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %109, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108, %101, %94
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %129

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 8
  store i32 %121, i32* %9, align 4
  br label %91

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %26
  %124 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %125 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @I2C_NAME_SIZE, align 4
  %128 = call i32 @strlcpy(i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %115, %87, %80, %55, %23
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
