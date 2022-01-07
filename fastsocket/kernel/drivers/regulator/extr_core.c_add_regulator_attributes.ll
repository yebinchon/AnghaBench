; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_add_regulator_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_add_regulator_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i64, %struct.regulator_ops* }
%struct.regulator_ops = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.device = type { i32 }

@dev_attr_microvolts = common dso_local global i32 0, align 4
@dev_attr_microamps = common dso_local global i32 0, align 4
@dev_attr_opmode = common dso_local global i32 0, align 4
@dev_attr_state = common dso_local global i32 0, align 4
@dev_attr_status = common dso_local global i32 0, align 4
@REGULATOR_CURRENT = common dso_local global i64 0, align 8
@dev_attr_requested_microamps = common dso_local global i32 0, align 4
@dev_attr_min_microvolts = common dso_local global i32 0, align 4
@dev_attr_max_microvolts = common dso_local global i32 0, align 4
@dev_attr_min_microamps = common dso_local global i32 0, align 4
@dev_attr_max_microamps = common dso_local global i32 0, align 4
@dev_attr_suspend_standby_state = common dso_local global i32 0, align 4
@dev_attr_suspend_mem_state = common dso_local global i32 0, align 4
@dev_attr_suspend_disk_state = common dso_local global i32 0, align 4
@dev_attr_suspend_standby_microvolts = common dso_local global i32 0, align 4
@dev_attr_suspend_mem_microvolts = common dso_local global i32 0, align 4
@dev_attr_suspend_disk_microvolts = common dso_local global i32 0, align 4
@dev_attr_suspend_standby_mode = common dso_local global i32 0, align 4
@dev_attr_suspend_mem_mode = common dso_local global i32 0, align 4
@dev_attr_suspend_disk_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @add_regulator_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_regulator_attributes(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regulator_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.regulator_ops*, %struct.regulator_ops** %12, align 8
  store %struct.regulator_ops* %13, %struct.regulator_ops** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %15 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @device_create_file(%struct.device* %19, i32* @dev_attr_microvolts)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %230

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %28 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @device_create_file(%struct.device* %32, i32* @dev_attr_microamps)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %230

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %41 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @device_create_file(%struct.device* %45, i32* @dev_attr_opmode)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %230

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %54 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @device_create_file(%struct.device* %58, i32* @dev_attr_state)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %230

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %67 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @device_create_file(%struct.device* %71, i32* @dev_attr_status)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %230

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %80 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REGULATOR_CURRENT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @device_create_file(%struct.device* %87, i32* @dev_attr_requested_microamps)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %230

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %96 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %230

101:                                              ; preds = %94
  %102 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %103 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @device_create_file(%struct.device* %107, i32* @dev_attr_min_microvolts)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %230

113:                                              ; preds = %106
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @device_create_file(%struct.device* %114, i32* @dev_attr_max_microvolts)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %230

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %123 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @device_create_file(%struct.device* %127, i32* @dev_attr_min_microamps)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %230

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @device_create_file(%struct.device* %134, i32* @dev_attr_max_microamps)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %230

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %121
  %142 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %143 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %148 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146, %141
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %230

153:                                              ; preds = %146
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @device_create_file(%struct.device* %154, i32* @dev_attr_suspend_standby_state)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %230

160:                                              ; preds = %153
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32 @device_create_file(%struct.device* %161, i32* @dev_attr_suspend_mem_state)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %230

167:                                              ; preds = %160
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = call i32 @device_create_file(%struct.device* %168, i32* @dev_attr_suspend_disk_state)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %230

174:                                              ; preds = %167
  %175 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %176 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %174
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 @device_create_file(%struct.device* %180, i32* @dev_attr_suspend_standby_microvolts)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %230

186:                                              ; preds = %179
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = call i32 @device_create_file(%struct.device* %187, i32* @dev_attr_suspend_mem_microvolts)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %230

193:                                              ; preds = %186
  %194 = load %struct.device*, %struct.device** %4, align 8
  %195 = call i32 @device_create_file(%struct.device* %194, i32* @dev_attr_suspend_disk_microvolts)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %230

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %174
  %202 = load %struct.regulator_ops*, %struct.regulator_ops** %5, align 8
  %203 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = call i32 @device_create_file(%struct.device* %207, i32* @dev_attr_suspend_standby_mode)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %230

213:                                              ; preds = %206
  %214 = load %struct.device*, %struct.device** %4, align 8
  %215 = call i32 @device_create_file(%struct.device* %214, i32* @dev_attr_suspend_mem_mode)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %2, align 4
  br label %230

220:                                              ; preds = %213
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = call i32 @device_create_file(%struct.device* %221, i32* @dev_attr_suspend_disk_mode)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %230

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %201
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %228, %225, %218, %211, %198, %191, %184, %172, %165, %158, %151, %138, %131, %118, %111, %99, %91, %75, %62, %49, %36, %23
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
