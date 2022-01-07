; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.nvc0_graph_priv = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@nve0_graph_intr = common dso_local global i32 0, align 4
@nve0_graph_cclass = common dso_local global i32 0, align 4
@nve0_graph_sclass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NvGrUseFW\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"using external firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fuc409c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fuc409d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fuc41ac\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fuc41ad\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_graph_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_graph_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
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
  br label %196

35:                                               ; preds = %6
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %37 = call %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 402657280, i32* %38, align 4
  %39 = load i32, i32* @nve0_graph_intr, align 4
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %41 = call %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %44 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32* @nve0_graph_cclass, i32** %45, align 8
  %46 = load i32, i32* @nve0_graph_sclass, align 4
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %48 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %51 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nouveau_boolopt(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %35
  %56 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %57 = call i32 @nv_info(%struct.nvc0_graph_priv* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %59 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %60 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %59, i32 0, i32 11
  %61 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %55
  %64 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %65 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %66 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %65, i32 0, i32 10
  %67 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %71 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %72 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %71, i32 0, i32 9
  %73 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %77 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %78 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %77, i32 0, i32 8
  %79 = call i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %69, %63, %55
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %196

84:                                               ; preds = %75
  %85 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %86 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %35
  %88 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %89 = bitcast %struct.nouveau_object* %88 to %struct.nvc0_graph_priv*
  %90 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %91 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %90, i32 0, i32 7
  %92 = call i32 @nouveau_gpuobj_new(%struct.nvc0_graph_priv* %89, i32* null, i32 4096, i32 256, i32 0, i32* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %7, align 4
  br label %196

97:                                               ; preds = %87
  %98 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %99 = bitcast %struct.nouveau_object* %98 to %struct.nvc0_graph_priv*
  %100 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %101 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %100, i32 0, i32 6
  %102 = call i32 @nouveau_gpuobj_new(%struct.nvc0_graph_priv* %99, i32* null, i32 4096, i32 256, i32 0, i32* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %7, align 4
  br label %196

107:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, i32* %17, align 4
  %110 = icmp slt i32 %109, 4096
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %113 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @nv_wo32(i32 %114, i32 %115, i32 16)
  %117 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %118 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @nv_wo32(i32 %119, i32 %120, i32 16)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 4
  store i32 %124, i32* %17, align 4
  br label %108

125:                                              ; preds = %108
  %126 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %127 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %126, i32 4232708)
  %128 = and i32 %127, 31
  %129 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %130 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %132 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %131, i32 4232708)
  %133 = and i32 %132, 2031616
  %134 = ashr i32 %133, 16
  %135 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %136 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %165, %125
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %140 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %137
  %144 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @GPC_UNIT(i32 %145, i32 9736)
  %147 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %144, i32 %146)
  %148 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %149 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %155 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %162 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %143
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %137

168:                                              ; preds = %137
  %169 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %170 = call %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv* %169)
  %171 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %194 [
    i32 228, label %173
    i32 231, label %191
    i32 230, label %191
  ]

173:                                              ; preds = %168
  %174 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %175 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 8
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %180 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %179, i32 0, i32 5
  store i32 3, i32* %180, align 4
  br label %190

181:                                              ; preds = %173
  %182 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %183 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 7
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %188 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %187, i32 0, i32 5
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %181
  br label %190

190:                                              ; preds = %189, %178
  br label %195

191:                                              ; preds = %168, %168
  %192 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %15, align 8
  %193 = getelementptr inbounds %struct.nvc0_graph_priv, %struct.nvc0_graph_priv* %192, i32 0, i32 5
  store i32 1, i32* %193, align 4
  br label %195

194:                                              ; preds = %168
  br label %195

195:                                              ; preds = %194, %191, %190
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %195, %105, %95, %81, %33
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nouveau_graph_create(%struct.nvc0_graph_priv*, %struct.nvc0_graph_priv*, %struct.nouveau_oclass*, i32, %struct.nvc0_graph_priv**) #1

declare dso_local %struct.nvc0_graph_priv* @nv_object(%struct.nvc0_graph_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nvc0_graph_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nvc0_graph_priv*) #1

declare dso_local i64 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local i32 @nv_info(%struct.nvc0_graph_priv*, i8*) #1

declare dso_local i64 @nvc0_graph_ctor_fw(%struct.nvc0_graph_priv*, i8*, i32*) #1

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
