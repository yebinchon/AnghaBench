; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_nouveau_dp_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_nouveau_dp_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_disp = type { i32 }
%struct.nouveau_dp_func = type { i32 }
%struct.dcb_output = type { i32, i32, i64, i32, i32 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c = type { i32 (%struct.nouveau_i2c*, i32)*, i32 (%struct.nouveau_i2c*, i32)* }
%struct.dp_state = type { i32, i32*, i32, i32, i32, i32, i32, i32, %struct.dcb_output*, %struct.nouveau_dp_func*, %struct.nouveau_disp* }

@__const.nouveau_dp_train.bw_list = private unnamed_addr constant [3 x i32] [i32 270000, i32 162000, i32 0], align 4
@.str = private unnamed_addr constant [21 x i8] c"bios data not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no aux channel?!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to read DPCD\0A\00", align 1
@DPCD_RC02_MAX_LANE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dp_train(%struct.nouveau_disp* %0, %struct.nouveau_dp_func* %1, %struct.dcb_output* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_disp*, align 8
  %8 = alloca %struct.nouveau_dp_func*, align 8
  %9 = alloca %struct.dcb_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_bios*, align 8
  %13 = alloca %struct.nouveau_i2c*, align 8
  %14 = alloca %struct.dp_state, align 8
  %15 = alloca %struct.dp_state*, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nouveau_disp* %0, %struct.nouveau_disp** %7, align 8
  store %struct.nouveau_dp_func* %1, %struct.nouveau_dp_func** %8, align 8
  store %struct.dcb_output* %2, %struct.dcb_output** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.nouveau_disp*, %struct.nouveau_disp** %7, align 8
  %24 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp* %23)
  store %struct.nouveau_bios* %24, %struct.nouveau_bios** %12, align 8
  %25 = load %struct.nouveau_disp*, %struct.nouveau_disp** %7, align 8
  %26 = call %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_disp* %25)
  store %struct.nouveau_i2c* %26, %struct.nouveau_i2c** %13, align 8
  %27 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 6
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 7
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 8
  %37 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  store %struct.dcb_output* %37, %struct.dcb_output** %36, align 8
  %38 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 9
  %39 = load %struct.nouveau_dp_func*, %struct.nouveau_dp_func** %8, align 8
  store %struct.nouveau_dp_func* %39, %struct.nouveau_dp_func** %38, align 8
  %40 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %14, i32 0, i32 10
  %41 = load %struct.nouveau_disp*, %struct.nouveau_disp** %7, align 8
  store %struct.nouveau_disp* %41, %struct.nouveau_disp** %40, align 8
  store %struct.dp_state* %14, %struct.dp_state** %15, align 8
  %42 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast ([3 x i32]* @__const.nouveau_dp_train.bw_list to i8*), i64 12, i1 false)
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32* %43, i32** %17, align 8
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  %45 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %46 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %49 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %52 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %51, i32 0, i32 7
  %53 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %54 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %53, i32 0, i32 6
  %55 = call i32 @nvbios_dpout_match(%struct.nouveau_bios* %44, i32 %47, i32 %50, i32* %52, i32* %18, i32* %19, i32* %20, i32* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %5
  %59 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %221

62:                                               ; preds = %5
  %63 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %64 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %13, align 8
  %69 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %68, i32 0, i32 1
  %70 = load i32 (%struct.nouveau_i2c*, i32)*, i32 (%struct.nouveau_i2c*, i32)** %69, align 8
  %71 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %13, align 8
  %72 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %73 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NV_I2C_TYPE_EXTAUX(i32 %74)
  %76 = call i32 %70(%struct.nouveau_i2c* %71, i32 %75)
  %77 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %78 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %91

79:                                               ; preds = %62
  %80 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %13, align 8
  %81 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %80, i32 0, i32 0
  %82 = load i32 (%struct.nouveau_i2c*, i32)*, i32 (%struct.nouveau_i2c*, i32)** %81, align 8
  %83 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %13, align 8
  %84 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %85 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @NV_I2C_TYPE_DCBI2C(i32 %86)
  %88 = call i32 %82(%struct.nouveau_i2c* %83, i32 %87)
  %89 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %90 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %67
  %92 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %93 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %221

100:                                              ; preds = %91
  %101 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %102 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %105 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @nv_rdaux(i32 %103, i32 0, i32* %106, i32 8)
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %22, align 4
  store i32 %112, i32* %6, align 4
  br label %221

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = sdiv i32 %114, 8
  %116 = mul nsw i32 %115, 10
  store i32 %116, i32* %11, align 4
  %117 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %118 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %119 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = call i32 @dp_link_train_init(%struct.dp_state* %117, i32 %123)
  br label %125

125:                                              ; preds = %135, %113
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %129 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 27000
  %134 = icmp sgt i32 %127, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load i32*, i32** %17, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %17, align 8
  br label %125

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %213, %138
  %140 = load i32*, i32** %17, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %216

144:                                              ; preds = %139
  %145 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %146 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @DPCD_RC02_MAX_LANE_COUNT, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %153 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %165, %144
  %155 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %156 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 1
  %159 = load i32*, i32** %17, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %158, %161
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %167 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = ashr i32 %168, 1
  store i32 %169, i32* %167, align 8
  br label %154

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %181, %170
  %172 = load i32*, i32** %17, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %176 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = load i32, i32* %11, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load i32*, i32** %17, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %17, align 8
  br label %171

184:                                              ; preds = %171
  %185 = load i32*, i32** %17, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %189 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %191 = call i32 @dp_set_link_config(%struct.dp_state* %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %184
  %195 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %196 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @memset(i32 %197, i32 0, i32 4)
  %199 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %200 = call i32 @dp_link_train_cr(%struct.dp_state* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %194
  %203 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %204 = call i32 @dp_link_train_eq(%struct.dp_state* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %202
  br label %216

207:                                              ; preds = %202, %194
  br label %213

208:                                              ; preds = %184
  %209 = load i32, i32* %22, align 4
  %210 = icmp sge i32 %209, 1
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %216

212:                                              ; preds = %208
  br label %213

213:                                              ; preds = %212, %207
  %214 = load i32*, i32** %17, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %17, align 8
  br label %139

216:                                              ; preds = %211, %206, %139
  %217 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %218 = call i32 @dp_set_training_pattern(%struct.dp_state* %217, i32 0)
  %219 = load %struct.dp_state*, %struct.dp_state** %15, align 8
  %220 = call i32 @dp_link_train_fini(%struct.dp_state* %219)
  store i32 1, i32* %6, align 4
  br label %221

221:                                              ; preds = %216, %110, %96, %58
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_disp*) #1

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_disp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nvbios_dpout_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @NV_I2C_TYPE_EXTAUX(i32) #1

declare dso_local i32 @NV_I2C_TYPE_DCBI2C(i32) #1

declare dso_local i32 @nv_rdaux(i32, i32, i32*, i32) #1

declare dso_local i32 @dp_link_train_init(%struct.dp_state*, i32) #1

declare dso_local i32 @dp_set_link_config(%struct.dp_state*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dp_link_train_cr(%struct.dp_state*) #1

declare dso_local i32 @dp_link_train_eq(%struct.dp_state*) #1

declare dso_local i32 @dp_set_training_pattern(%struct.dp_state*, i32) #1

declare dso_local i32 @dp_link_train_fini(%struct.dp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
