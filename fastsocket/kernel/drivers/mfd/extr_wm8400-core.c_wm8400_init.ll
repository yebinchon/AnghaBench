; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8400-core.c_wm8400_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8400-core.c_wm8400_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.wm8400 = type { i32 (i32, i64, i32, i32*)*, i32*, i32, i32, i32 }
%struct.wm8400_platform_data = type { i32 (i32)* }

@WM8400_RESET_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Chip ID register read failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@reg_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Device is not a WM8400, ID is %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Register cache read failed\0A\00", align 1
@WM8400_POWER_MANAGEMENT_1 = common dso_local global i64 0, align 8
@WM8400_CODEC_ENA = common dso_local global i32 0, align 4
@WM8400_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ID register read failed: %d\0A\00", align 1
@WM8400_CHIP_REV_MASK = common dso_local global i32 0, align 4
@WM8400_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"WM8400 revision %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to register codec\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Platform init failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"No platform initialisation supplied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8400*, %struct.wm8400_platform_data*)* @wm8400_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_init(%struct.wm8400* %0, %struct.wm8400_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8400*, align 8
  %5 = alloca %struct.wm8400_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm8400* %0, %struct.wm8400** %4, align 8
  store %struct.wm8400_platform_data* %1, %struct.wm8400_platform_data** %5, align 8
  %9 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %10 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %9, i32 0, i32 4
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %13 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %16 = call i32 @dev_set_drvdata(i32 %14, %struct.wm8400* %15)
  %17 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %18 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %17, i32 0, i32 0
  %19 = load i32 (i32, i64, i32, i32*)*, i32 (i32, i64, i32, i32*)** %18, align 8
  %20 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %21 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @WM8400_RESET_ID, align 8
  %24 = call i32 %19(i32 %22, i64 %23, i32 1, i32* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %29 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %218

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_data, align 8
  %39 = load i64, i64* @WM8400_RESET_ID, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %46 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %218

53:                                               ; preds = %34
  %54 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %55 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %54, i32 0, i32 0
  %56 = load i32 (i32, i64, i32, i32*)*, i32 (i32, i64, i32, i32*)** %55, align 8
  %57 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %58 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %61 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %65 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 %56(i32 %59, i64 0, i32 %63, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %53
  %71 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %72 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %218

77:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %81 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %78
  %86 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %87 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %95 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %78

103:                                              ; preds = %78
  %104 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %105 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @WM8400_POWER_MANAGEMENT_1, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @WM8400_CODEC_ENA, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %148, label %113

113:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %144, %113
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %117 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ARRAY_SIZE(i32* %118)
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %114
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_data, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %121
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_data, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %138 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %129, %121
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %114

147:                                              ; preds = %114
  br label %148

148:                                              ; preds = %147, %103
  %149 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %150 = load i32, i32* @WM8400_ID, align 4
  %151 = call i32 @wm8400_read(%struct.wm8400* %149, i32 %150, i32 1, i32* %6)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %156 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %218

161:                                              ; preds = %148
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @WM8400_CHIP_REV_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @WM8400_CHIP_REV_SHIFT, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %6, align 4
  %167 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %168 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @dev_info(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %173 = call i32 @wm8400_register_codec(%struct.wm8400* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %161
  %177 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %178 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @dev_err(i32 %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %212

181:                                              ; preds = %161
  %182 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %183 = icmp ne %struct.wm8400_platform_data* %182, null
  br i1 %183, label %184, label %206

184:                                              ; preds = %181
  %185 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %186 = getelementptr inbounds %struct.wm8400_platform_data, %struct.wm8400_platform_data* %185, i32 0, i32 0
  %187 = load i32 (i32)*, i32 (i32)** %186, align 8
  %188 = icmp ne i32 (i32)* %187, null
  br i1 %188, label %189, label %206

189:                                              ; preds = %184
  %190 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %191 = getelementptr inbounds %struct.wm8400_platform_data, %struct.wm8400_platform_data* %190, i32 0, i32 0
  %192 = load i32 (i32)*, i32 (i32)** %191, align 8
  %193 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %194 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 %192(i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %201 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 (i32, i8*, ...) @dev_err(i32 %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %203)
  br label %212

205:                                              ; preds = %189
  br label %211

206:                                              ; preds = %184, %181
  %207 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %208 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @dev_warn(i32 %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %211

211:                                              ; preds = %206, %205
  store i32 0, i32* %3, align 4
  br label %218

212:                                              ; preds = %199, %176
  %213 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %214 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @mfd_remove_devices(i32 %215)
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %212, %211, %154, %70, %44, %27
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.wm8400*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm8400_read(%struct.wm8400*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @wm8400_register_codec(%struct.wm8400*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
