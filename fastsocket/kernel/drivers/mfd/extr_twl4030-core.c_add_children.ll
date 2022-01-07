; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_children.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_consumer_supply = type { i8*, %struct.device* }
%struct.device = type { i32 }
%struct.twl4030_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32* }
%struct.regulator_init_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@TPS_SUBSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"twl4030_bci\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"twl4030_gpio\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"twl4030_keypad\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"twl4030_madc\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"twl4030_rtc\00", align 1
@add_children.usb1v5 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.device* null }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"usb1v5\00", align 1
@add_children.usb1v8 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct.device* null }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"usb1v8\00", align 1
@add_children.usb3v1 = internal global %struct.regulator_consumer_supply { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %struct.device* null }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"usb3v1\00", align 1
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_MODE = common dso_local global i32 0, align 4
@REGULATOR_CHANGE_STATUS = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB1V5 = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB1V8 = common dso_local global i32 0, align 4
@TWL4030_REG_VUSB3V1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"twl4030_usb\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"twl4030_wdt\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"twl4030_pwrbutton\00", align 1
@TWL4030_REG_VMMC1 = common dso_local global i32 0, align 4
@TWL4030_REG_VDAC = common dso_local global i32 0, align 4
@TWL4030_VAUX2 = common dso_local global i64 0, align 8
@TWL4030_REG_VAUX2_4030 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX2 = common dso_local global i32 0, align 4
@TWL4030_REG_VPLL2 = common dso_local global i32 0, align 4
@TWL4030_REG_VMMC2 = common dso_local global i32 0, align 4
@TWL4030_REG_VSIM = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX1 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX3 = common dso_local global i32 0, align 4
@TWL4030_REG_VAUX4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_platform_data*, i64)* @add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_children(%struct.twl4030_platform_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_platform_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator_init_data, align 4
  store %struct.twl4030_platform_data* %0, %struct.twl4030_platform_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i64 (...) @twl_has_bci()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %12 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %11, i32 0, i32 14
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @TPS_SUBSET, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %15
  %21 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %21, i32 0, i32 14
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 8
  %28 = add nsw i64 %27, 1
  %29 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 2
  %33 = call %struct.device* @add_child(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %23, i32 4, i32 0, i64 %28, i64 %32)
  store %struct.device* %33, %struct.device** %6, align 8
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i64 @IS_ERR(%struct.device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.device* %38)
  store i32 %39, i32* %3, align 4
  br label %369

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40, %15, %10, %2
  %42 = call i64 (...) @twl_has_gpio()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %45, i32 0, i32 13
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %51 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %50, i32 0, i32 13
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 0
  %57 = call %struct.device* @add_child(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %52, i32 4, i32 0, i64 %56, i64 0)
  store %struct.device* %57, %struct.device** %6, align 8
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i64 @IS_ERR(%struct.device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.device* %62)
  store i32 %63, i32* %3, align 4
  br label %369

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %44, %41
  %66 = call i64 (...) @twl_has_keypad()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %70 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %75 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %78 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = call %struct.device* @add_child(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %76, i32 4, i32 1, i64 %80, i64 0)
  store %struct.device* %81, %struct.device** %6, align 8
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = call i64 @IS_ERR(%struct.device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @PTR_ERR(%struct.device* %86)
  store i32 %87, i32* %3, align 4
  br label %369

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %68, %65
  %90 = call i64 (...) @twl_has_madc()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %94 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %93, i32 0, i32 11
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %99 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %98, i32 0, i32 11
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 3
  %105 = call %struct.device* @add_child(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %100, i32 4, i32 1, i64 %104, i64 0)
  store %struct.device* %105, %struct.device** %6, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i64 @IS_ERR(%struct.device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @PTR_ERR(%struct.device* %110)
  store i32 %111, i32* %3, align 4
  br label %369

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %92, %89
  %114 = call i64 (...) @twl_has_rtc()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %118 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 8
  %121 = add nsw i64 %120, 3
  %122 = call %struct.device* @add_child(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32 1, i64 %121, i64 0)
  store %struct.device* %122, %struct.device** %6, align 8
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i64 @IS_ERR(%struct.device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call i32 @PTR_ERR(%struct.device* %127)
  store i32 %128, i32* %3, align 4
  br label %369

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %113
  %131 = call i64 (...) @twl_has_usb()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %209

133:                                              ; preds = %130
  %134 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %135 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %134, i32 0, i32 10
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %209

138:                                              ; preds = %133
  %139 = call i64 (...) @twl_has_regulator()
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %178

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %7, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %145 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %143, align 4
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %148 = load i32, i32* @REGULATOR_CHANGE_MODE, align 4
  %149 = load i32, i32* @REGULATOR_CHANGE_STATUS, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %147, align 4
  %151 = load i32, i32* @TWL4030_REG_VUSB1V5, align 4
  %152 = call %struct.device* @add_regulator_linked(i32 %151, %struct.regulator_init_data* %7, %struct.regulator_consumer_supply* @add_children.usb1v5, i32 1)
  store %struct.device* %152, %struct.device** %6, align 8
  %153 = load %struct.device*, %struct.device** %6, align 8
  %154 = call i64 @IS_ERR(%struct.device* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %141
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 @PTR_ERR(%struct.device* %157)
  store i32 %158, i32* %3, align 4
  br label %369

159:                                              ; preds = %141
  %160 = load i32, i32* @TWL4030_REG_VUSB1V8, align 4
  %161 = call %struct.device* @add_regulator_linked(i32 %160, %struct.regulator_init_data* %7, %struct.regulator_consumer_supply* @add_children.usb1v8, i32 1)
  store %struct.device* %161, %struct.device** %6, align 8
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = call i64 @IS_ERR(%struct.device* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = call i32 @PTR_ERR(%struct.device* %166)
  store i32 %167, i32* %3, align 4
  br label %369

168:                                              ; preds = %159
  %169 = load i32, i32* @TWL4030_REG_VUSB3V1, align 4
  %170 = call %struct.device* @add_regulator_linked(i32 %169, %struct.regulator_init_data* %7, %struct.regulator_consumer_supply* @add_children.usb3v1, i32 1)
  store %struct.device* %170, %struct.device** %6, align 8
  %171 = load %struct.device*, %struct.device** %6, align 8
  %172 = call i64 @IS_ERR(%struct.device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = call i32 @PTR_ERR(%struct.device* %175)
  store i32 %176, i32* %3, align 4
  br label %369

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %138
  %179 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %180 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %179, i32 0, i32 10
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %183 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %182, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 8
  %186 = add nsw i64 %185, 2
  %187 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %188 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %187, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 4
  %191 = call %struct.device* @add_child(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %181, i32 4, i32 1, i64 %186, i64 %190)
  store %struct.device* %191, %struct.device** %6, align 8
  %192 = load %struct.device*, %struct.device** %6, align 8
  %193 = call i64 @IS_ERR(%struct.device* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %178
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = call i32 @PTR_ERR(%struct.device* %196)
  store i32 %197, i32* %3, align 4
  br label %369

198:                                              ; preds = %178
  %199 = call i64 (...) @twl_has_regulator()
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load %struct.device*, %struct.device** %6, align 8
  %203 = icmp ne %struct.device* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %205, %struct.device** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb1v5, i32 0, i32 1), align 8
  %206 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %206, %struct.device** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb1v8, i32 0, i32 1), align 8
  %207 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %207, %struct.device** getelementptr inbounds (%struct.regulator_consumer_supply, %struct.regulator_consumer_supply* @add_children.usb3v1, i32 0, i32 1), align 8
  br label %208

208:                                              ; preds = %204, %201, %198
  br label %209

209:                                              ; preds = %208, %133, %130
  %210 = call i64 (...) @twl_has_watchdog()
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = call %struct.device* @add_child(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 0, i32 0, i64 0, i64 0)
  store %struct.device* %213, %struct.device** %6, align 8
  %214 = load %struct.device*, %struct.device** %6, align 8
  %215 = call i64 @IS_ERR(%struct.device* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.device*, %struct.device** %6, align 8
  %219 = call i32 @PTR_ERR(%struct.device* %218)
  store i32 %219, i32* %3, align 4
  br label %369

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %209
  %222 = call i64 (...) @twl_has_pwrbutton()
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %221
  %225 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %226 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 8
  %229 = add nsw i64 %228, 0
  %230 = call %struct.device* @add_child(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 0, i32 1, i64 %229, i64 0)
  store %struct.device* %230, %struct.device** %6, align 8
  %231 = load %struct.device*, %struct.device** %6, align 8
  %232 = call i64 @IS_ERR(%struct.device* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %224
  %235 = load %struct.device*, %struct.device** %6, align 8
  %236 = call i32 @PTR_ERR(%struct.device* %235)
  store i32 %236, i32* %3, align 4
  br label %369

237:                                              ; preds = %224
  br label %238

238:                                              ; preds = %237, %221
  %239 = call i64 (...) @twl_has_regulator()
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %287

241:                                              ; preds = %238
  %242 = load i32, i32* @TWL4030_REG_VMMC1, align 4
  %243 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %244 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = call %struct.device* @add_regulator(i32 %242, i32 %245)
  store %struct.device* %246, %struct.device** %6, align 8
  %247 = load %struct.device*, %struct.device** %6, align 8
  %248 = call i64 @IS_ERR(%struct.device* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load %struct.device*, %struct.device** %6, align 8
  %252 = call i32 @PTR_ERR(%struct.device* %251)
  store i32 %252, i32* %3, align 4
  br label %369

253:                                              ; preds = %241
  %254 = load i32, i32* @TWL4030_REG_VDAC, align 4
  %255 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %256 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = call %struct.device* @add_regulator(i32 %254, i32 %257)
  store %struct.device* %258, %struct.device** %6, align 8
  %259 = load %struct.device*, %struct.device** %6, align 8
  %260 = call i64 @IS_ERR(%struct.device* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %253
  %263 = load %struct.device*, %struct.device** %6, align 8
  %264 = call i32 @PTR_ERR(%struct.device* %263)
  store i32 %264, i32* %3, align 4
  br label %369

265:                                              ; preds = %253
  %266 = load i64, i64* %5, align 8
  %267 = load i64, i64* @TWL4030_VAUX2, align 8
  %268 = and i64 %266, %267
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* @TWL4030_REG_VAUX2_4030, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @TWL4030_REG_VAUX2, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i32 [ %271, %270 ], [ %273, %272 ]
  %276 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %277 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = call %struct.device* @add_regulator(i32 %275, i32 %278)
  store %struct.device* %279, %struct.device** %6, align 8
  %280 = load %struct.device*, %struct.device** %6, align 8
  %281 = call i64 @IS_ERR(%struct.device* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %274
  %284 = load %struct.device*, %struct.device** %6, align 8
  %285 = call i32 @PTR_ERR(%struct.device* %284)
  store i32 %285, i32* %3, align 4
  br label %369

286:                                              ; preds = %274
  br label %287

287:                                              ; preds = %286, %238
  %288 = call i64 (...) @twl_has_regulator()
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %368

290:                                              ; preds = %287
  %291 = load i64, i64* %5, align 8
  %292 = load i64, i64* @TPS_SUBSET, align 8
  %293 = and i64 %291, %292
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %368, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @TWL4030_REG_VPLL2, align 4
  %297 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %298 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = call %struct.device* @add_regulator(i32 %296, i32 %299)
  store %struct.device* %300, %struct.device** %6, align 8
  %301 = load %struct.device*, %struct.device** %6, align 8
  %302 = call i64 @IS_ERR(%struct.device* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %295
  %305 = load %struct.device*, %struct.device** %6, align 8
  %306 = call i32 @PTR_ERR(%struct.device* %305)
  store i32 %306, i32* %3, align 4
  br label %369

307:                                              ; preds = %295
  %308 = load i32, i32* @TWL4030_REG_VMMC2, align 4
  %309 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %310 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = call %struct.device* @add_regulator(i32 %308, i32 %311)
  store %struct.device* %312, %struct.device** %6, align 8
  %313 = load %struct.device*, %struct.device** %6, align 8
  %314 = call i64 @IS_ERR(%struct.device* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %307
  %317 = load %struct.device*, %struct.device** %6, align 8
  %318 = call i32 @PTR_ERR(%struct.device* %317)
  store i32 %318, i32* %3, align 4
  br label %369

319:                                              ; preds = %307
  %320 = load i32, i32* @TWL4030_REG_VSIM, align 4
  %321 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %322 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call %struct.device* @add_regulator(i32 %320, i32 %323)
  store %struct.device* %324, %struct.device** %6, align 8
  %325 = load %struct.device*, %struct.device** %6, align 8
  %326 = call i64 @IS_ERR(%struct.device* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %319
  %329 = load %struct.device*, %struct.device** %6, align 8
  %330 = call i32 @PTR_ERR(%struct.device* %329)
  store i32 %330, i32* %3, align 4
  br label %369

331:                                              ; preds = %319
  %332 = load i32, i32* @TWL4030_REG_VAUX1, align 4
  %333 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %334 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call %struct.device* @add_regulator(i32 %332, i32 %335)
  store %struct.device* %336, %struct.device** %6, align 8
  %337 = load %struct.device*, %struct.device** %6, align 8
  %338 = call i64 @IS_ERR(%struct.device* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %331
  %341 = load %struct.device*, %struct.device** %6, align 8
  %342 = call i32 @PTR_ERR(%struct.device* %341)
  store i32 %342, i32* %3, align 4
  br label %369

343:                                              ; preds = %331
  %344 = load i32, i32* @TWL4030_REG_VAUX3, align 4
  %345 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %346 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call %struct.device* @add_regulator(i32 %344, i32 %347)
  store %struct.device* %348, %struct.device** %6, align 8
  %349 = load %struct.device*, %struct.device** %6, align 8
  %350 = call i64 @IS_ERR(%struct.device* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %343
  %353 = load %struct.device*, %struct.device** %6, align 8
  %354 = call i32 @PTR_ERR(%struct.device* %353)
  store i32 %354, i32* %3, align 4
  br label %369

355:                                              ; preds = %343
  %356 = load i32, i32* @TWL4030_REG_VAUX4, align 4
  %357 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %4, align 8
  %358 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call %struct.device* @add_regulator(i32 %356, i32 %359)
  store %struct.device* %360, %struct.device** %6, align 8
  %361 = load %struct.device*, %struct.device** %6, align 8
  %362 = call i64 @IS_ERR(%struct.device* %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %355
  %365 = load %struct.device*, %struct.device** %6, align 8
  %366 = call i32 @PTR_ERR(%struct.device* %365)
  store i32 %366, i32* %3, align 4
  br label %369

367:                                              ; preds = %355
  br label %368

368:                                              ; preds = %367, %290, %287
  store i32 0, i32* %3, align 4
  br label %369

369:                                              ; preds = %368, %364, %352, %340, %328, %316, %304, %283, %262, %250, %234, %217, %195, %174, %165, %156, %126, %109, %85, %61, %37
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

declare dso_local i64 @twl_has_bci(...) #1

declare dso_local %struct.device* @add_child(i32, i8*, i32*, i32, i32, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i64 @twl_has_gpio(...) #1

declare dso_local i64 @twl_has_keypad(...) #1

declare dso_local i64 @twl_has_madc(...) #1

declare dso_local i64 @twl_has_rtc(...) #1

declare dso_local i64 @twl_has_usb(...) #1

declare dso_local i64 @twl_has_regulator(...) #1

declare dso_local %struct.device* @add_regulator_linked(i32, %struct.regulator_init_data*, %struct.regulator_consumer_supply*, i32) #1

declare dso_local i64 @twl_has_watchdog(...) #1

declare dso_local i64 @twl_has_pwrbutton(...) #1

declare dso_local %struct.device* @add_regulator(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
