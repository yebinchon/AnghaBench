; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { i32 (%struct.wm831x.0*)*, i32 (%struct.wm831x.1*)*, i64 }
%struct.wm831x.0 = type opaque
%struct.wm831x.1 = type opaque

@WM831X_PARENT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read parent ID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Device is not a WM831x: ID %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to read revision: %d\0A\00", align 1
@WM831X_PARENT_REV_MASK = common dso_local global i32 0, align 4
@WM831X_PARENT_REV_SHIFT = common dso_local global i32 0, align 4
@WM831X_RESET_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to read device ID: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"WM8310 revision %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"WM8311 revision %c\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"WM8312 revision %c\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"WM831%d ES revision %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Unknown WM831x device %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Device was registered as a WM831%lu\0A\00", align 1
@WM831X_SECURITY_KEY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to read security key: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Security key had non-zero value %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"pre_init() failed: %d\0A\00", align 1
@wm8310_devs = common dso_local global i32 0, align 4
@wm8311_devs = common dso_local global i32 0, align 4
@wm8312_devs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to add children\0A\00", align 1
@backlight_devs = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Failed to add backlight: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"post_init() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i64, i32)* @wm831x_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_device_init(%struct.wm831x* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %13 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %15, align 8
  store %struct.wm831x_pdata* %16, %struct.wm831x_pdata** %8, align 8
  %17 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %18 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %21 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %20, i32 0, i32 3
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %24 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %23, i32 0, i32 2
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %27 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %30 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %28, %struct.wm831x* %29)
  %31 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %32 = load i32, i32* @WM831X_PARENT_ID, align 4
  %33 = call i32 @wm831x_reg_read(%struct.wm831x* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %38 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %295

42:                                               ; preds = %3
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 25092
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %47 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %295

53:                                               ; preds = %42
  %54 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %55 = load i32, i32* @WM831X_REVISION, align 4
  %56 = call i32 @wm831x_reg_read(%struct.wm831x* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %61 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %295

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @WM831X_PARENT_REV_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @WM831X_PARENT_REV_SHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %72 = load i32, i32* @WM831X_RESET_ID, align 4
  %73 = call i32 @wm831x_reg_read(%struct.wm831x* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %78 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %295

82:                                               ; preds = %65
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %127 [
    i32 33552, label %84
    i32 33553, label %94
    i32 33554, label %104
    i32 0, label %114
  ]

84:                                               ; preds = %82
  store i32 130, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %93 [
    i32 0, label %86
  ]

86:                                               ; preds = %84
  %87 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %88 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 65, %90
  %92 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %84, %86
  br label %135

94:                                               ; preds = %82
  store i32 129, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  switch i32 %95, label %103 [
    i32 0, label %96
  ]

96:                                               ; preds = %94
  %97 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %98 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 65, %100
  %102 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %94, %96
  br label %135

104:                                              ; preds = %82
  store i32 128, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  switch i32 %105, label %113 [
    i32 0, label %106
  ]

106:                                              ; preds = %104
  %107 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %108 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 65, %110
  %112 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %104, %106
  br label %135

114:                                              ; preds = %82
  %115 = load i64, i64* %6, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  switch i32 %117, label %126 [
    i32 0, label %118
  ]

118:                                              ; preds = %114
  %119 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %120 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 65, %123
  %125 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_info(%struct.TYPE_7__* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %114, %118
  br label %135

127:                                              ; preds = %82
  %128 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %129 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %11, align 4
  br label %295

135:                                              ; preds = %126, %113, %103, %93
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %142 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @dev_warn(%struct.TYPE_7__* %143, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %149 = load i32, i32* @WM831X_SECURITY_KEY, align 4
  %150 = call i32 @wm831x_reg_read(%struct.wm831x* %148, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %155 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  br label %295

159:                                              ; preds = %147
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %164 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %163, i32 0, i32 1
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @dev_warn(%struct.TYPE_7__* %165, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  %168 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %169 = load i32, i32* @WM831X_SECURITY_KEY, align 4
  %170 = call i32 @wm831x_reg_write(%struct.wm831x* %168, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %162, %159
  %172 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %173 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %175 = icmp ne %struct.wm831x_pdata* %174, null
  br i1 %175, label %176, label %197

176:                                              ; preds = %171
  %177 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %178 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %177, i32 0, i32 0
  %179 = load i32 (%struct.wm831x.0*)*, i32 (%struct.wm831x.0*)** %178, align 8
  %180 = icmp ne i32 (%struct.wm831x.0*)* %179, null
  br i1 %180, label %181, label %197

181:                                              ; preds = %176
  %182 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %183 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %182, i32 0, i32 0
  %184 = load i32 (%struct.wm831x.0*)*, i32 (%struct.wm831x.0*)** %183, align 8
  %185 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %186 = bitcast %struct.wm831x* %185 to %struct.wm831x.0*
  %187 = call i32 %184(%struct.wm831x.0* %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %192 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %194)
  br label %295

196:                                              ; preds = %181
  br label %197

197:                                              ; preds = %196, %176, %171
  %198 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @wm831x_irq_init(%struct.wm831x* %198, i32 %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  br label %295

204:                                              ; preds = %197
  %205 = load i32, i32* %10, align 4
  switch i32 %205, label %230 [
    i32 130, label %206
    i32 129, label %214
    i32 128, label %222
  ]

206:                                              ; preds = %204
  %207 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %208 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %207, i32 0, i32 1
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = load i32, i32* @wm8310_devs, align 4
  %211 = load i32, i32* @wm8310_devs, align 4
  %212 = call i32 @ARRAY_SIZE(i32 %211)
  %213 = call i32 @mfd_add_devices(%struct.TYPE_7__* %209, i32 -1, i32 %210, i32 %212, i32* null, i32 0)
  store i32 %213, i32* %11, align 4
  br label %232

214:                                              ; preds = %204
  %215 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %216 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %215, i32 0, i32 1
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* @wm8311_devs, align 4
  %219 = load i32, i32* @wm8311_devs, align 4
  %220 = call i32 @ARRAY_SIZE(i32 %219)
  %221 = call i32 @mfd_add_devices(%struct.TYPE_7__* %217, i32 -1, i32 %218, i32 %220, i32* null, i32 0)
  store i32 %221, i32* %11, align 4
  br label %232

222:                                              ; preds = %204
  %223 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %224 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %223, i32 0, i32 1
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i32, i32* @wm8312_devs, align 4
  %227 = load i32, i32* @wm8312_devs, align 4
  %228 = call i32 @ARRAY_SIZE(i32 %227)
  %229 = call i32 @mfd_add_devices(%struct.TYPE_7__* %225, i32 -1, i32 %226, i32 %228, i32* null, i32 0)
  store i32 %229, i32* %11, align 4
  br label %232

230:                                              ; preds = %204
  %231 = call i32 (...) @BUG()
  br label %232

232:                                              ; preds = %230, %222, %214, %206
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %237 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %236, i32 0, i32 1
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %238, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %292

240:                                              ; preds = %232
  %241 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %242 = icmp ne %struct.wm831x_pdata* %241, null
  br i1 %242, label %243, label %265

243:                                              ; preds = %240
  %244 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %245 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %243
  %249 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %250 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %249, i32 0, i32 1
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* @backlight_devs, align 4
  %253 = load i32, i32* @backlight_devs, align 4
  %254 = call i32 @ARRAY_SIZE(i32 %253)
  %255 = call i32 @mfd_add_devices(%struct.TYPE_7__* %251, i32 -1, i32 %252, i32 %254, i32* null, i32 0)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %248
  %259 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %260 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %259, i32 0, i32 1
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %261, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %258, %248
  br label %265

265:                                              ; preds = %264, %243, %240
  %266 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %267 = call i32 @wm831x_otp_init(%struct.wm831x* %266)
  %268 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %269 = icmp ne %struct.wm831x_pdata* %268, null
  br i1 %269, label %270, label %291

270:                                              ; preds = %265
  %271 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %272 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %271, i32 0, i32 1
  %273 = load i32 (%struct.wm831x.1*)*, i32 (%struct.wm831x.1*)** %272, align 8
  %274 = icmp ne i32 (%struct.wm831x.1*)* %273, null
  br i1 %274, label %275, label %291

275:                                              ; preds = %270
  %276 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %8, align 8
  %277 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %276, i32 0, i32 1
  %278 = load i32 (%struct.wm831x.1*)*, i32 (%struct.wm831x.1*)** %277, align 8
  %279 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %280 = bitcast %struct.wm831x* %279 to %struct.wm831x.1*
  %281 = call i32 %278(%struct.wm831x.1* %280)
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %275
  %285 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %286 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %285, i32 0, i32 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %287, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %288)
  br label %292

290:                                              ; preds = %275
  br label %291

291:                                              ; preds = %290, %270, %265
  store i32 0, i32* %4, align 4
  br label %303

292:                                              ; preds = %284, %235
  %293 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %294 = call i32 @wm831x_irq_exit(%struct.wm831x* %293)
  br label %295

295:                                              ; preds = %292, %203, %190, %153, %127, %76, %59, %45, %36
  %296 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %297 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %296, i32 0, i32 1
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = call i32 @mfd_remove_devices(%struct.TYPE_7__* %298)
  %300 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %301 = call i32 @kfree(%struct.wm831x* %300)
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %295, %291
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.wm831x*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @wm831x_irq_init(%struct.wm831x*, i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_7__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @wm831x_otp_init(%struct.wm831x*) #1

declare dso_local i32 @wm831x_irq_exit(%struct.wm831x*) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.wm831x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
