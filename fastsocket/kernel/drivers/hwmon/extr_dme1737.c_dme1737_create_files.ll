; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dme1737_data = type { i64, i32, i32, i32, i32*, i32 }

@dev_attr_name = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dme1737_group = common dso_local global i32 0, align 4
@sch5027 = common dso_local global i64 0, align 8
@dme1737_misc_group = common dso_local global i32 0, align 4
@dme1737 = common dso_local global i64 0, align 8
@dme1737_vid_group = common dso_local global i32 0, align 4
@dme1737_fan_group = common dso_local global i32* null, align 8
@dme1737_pwm_group = common dso_local global i32* null, align 8
@dme1737_pwm_misc_attr = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Device is locked. Some attributes will be read-only.\0A\00", align 1
@dme1737_zone_chmod_group = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@dme1737_pwm_chmod_group = common dso_local global i32* null, align 8
@dme1737_pwm_chmod_attr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dme1737_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_create_files(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.dme1737_data* %8, %struct.dme1737_data** %4, align 8
  %9 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %10 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = call i32 @sysfs_create_file(i32* %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_attr_name, i32 0, i32 0))
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %243

19:                                               ; preds = %13, %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = call i32 @sysfs_create_group(i32* %21, i32* @dme1737_group)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %240

25:                                               ; preds = %19
  %26 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @sch5027, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = call i32 @sysfs_create_group(i32* %33, i32* @dme1737_misc_group)
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %240

37:                                               ; preds = %31, %25
  %38 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %39 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @dme1737, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = call i32 @sysfs_create_group(i32* %45, i32* @dme1737_vid_group)
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %240

49:                                               ; preds = %43, %37
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** @dme1737_fan_group, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %57 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load i32*, i32** @dme1737_fan_group, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @sysfs_create_group(i32* %65, i32* %69)
  store i32 %70, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %240

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %50

78:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %124, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** @dme1737_pwm_group, align 8
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %79
  %85 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %86 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %3, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 0
  %95 = load i32*, i32** @dme1737_pwm_group, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @sysfs_create_group(i32* %94, i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %240

102:                                              ; preds = %92
  %103 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %104 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @sch5027, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.device*, %struct.device** %3, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = load i32**, i32*** @dme1737_pwm_misc_attr, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @sysfs_create_file(i32* %113, i32* %118)
  store i32 %119, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %240

122:                                              ; preds = %111, %108, %102
  br label %123

123:                                              ; preds = %122, %84
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %79

127:                                              ; preds = %79
  %128 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %129 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.device*, %struct.device** %3, align 8
  %135 = call i32 @dev_info(%struct.device* %134, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %239

136:                                              ; preds = %127
  %137 = load %struct.device*, %struct.device** %3, align 8
  %138 = load i32, i32* @S_IRUGO, align 4
  %139 = load i32, i32* @S_IWUSR, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @dme1737_chmod_group(%struct.device* %137, i32* @dme1737_zone_chmod_group, i32 %140)
  %142 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %143 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @sch5027, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %136
  %148 = load %struct.device*, %struct.device** %3, align 8
  %149 = load i32, i32* @S_IRUGO, align 4
  %150 = load i32, i32* @S_IWUSR, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @dme1737_chmod_group(%struct.device* %148, i32* @dme1737_misc_group, i32 %151)
  br label %153

153:                                              ; preds = %147, %136
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %198, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32*, i32** @dme1737_pwm_chmod_group, align 8
  %157 = call i32 @ARRAY_SIZE(i32* %156)
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %201

159:                                              ; preds = %154
  %160 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %161 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %6, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %159
  %168 = load %struct.device*, %struct.device** %3, align 8
  %169 = load i32*, i32** @dme1737_pwm_chmod_group, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* @S_IRUGO, align 4
  %174 = load i32, i32* @S_IWUSR, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @dme1737_chmod_group(%struct.device* %168, i32* %172, i32 %175)
  %177 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %178 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @sch5027, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %167
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load %struct.device*, %struct.device** %3, align 8
  %187 = load i32**, i32*** @dme1737_pwm_misc_attr, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @S_IRUGO, align 4
  %193 = load i32, i32* @S_IWUSR, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @dme1737_chmod_file(%struct.device* %186, i32* %191, i32 %194)
  br label %196

196:                                              ; preds = %185, %182, %167
  br label %197

197:                                              ; preds = %196, %159
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %154

201:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %235, %201
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 3
  br i1 %204, label %205, label %238

205:                                              ; preds = %202
  %206 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %207 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 1, %209
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %205
  %214 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %215 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @PWM_EN_FROM_REG(i32 %220)
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %234

223:                                              ; preds = %213
  %224 = load %struct.device*, %struct.device** %3, align 8
  %225 = load i32**, i32*** @dme1737_pwm_chmod_attr, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @S_IRUGO, align 4
  %231 = load i32, i32* @S_IWUSR, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @dme1737_chmod_file(%struct.device* %224, i32* %229, i32 %232)
  br label %234

234:                                              ; preds = %223, %213, %205
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %202

238:                                              ; preds = %202
  br label %239

239:                                              ; preds = %238, %133
  store i32 0, i32* %2, align 4
  br label %245

240:                                              ; preds = %121, %101, %72, %48, %36, %24
  %241 = load %struct.device*, %struct.device** %3, align 8
  %242 = call i32 @dme1737_remove_files(%struct.device* %241)
  br label %243

243:                                              ; preds = %240, %18
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_chmod_group(%struct.device*, i32*, i32) #1

declare dso_local i32 @dme1737_chmod_file(%struct.device*, i32*, i32) #1

declare dso_local i32 @PWM_EN_FROM_REG(i32) #1

declare dso_local i32 @dme1737_remove_files(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
