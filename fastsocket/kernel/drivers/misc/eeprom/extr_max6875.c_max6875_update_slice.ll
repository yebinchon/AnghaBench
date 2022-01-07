; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_max6875.c_max6875_update_slice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_max6875.c_max6875_update_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.max6875_data = type { i32*, i32, i32, i32* }

@USER_EEPROM_SLICES = common dso_local global i32 0, align 4
@SLICE_BITS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Starting update of slice %u\0A\00", align 1
@USER_EEPROM_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"address set failed\0A\00", align 1
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@MAX6875_CMD_BLK_READ = common dso_local global i32 0, align 4
@SLICE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @max6875_update_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max6875_update_slice(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max6875_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.max6875_data* %11, %struct.max6875_data** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @USER_EEPROM_SLICES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %131

16:                                               ; preds = %2
  %17 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %18 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %21 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SLICE_BITS, align 4
  %25 = shl i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %9, align 8
  %28 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %29 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %16
  %36 = load i32, i32* @jiffies, align 4
  %37 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %38 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @time_after(i32 %36, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %126

46:                                               ; preds = %35, %16
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %55 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @USER_EEPROM_BASE, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SLICE_BITS, align 4
  %61 = shl i32 %59, %60
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 255
  %68 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %63, i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %46
  %71 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %127

74:                                               ; preds = %46
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %79 = call i64 @i2c_check_functionality(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32, i32* @MAX6875_CMD_BLK_READ, align 4
  %84 = load i32, i32* @SLICE_SIZE, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %82, i32 %83, i32 %84, i32* %85)
  %87 = load i32, i32* @SLICE_SIZE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %127

90:                                               ; preds = %81
  br label %112

91:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @SLICE_SIZE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = call i32 @i2c_smbus_read_byte(%struct.i2c_client* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %127

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i32, i32* @jiffies, align 4
  %114 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %115 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = shl i32 1, %120
  %122 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %123 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %112, %35
  br label %127

127:                                              ; preds = %126, %101, %89, %70
  %128 = load %struct.max6875_data*, %struct.max6875_data** %5, align 8
  %129 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  br label %131

131:                                              ; preds = %127, %15
  ret void
}

declare dso_local %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
