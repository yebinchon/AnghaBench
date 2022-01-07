; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w83781d_data = type { i32, i32*, i32*, i32, i32 }

@reset = common dso_local global i64 0, align 8
@as99127f = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"If reset=1 solved a problem you were having, please report!\0A\00", align 1
@W83781D_REG_BEEP_CONFIG = common dso_local global i32 0, align 4
@W83781D_REG_PWMCLK12 = common dso_local global i32 0, align 4
@W83781D_REG_CONFIG = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@init = common dso_local global i64 0, align 8
@w83781d = common dso_local global i32 0, align 4
@W83781D_REG_SCFG1 = common dso_local global i32 0, align 4
@BIT_SCFG1 = common dso_local global i32* null, align 8
@W83781D_REG_SCFG2 = common dso_local global i32 0, align 4
@BIT_SCFG2 = common dso_local global i32* null, align 8
@w83783s = common dso_local global i32 0, align 4
@W83781D_REG_TEMP2_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Enabling temp2, readings might not make sense\0A\00", align 1
@W83781D_REG_TEMP3_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Enabling temp3, readings might not make sense\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @w83781d_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83781d_init_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.w83781d_data* %9, %struct.w83781d_data** %3, align 8
  %10 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %11 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @reset, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @as99127f, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @dev_info(%struct.device* %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %23 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %24 = call i32 @w83781d_read_value(%struct.w83781d_data* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %26 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %27 = call i32 @w83781d_read_value(%struct.w83781d_data* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %29 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %30 = call i32 @w83781d_write_value(%struct.w83781d_data* %28, i32 %29, i32 128)
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %32 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 128
  %35 = call i32 @w83781d_write_value(%struct.w83781d_data* %31, i32 %32, i32 %34)
  %36 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %37 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @w83781d_write_value(%struct.w83781d_data* %36, i32 %37, i32 %38)
  %40 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %41 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %42 = call i32 @w83781d_write_value(%struct.w83781d_data* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %19, %15, %1
  %44 = load i64, i64* @init, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i64, i64* @reset, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @as99127f, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %55 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %56 = call i32 @w83781d_read_value(%struct.w83781d_data* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %58 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 128
  %61 = call i32 @w83781d_write_value(%struct.w83781d_data* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %53, %49, %46, %43
  %63 = call i32 (...) @vid_which_vrm()
  %64 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %65 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @w83781d, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @as99127f, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %140

73:                                               ; preds = %69
  %74 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %75 = load i32, i32* @W83781D_REG_SCFG1, align 4
  %76 = call i32 @w83781d_read_value(%struct.w83781d_data* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %136, %73
  %78 = load i32, i32* %4, align 4
  %79 = icmp sle i32 %78, 3
  br i1 %79, label %80, label %139

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** @BIT_SCFG1, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %81, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %80
  %91 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %92 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 4, i32* %97, align 4
  br label %127

98:                                               ; preds = %80
  %99 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %100 = load i32, i32* @W83781D_REG_SCFG2, align 4
  %101 = call i32 @w83781d_read_value(%struct.w83781d_data* %99, i32 %100)
  %102 = load i32*, i32** @BIT_SCFG2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %101, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %98
  %111 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %112 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 1, i32* %117, align 4
  br label %126

118:                                              ; preds = %98
  %119 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %120 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 2, i32* %125, align 4
  br label %126

126:                                              ; preds = %118, %110
  br label %127

127:                                              ; preds = %126, %90
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @w83783s, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %4, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %139

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %77

139:                                              ; preds = %134, %77
  br label %140

140:                                              ; preds = %139, %69, %62
  %141 = load i64, i64* @init, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %183

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @as99127f, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %183

147:                                              ; preds = %143
  %148 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %149 = load i32, i32* @W83781D_REG_TEMP2_CONFIG, align 4
  %150 = call i32 @w83781d_read_value(%struct.w83781d_data* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %147
  %155 = load %struct.device*, %struct.device** %2, align 8
  %156 = call i32 @dev_warn(%struct.device* %155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %157 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %158 = load i32, i32* @W83781D_REG_TEMP2_CONFIG, align 4
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, 254
  %161 = call i32 @w83781d_write_value(%struct.w83781d_data* %157, i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %154, %147
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @w83783s, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %168 = load i32, i32* @W83781D_REG_TEMP3_CONFIG, align 4
  %169 = call i32 @w83781d_read_value(%struct.w83781d_data* %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load %struct.device*, %struct.device** %2, align 8
  %175 = call i32 @dev_warn(%struct.device* %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %177 = load i32, i32* @W83781D_REG_TEMP3_CONFIG, align 4
  %178 = load i32, i32* %7, align 4
  %179 = and i32 %178, 254
  %180 = call i32 @w83781d_write_value(%struct.w83781d_data* %176, i32 %177, i32 %179)
  br label %181

181:                                              ; preds = %173, %166
  br label %182

182:                                              ; preds = %181, %162
  br label %183

183:                                              ; preds = %182, %143, %140
  %184 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %185 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %186 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %187 = load i32, i32* @W83781D_REG_CONFIG, align 4
  %188 = call i32 @w83781d_read_value(%struct.w83781d_data* %186, i32 %187)
  %189 = and i32 %188, 247
  %190 = or i32 %189, 1
  %191 = call i32 @w83781d_write_value(%struct.w83781d_data* %184, i32 %185, i32 %190)
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %206, %183
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %193, 3
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @W83781D_REG_FAN_MIN(i32 %197)
  %199 = call i32 @w83781d_read_value(%struct.w83781d_data* %196, i32 %198)
  %200 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %201 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  br label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %192

209:                                              ; preds = %192
  %210 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %211 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %210, i32 0, i32 3
  %212 = call i32 @mutex_init(i32* %211)
  ret void
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @W83781D_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
