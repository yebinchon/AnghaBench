; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.nvc0_graph_priv = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@nvc0_graph_intr = common dso_local global i32 0, align 4
@nvc0_graph_cclass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NvGrUseFW\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"using external firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fuc409c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fuc409d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fuc41ac\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fuc41ad\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nvc0_graph_sclass = common dso_local global i32 0, align 4
@nvc1_graph_sclass = common dso_local global i32 0, align 4
@nvc8_graph_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_graph_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_graph_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nvc0_graph_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %19 = bitcast %struct.nouveau_object* %18 to %struct.nvc0_graph_priv*
  %20 = call %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv* %19)
  store %struct.nouveau_device* %20, %struct.nouveau_device** %14, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %22 = bitcast %struct.nouveau_object* %21 to %struct.nvc0_graph_priv*
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %24 = bitcast %struct.nouveau_object* %23 to %struct.nvc0_graph_priv*
  %25 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %26 = call i32 @nouveau_graph_create(%struct.nvc0_graph_priv* %22, %struct.nvc0_graph_priv* %24, %struct.nouveau_oclass* %25, i32 1, %struct.nvc0_graph_priv** %15)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %28 = call %struct.nvc0_graph_priv* @nv_object(%struct.nvc0_graph_priv* %27)
  %29 = bitcast %struct.nvc0_graph_priv* %28 to %struct.nouveau_object*
  %30 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %29, %struct.nouveau_object** %30, align 8
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %236

35:                                               ; preds = %6
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %37 = call %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 402657280, i32* %38, align 4
  %39 = load i32, i32* @nvc0_graph_intr, align 4
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %41 = call %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %44 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32* @nvc0_graph_cclass, i32** %45, align 8
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %47 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nouveau_boolopt(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %35
  %52 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %53 = call i32 @nv_info(%struct.nvc0_graph_priv* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %55 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %56 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %55, i32 0, i32 11
  %57 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %51
  %60 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %61 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %62 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %61, i32 0, i32 10
  %63 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %67 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %68 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %67, i32 0, i32 9
  %69 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %73 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %74 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %73, i32 0, i32 8
  %75 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %65, %59, %51
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %236

80:                                               ; preds = %71
  %81 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %82 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %35
  %84 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %85 = call i32 @nvc0_graph_class(%struct.nvc0_graph_priv* %84)
  switch i32 %85, label %101 [
    i32 37015, label %86
    i32 37271, label %91
    i32 37527, label %96
  ]

86:                                               ; preds = %83
  %87 = load i32, i32* @nvc0_graph_sclass, align 4
  %88 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %89 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %101

91:                                               ; preds = %83
  %92 = load i32, i32* @nvc1_graph_sclass, align 4
  %93 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %94 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %101

96:                                               ; preds = %83
  %97 = load i32, i32* @nvc8_graph_sclass, align 4
  %98 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %99 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %83, %96, %91, %86
  %102 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %103 = bitcast %struct.nouveau_object* %102 to %struct.nvc0_graph_priv*
  %104 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %105 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %104, i32 0, i32 7
  %106 = call i32 @nouveau_gpuobj_new(%struct.nvc0_graph_priv* %103, i32* null, i32 4096, i32 256, i32 0, i32* %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %7, align 4
  br label %236

111:                                              ; preds = %101
  %112 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %113 = bitcast %struct.nouveau_object* %112 to %struct.nvc0_graph_priv*
  %114 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %115 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %114, i32 0, i32 6
  %116 = call i32 @nouveau_gpuobj_new(%struct.nvc0_graph_priv* %113, i32* null, i32 4096, i32 256, i32 0, i32* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %7, align 4
  br label %236

121:                                              ; preds = %111
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i32, i32* %17, align 4
  %124 = icmp slt i32 %123, 4096
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %127 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @nv_wo32(i32 %128, i32 %129, i32 16)
  %131 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %132 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @nv_wo32(i32 %133, i32 %134, i32 16)
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %17, align 4
  br label %122

139:                                              ; preds = %122
  %140 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %141 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %140, i32 4232708)
  %142 = and i32 %141, 2031616
  %143 = ashr i32 %142, 16
  %144 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %145 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %147 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %146, i32 4232708)
  %148 = and i32 %147, 31
  %149 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %150 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %179, %139
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %154 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %151
  %158 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @GPC_UNIT(i32 %159, i32 9736)
  %161 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %158, i32 %160)
  %162 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %163 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %161, i32* %167, align 4
  %168 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %169 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %176 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %157
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %151

182:                                              ; preds = %151
  %183 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %184 = call %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv* %183)
  %185 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %235 [
    i32 192, label %187
    i32 195, label %214
    i32 196, label %217
    i32 193, label %220
    i32 200, label %223
    i32 206, label %226
    i32 207, label %229
    i32 217, label %232
  ]

187:                                              ; preds = %182
  %188 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %189 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 11
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %194 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %193, i32 0, i32 5
  store i32 7, i32* %194, align 4
  br label %213

195:                                              ; preds = %187
  %196 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %197 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 14
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %202 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %201, i32 0, i32 5
  store i32 5, i32* %202, align 4
  br label %212

203:                                              ; preds = %195
  %204 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %205 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 15
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %210 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %209, i32 0, i32 5
  store i32 6, i32* %210, align 4
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %200
  br label %213

213:                                              ; preds = %212, %192
  br label %235

214:                                              ; preds = %182
  %215 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %216 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %215, i32 0, i32 5
  store i32 3, i32* %216, align 4
  br label %235

217:                                              ; preds = %182
  %218 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %219 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %218, i32 0, i32 5
  store i32 1, i32* %219, align 4
  br label %235

220:                                              ; preds = %182
  %221 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %222 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %221, i32 0, i32 5
  store i32 1, i32* %222, align 4
  br label %235

223:                                              ; preds = %182
  %224 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %225 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %224, i32 0, i32 5
  store i32 6, i32* %225, align 4
  br label %235

226:                                              ; preds = %182
  %227 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %228 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %227, i32 0, i32 5
  store i32 3, i32* %228, align 4
  br label %235

229:                                              ; preds = %182
  %230 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %231 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %230, i32 0, i32 5
  store i32 3, i32* %231, align 4
  br label %235

232:                                              ; preds = %182
  %233 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %234 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %233, i32 0, i32 5
  store i32 1, i32* %234, align 4
  br label %235

235:                                              ; preds = %182, %232, %229, %226, %223, %220, %217, %214, %213
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %235, %119, %109, %77, %33
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_graph_create(%struct.nvc0_graph_priv*, %struct.nvc0_graph_priv*, %struct.nouveau_oclass*, i32, %struct.nvc0_graph_priv**) #1

declare dso_local %struct.nvc0_graph_priv* @nv_object(%struct.nvc0_graph_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv*) #1

declare dso_local i64 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local i32 @nv_info(%struct.nvc0_graph_priv*, i8*) #1

declare dso_local i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv*, i8*, i32*) #1

declare dso_local i32 @nvc0_graph_class(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nvc0_graph_priv*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
