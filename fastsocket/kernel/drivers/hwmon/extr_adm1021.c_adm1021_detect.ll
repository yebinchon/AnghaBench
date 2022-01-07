; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"adm1021: detect failed, smbus byte data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ADM1021_REG_STATUS = common dso_local global i32 0, align 4
@ADM1021_REG_CONV_RATE_R = common dso_local global i32 0, align 4
@ADM1021_REG_CONFIG_R = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"adm1021: detect failed, chip not detected!\0A\00", align 1
@ADM1021_REG_MAN_ID = common dso_local global i32 0, align 4
@ADM1021_REG_DEV_ID = common dso_local global i32 0, align 4
@adm1023 = common dso_local global i32 0, align 4
@adm1021 = common dso_local global i32 0, align 4
@thmc10 = common dso_local global i32 0, align 4
@gl523sm = common dso_local global i32 0, align 4
@max1617a = common dso_local global i32 0, align 4
@mc1066 = common dso_local global i32 0, align 4
@lm84 = common dso_local global i32 0, align 4
@max1617 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"max1617\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"max1617a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adm1021\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"adm1023\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thmc10\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"lm84\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gl523sm\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"mc1066\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"adm1021: Detected chip %s at adapter %d, address 0x%02x.\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adm1021_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1021_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %184

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @ADM1021_REG_STATUS, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @ADM1021_REG_CONV_RATE_R, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = load i32, i32* @ADM1021_REG_CONFIG_R, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 63
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 248
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41, %37
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %184

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %123

57:                                               ; preds = %54
  %58 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %59 = load i32, i32* @ADM1021_REG_MAN_ID, align 4
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 65
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = load i32, i32* @ADM1021_REG_DEV_ID, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  %67 = and i32 %66, 240
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @adm1023, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @adm1021, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %122

74:                                               ; preds = %57
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 73
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @thmc10, align 4
  store i32 %78, i32* %6, align 4
  br label %121

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 35
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @gl523sm, align 4
  store i32 %83, i32* %6, align 4
  br label %120

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 77
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %89 = load i32, i32* @ADM1021_REG_DEV_ID, align 4
  %90 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %88, i32 %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @max1617a, align 4
  store i32 %93, i32* %6, align 4
  br label %119

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 84
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @mc1066, align 4
  store i32 %98, i32* %6, align 4
  br label %118

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 127
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = and i32 %110, 171
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %102
  %114 = load i32, i32* @lm84, align 4
  store i32 %114, i32* %6, align 4
  br label %117

115:                                              ; preds = %109, %105, %99
  %116 = load i32, i32* @max1617, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %118

118:                                              ; preds = %117, %97
  br label %119

119:                                              ; preds = %118, %92
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %77
  br label %122

122:                                              ; preds = %121, %73
  br label %123

123:                                              ; preds = %122, %54
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @max1617, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %170

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @max1617a, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %169

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @adm1021, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %168

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @adm1023, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %167

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @thmc10, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %166

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @lm84, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %165

153:                                              ; preds = %148
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @gl523sm, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %164

158:                                              ; preds = %153
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @mc1066, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %163

163:                                              ; preds = %162, %158
  br label %164

164:                                              ; preds = %163, %157
  br label %165

165:                                              ; preds = %164, %152
  br label %166

166:                                              ; preds = %165, %147
  br label %167

167:                                              ; preds = %166, %142
  br label %168

168:                                              ; preds = %167, %137
  br label %169

169:                                              ; preds = %168, %132
  br label %170

170:                                              ; preds = %169, %127
  %171 = load i8*, i8** %10, align 8
  %172 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %173 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %172)
  %174 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %171, i32 %173, i32 %176)
  %178 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %179 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* @I2C_NAME_SIZE, align 4
  %183 = call i32 @strlcpy(i32 %180, i8* %181, i32 %182)
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %170, %49, %21
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
