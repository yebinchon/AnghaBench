; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm77.c_lm77_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm77.c_lm77_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm77\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm77_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm77_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %8, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %191

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %185

31:                                               ; preds = %28
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 1)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %36, i32 2)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %38, i32 3)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %40, i32 4)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %42, i32 5)
  store i32 %43, i32* %15, align 4
  store i32 8, i32* %9, align 4
  br label %44

44:                                               ; preds = %86, %31
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 255
  br i1 %46, label %47, label %89

47:                                               ; preds = %44
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %82, label %54

54:                                               ; preds = %47
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %55, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %82, label %61

61:                                               ; preds = %54
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 3
  %65 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %62, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 4
  %72 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %69, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 5
  %79 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %76, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %68, %61, %54, %47
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %191

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %9, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 240
  %92 = icmp ne i32 %91, 240
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 240
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 240
  %100 = icmp ne i32 %99, 240
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 240
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 240
  %108 = icmp ne i32 %107, 240
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, 240
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %109, %105
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, 240
  %116 = icmp ne i32 %115, 240
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %118, 240
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %15, align 4
  %123 = and i32 %122, 240
  %124 = icmp ne i32 %123, 240
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, 240
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %117, %109, %101, %93
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %191

132:                                              ; preds = %125, %121
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, 224
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %191

139:                                              ; preds = %132
  %140 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %141 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %140, i32 0)
  store i32 %141, i32* %10, align 4
  %142 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %143 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %142, i32 6)
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %148 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %147, i32 7)
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146, %139
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %191

154:                                              ; preds = %146
  %155 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %156 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %155, i32 2)
  store i32 %156, i32* %12, align 4
  %157 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %158 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %157, i32 6)
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %163 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %162, i32 7)
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %154
  %167 = load i32, i32* @ENODEV, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %191

169:                                              ; preds = %161
  %170 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %171 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %170, i32 4)
  store i32 %171, i32* %14, align 4
  %172 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %173 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %172, i32 6)
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %181, label %176

176:                                              ; preds = %169
  %177 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %178 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %177, i32 7)
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %176, %169
  %182 = load i32, i32* @ENODEV, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %191

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184, %28
  %186 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %187 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @I2C_NAME_SIZE, align 4
  %190 = call i32 @strlcpy(i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %189)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %181, %166, %151, %136, %129, %82, %25
  %192 = load i32, i32* %4, align 4
  ret i32 %192
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
