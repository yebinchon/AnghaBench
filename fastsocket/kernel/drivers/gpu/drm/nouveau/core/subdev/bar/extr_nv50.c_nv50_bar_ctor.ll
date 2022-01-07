; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32, i32 }
%struct.nouveau_vm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.nv50_bar_priv** }
%struct.nv50_bar_priv = type { i32, %struct.TYPE_4__, %struct.nv50_bar_priv*, %struct.nv50_bar_priv*, %struct.nouveau_vm*, %struct.nv50_bar_priv*, %struct.nouveau_vm*, %struct.nv50_bar_priv*, %struct.nv50_bar_priv* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@NVOBJ_FLAG_HEAP = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@nouveau_bar_alloc = common dso_local global i32 0, align 4
@nv50_bar_kmap = common dso_local global i32 0, align 4
@nv50_bar_umap = common dso_local global i32 0, align 4
@nv50_bar_unmap = common dso_local global i32 0, align 4
@nv50_bar_flush = common dso_local global i32 0, align 4
@nv84_bar_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_bar_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_bar_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nouveau_object*, align 8
  %16 = alloca %struct.nouveau_vm*, align 8
  %17 = alloca %struct.nv50_bar_priv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %22 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %21)
  store %struct.nouveau_device* %22, %struct.nouveau_device** %14, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %25 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %26 = call i32 @nouveau_bar_create(%struct.nouveau_object* %23, %struct.nouveau_object* %24, %struct.nouveau_oclass* %25, %struct.nv50_bar_priv** %17)
  store i32 %26, i32* %20, align 4
  %27 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %28 = call %struct.nouveau_object* @nv_object(%struct.nv50_bar_priv* %27)
  %29 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %28, %struct.nouveau_object** %29, align 8
  %30 = load i32, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %7, align 4
  br label %285

34:                                               ; preds = %6
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %36 = load i32, i32* @NVOBJ_FLAG_HEAP, align 4
  %37 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %38 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %37, i32 0, i32 8
  %39 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %35, %struct.nouveau_object* null, i32 131072, i32 0, i32 %36, %struct.nv50_bar_priv** %38)
  store i32 %39, i32* %20, align 4
  %40 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %41 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %40, i32 0, i32 8
  %42 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %41, align 8
  %43 = call %struct.nouveau_object* @nv_object(%struct.nv50_bar_priv* %42)
  store %struct.nouveau_object* %43, %struct.nouveau_object** %15, align 8
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %7, align 4
  br label %285

48:                                               ; preds = %34
  %49 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %50 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %52 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 80
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 5120, i32 512
  %57 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %58 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %57, i32 0, i32 7
  %59 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %49, %struct.nouveau_object* %50, i32 %56, i32 0, i32 0, %struct.nv50_bar_priv** %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %20, align 4
  store i32 %63, i32* %7, align 4
  br label %285

64:                                               ; preds = %48
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %66 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  %67 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %68 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %67, i32 0, i32 3
  %69 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %65, %struct.nouveau_object* %66, i32 16384, i32 0, i32 0, %struct.nv50_bar_priv** %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %7, align 4
  br label %285

74:                                               ; preds = %64
  store i32 0, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %77 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pci_resource_len(i32 %78, i32 3)
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %19, align 4
  %81 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @nouveau_vm_new(%struct.nouveau_device* %81, i32 %82, i32 %83, i32 %84, %struct.nouveau_vm** %16)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* %20, align 4
  store i32 %89, i32* %7, align 4
  br label %285

90:                                               ; preds = %74
  %91 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %92 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 %93, %95
  %97 = ashr i32 %96, 12
  %98 = mul nsw i32 %97, 8
  %99 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %100 = load %struct.nouveau_vm*, %struct.nouveau_vm** %16, align 8
  %101 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.nv50_bar_priv**, %struct.nv50_bar_priv*** %104, align 8
  %106 = getelementptr inbounds %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %105, i64 0
  %107 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %91, %struct.nouveau_object* %92, i32 %98, i32 4096, i32 %99, %struct.nv50_bar_priv** %106)
  store i32 %107, i32* %20, align 4
  %108 = load %struct.nouveau_vm*, %struct.nouveau_vm** %16, align 8
  %109 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %90
  %118 = load i32, i32* %20, align 4
  store i32 %118, i32* %7, align 4
  br label %285

119:                                              ; preds = %90
  %120 = load %struct.nouveau_vm*, %struct.nouveau_vm** %16, align 8
  %121 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %122 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %121, i32 0, i32 6
  %123 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %124 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %123, i32 0, i32 3
  %125 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %124, align 8
  %126 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* %120, %struct.nouveau_vm** %122, %struct.nv50_bar_priv* %125)
  store i32 %126, i32* %20, align 4
  %127 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* null, %struct.nouveau_vm** %16, %struct.nv50_bar_priv* null)
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %20, align 4
  store i32 %131, i32* %7, align 4
  br label %285

132:                                              ; preds = %119
  %133 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %134 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  %135 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %136 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %135, i32 0, i32 5
  %137 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %133, %struct.nouveau_object* %134, i32 24, i32 16, i32 0, %struct.nv50_bar_priv** %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %20, align 4
  store i32 %141, i32* %7, align 4
  br label %285

