; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }

@io_limit = common dso_local global i64 0, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@AT24_FLAG_ADDR16 = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@write_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"read %zu@%d --> %d (%ld)\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at24_data*, i8*, i32, i64)* @at24_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at24_eeprom_read(%struct.at24_data* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.at24_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.i2c_msg], align 16
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.at24_data* %0, %struct.at24_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %18 = call i32 @memset(%struct.i2c_msg* %17, i32 0, i32 48)
  %19 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %20 = call %struct.i2c_client* @at24_translate_offset(%struct.at24_data* %19, i32* %8)
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @io_limit, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @io_limit, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %28 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %86

38:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  %39 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %40 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = lshr i32 %47, 8
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %38
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 16
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 16
  %67 = load i32, i32* %16, align 4
  %68 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @I2C_M_RD, align 4
  %76 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 1
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %53, %37
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* @write_timeout, align 4
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add i64 %87, %89
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %131, %86
  %92 = load i64, i64* @jiffies, align 8
  store i64 %92, i64* %14, align 8
  %93 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %94 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %98, i32 %99, i64 %100, i8* %101)
  store i32 %102, i32* %15, align 4
  br label %115

103:                                              ; preds = %91
  %104 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %108 = call i32 @i2c_transfer(i32 %106, %struct.i2c_msg* %107, i32 2)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %111, %103
  br label %115

115:                                              ; preds = %114, %97
  %116 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i64, i64* @jiffies, align 8
  %122 = call i32 @dev_dbg(i32* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %118, i32 %119, i32 %120, i64 %121)
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %9, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %5, align 8
  br label %139

129:                                              ; preds = %115
  %130 = call i32 @msleep(i32 1)
  br label %131

131:                                              ; preds = %129
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i64 @time_before(i64 %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %91, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* @ETIMEDOUT, align 8
  %138 = sub i64 0, %137
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %136, %127
  %140 = load i64, i64* %5, align 8
  ret i64 %140
}

declare dso_local i32 @memset(%struct.i2c_msg*, i32, i32) #1

declare dso_local %struct.i2c_client* @at24_translate_offset(%struct.at24_data*, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i64, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
