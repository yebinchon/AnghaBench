; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_new_probed_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_new_probed_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i16 }
%union.i2c_smbus_data = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Probing not supported\0A\00", align 1
@I2C_CLIENT_END = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid 7-bit address 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Address 0x%02x already in use, not probing\0A\00", align 1
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Probing failed, no device found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @i2c_new_probed_device(%struct.i2c_adapter* %0, %struct.i2c_board_info* %1, i16* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_board_info*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.i2c_smbus_data, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %6, align 8
  store i16* %2, i16** %7, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %12 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.i2c_client* null, %struct.i2c_client** %4, align 8
  br label %151

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %123, %18
  %20 = load i16*, i16** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @I2C_CLIENT_END, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %126

29:                                               ; preds = %19
  %30 = load i16*, i16** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i16*, i16** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp sgt i32 %43, 119
  br i1 %44, label %45, label %54

45:                                               ; preds = %37, %29
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = load i16*, i16** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %52)
  br label %123

54:                                               ; preds = %37
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %56 = load i16*, i16** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = call i64 @i2c_check_addr(%struct.i2c_adapter* %55, i16 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 0
  %66 = load i16*, i16** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %66, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %123

73:                                               ; preds = %54
  %74 = load i16*, i16** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, -8
  %81 = icmp eq i32 %80, 48
  br i1 %81, label %96, label %82

82:                                               ; preds = %73
  %83 = load i16*, i16** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, -16
  %90 = icmp eq i32 %89, 80
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %93 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %94 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %91, %82, %73
  %97 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %98 = load i16*, i16** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %98, i64 %100
  %102 = load i16, i16* %101, align 2
  %103 = load i32, i32* @I2C_SMBUS_READ, align 4
  %104 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %105 = call i64 @i2c_smbus_xfer(%struct.i2c_adapter* %97, i16 zeroext %102, i32 0, i32 %103, i32 0, i32 %104, %union.i2c_smbus_data* %9)
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %126

108:                                              ; preds = %96
  br label %122

109:                                              ; preds = %91
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %111 = load i16*, i16** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %117 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %118 = call i64 @i2c_smbus_xfer(%struct.i2c_adapter* %110, i16 zeroext %115, i32 0, i32 %116, i32 0, i32 %117, %union.i2c_smbus_data* null)
  %119 = icmp sge i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %126

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122, %63, %45
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %19

126:                                              ; preds = %120, %107, %19
  %127 = load i16*, i16** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, i16* %127, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* @I2C_CLIENT_END, align 2
  %134 = zext i16 %133 to i32
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %137, i32 0, i32 0
  %139 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store %struct.i2c_client* null, %struct.i2c_client** %4, align 8
  br label %151

140:                                              ; preds = %126
  %141 = load i16*, i16** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i16, i16* %141, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %147 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %146, i32 0, i32 0
  store i16 %145, i16* %147, align 2
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %149 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %150 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %148, %struct.i2c_board_info* %149)
  store %struct.i2c_client* %150, %struct.i2c_client** %4, align 8
  br label %151

151:                                              ; preds = %140, %136, %14
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  ret %struct.i2c_client* %152
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

declare dso_local i64 @i2c_check_addr(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @i2c_smbus_xfer(%struct.i2c_adapter*, i16 zeroext, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