142:                                              ; preds = %132
  %143 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %144 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %143, i32 0, i32 5
  %145 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %144, align 8
  %146 = call i32 @nv_wo32(%struct.nv50_bar_priv* %145, i32 0, i32 2143289344)
  %147 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %148 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %147, i32 0, i32 5
  %149 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @lower_32_bits(i32 %150)
  %152 = call i32 @nv_wo32(%struct.nv50_bar_priv* %149, i32 4, i32 %151)
  %153 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %154 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %153, i32 0, i32 5
  %155 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @lower_32_bits(i32 %156)
  %158 = call i32 @nv_wo32(%struct.nv50_bar_priv* %155, i32 8, i32 %157)
  %159 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %160 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %159, i32 0, i32 5
  %161 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @upper_32_bits(i32 %162)
  %164 = shl i32 %163, 24
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @upper_32_bits(i32 %165)
  %167 = or i32 %164, %166
  %168 = call i32 @nv_wo32(%struct.nv50_bar_priv* %161, i32 12, i32 %167)
  %169 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %170 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %169, i32 0, i32 5
  %171 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %170, align 8
  %172 = call i32 @nv_wo32(%struct.nv50_bar_priv* %171, i32 16, i32 0)
  %173 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %174 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %173, i32 0, i32 5
  %175 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %174, align 8
  %176 = call i32 @nv_wo32(%struct.nv50_bar_priv* %175, i32 20, i32 0)
  store i32 0, i32* %18, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %179 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @pci_resource_len(i32 %180, i32 1)
  %182 = add nsw i32 %177, %181
  store i32 %182, i32* %19, align 4
  %183 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @nouveau_vm_new(%struct.nouveau_device* %183, i32 %184, i32 %185, i32 %187, %struct.nouveau_vm** %16)
  store i32 %188, i32* %20, align 4
  %189 = load i32, i32* %20, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %142
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %7, align 4
  br label %285

193:                                              ; preds = %142
  %194 = load %struct.nouveau_vm*, %struct.nouveau_vm** %16, align 8
  %195 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %196 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %195, i32 0, i32 4
  %197 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %198 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %197, i32 0, i32 3
  %199 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %198, align 8
  %200 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* %194, %struct.nouveau_vm** %196, %struct.nv50_bar_priv* %199)
  store i32 %200, i32* %20, align 4
  %201 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* null, %struct.nouveau_vm** %16, %struct.nv50_bar_priv* null)
  %202 = load i32, i32* %20, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* %20, align 4
  store i32 %205, i32* %7, align 4
  br label %285

206:                                              ; preds = %193
  %207 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %208 = load %struct.nouveau_object*, %struct.nouveau_object** %15, align 8
  %209 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %210 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %209, i32 0, i32 2
  %211 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %207, %struct.nouveau_object* %208, i32 24, i32 16, i32 0, %struct.nv50_bar_priv** %210)
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %20, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %20, align 4
  store i32 %215, i32* %7, align 4
  br label %285

216:                                              ; preds = %206
  %217 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %218 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %217, i32 0, i32 2
  %219 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %218, align 8
  %220 = call i32 @nv_wo32(%struct.nv50_bar_priv* %219, i32 0, i32 2143289344)
  %221 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %222 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %221, i32 0, i32 2
  %223 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %222, align 8
  %224 = load i32, i32* %19, align 4
  %225 = call i32 @lower_32_bits(i32 %224)
  %226 = call i32 @nv_wo32(%struct.nv50_bar_priv* %223, i32 4, i32 %225)
  %227 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %228 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %227, i32 0, i32 2
  %229 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %228, align 8
  %230 = load i32, i32* %18, align 4
  %231 = call i32 @lower_32_bits(i32 %230)
  %232 = call i32 @nv_wo32(%struct.nv50_bar_priv* %229, i32 8, i32 %231)
  %233 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %234 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %233, i32 0, i32 2
  %235 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %234, align 8
  %236 = load i32, i32* %19, align 4
  %237 = call i32 @upper_32_bits(i32 %236)
  %238 = shl i32 %237, 24
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @upper_32_bits(i32 %239)
  %241 = or i32 %238, %240
  %242 = call i32 @nv_wo32(%struct.nv50_bar_priv* %235, i32 12, i32 %241)
  %243 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %244 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %243, i32 0, i32 2
  %245 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %244, align 8
  %246 = call i32 @nv_wo32(%struct.nv50_bar_priv* %245, i32 16, i32 0)
  %247 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %248 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %247, i32 0, i32 2
  %249 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %248, align 8
  %250 = call i32 @nv_wo32(%struct.nv50_bar_priv* %249, i32 20, i32 0)
  %251 = load i32, i32* @nouveau_bar_alloc, align 4
  %252 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %253 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  store i32 %251, i32* %254, align 4
  %255 = load i32, i32* @nv50_bar_kmap, align 4
  %256 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %257 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* @nv50_bar_umap, align 4
  %260 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %261 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  store i32 %259, i32* %262, align 4
  %263 = load i32, i32* @nv50_bar_unmap, align 4
  %264 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %265 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %268 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 80
  br i1 %270, label %271, label %276

271:                                              ; preds = %216
  %272 = load i32, i32* @nv50_bar_flush, align 4
  %273 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %274 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 4
  br label %281

276:                                              ; preds = %216
  %277 = load i32, i32* @nv84_bar_flush, align 4
  %278 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %279 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 4
  br label %281

281:                                              ; preds = %276, %271
  %282 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %17, align 8
  %283 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %282, i32 0, i32 0
  %284 = call i32 @spin_lock_init(i32* %283)
  store i32 0, i32* %7, align 4
  br label %285

285:                                              ; preds = %281, %214, %204, %191, %140, %130, %117, %88, %72, %62, %46, %32
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_bar_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv50_bar_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_bar_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32, %struct.nv50_bar_priv**) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @nouveau_vm_new(%struct.nouveau_device*, i32, i32, i32, %struct.nouveau_vm**) #1

declare dso_local i32 @nouveau_vm_ref(%struct.nouveau_vm*, %struct.nouveau_vm**, %struct.nv50_bar_priv*) #1

declare dso_local i32 @nv_wo32(%struct.nv50_bar_priv*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
