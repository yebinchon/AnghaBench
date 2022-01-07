; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.nvc0_bar_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.nouveau_gpuobj*, %struct.nouveau_vm*, %struct.nouveau_gpuobj* }
%struct.nouveau_vm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@nouveau_bar_alloc = common dso_local global i32 0, align 4
@nvc0_bar_kmap = common dso_local global i32 0, align 4
@nvc0_bar_umap = common dso_local global i32 0, align 4
@nvc0_bar_unmap = common dso_local global i32 0, align 4
@nv84_bar_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_bar_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bar_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca %struct.nvc0_bar_priv*, align 8
  %17 = alloca %struct.nouveau_gpuobj*, align 8
  %18 = alloca %struct.nouveau_vm*, align 8
  %19 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %20)
  store %struct.nouveau_device* %21, %struct.nouveau_device** %14, align 8
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %23 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %15, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %28 = call i32 @nouveau_bar_create(%struct.nouveau_object* %25, %struct.nouveau_object* %26, %struct.nouveau_oclass* %27, %struct.nvc0_bar_priv** %16)
  store i32 %28, i32* %19, align 4
  %29 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %30 = call %struct.nouveau_object* @nv_object(%struct.nvc0_bar_priv* %29)
  %31 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %30, %struct.nouveau_object** %31, align 8
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %19, align 4
  store i32 %35, i32* %7, align 4
  br label %270

36:                                               ; preds = %6
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %38 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %39 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %37, i32* null, i32 4096, i32 0, i32 0, %struct.nouveau_gpuobj** %42)
  store i32 %43, i32* %19, align 4
  %44 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %45 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %48, align 8
  store %struct.nouveau_gpuobj* %49, %struct.nouveau_gpuobj** %17, align 8
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %7, align 4
  br label %270

54:                                               ; preds = %36
  %55 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %56 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %57 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %55, i32* null, i32 32768, i32 0, i32 0, %struct.nouveau_gpuobj** %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %19, align 4
  store i32 %65, i32* %7, align 4
  br label %270

66:                                               ; preds = %54
  %67 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %69 = call i32 @pci_resource_len(%struct.pci_dev* %68, i32 3)
  %70 = call i32 @nouveau_vm_new(%struct.nouveau_device* %67, i32 0, i32 %69, i32 0, %struct.nouveau_vm** %18)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %7, align 4
  br label %270

75:                                               ; preds = %66
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %78 = call i32 @pci_resource_len(%struct.pci_dev* %77, i32 3)
  %79 = ashr i32 %78, 12
  %80 = mul nsw i32 %79, 8
  %81 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %82 = load %struct.nouveau_vm*, %struct.nouveau_vm** %18, align 8
  %83 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %86, align 8
  %88 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %87, i64 0
  %89 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %76, i32* null, i32 %80, i32 4096, i32 %81, %struct.nouveau_gpuobj** %88)
  store i32 %89, i32* %19, align 4
  %90 = load %struct.nouveau_vm*, %struct.nouveau_vm** %18, align 8
  %91 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %75
  %100 = load i32, i32* %19, align 4
  store i32 %100, i32* %7, align 4
  br label %270

101:                                              ; preds = %75
  %102 = load %struct.nouveau_vm*, %struct.nouveau_vm** %18, align 8
  %103 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %104 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %109 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %112, align 8
  %114 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* %102, %struct.nouveau_vm** %107, %struct.nouveau_gpuobj* %113)
  store i32 %114, i32* %19, align 4
  %115 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* null, %struct.nouveau_vm** %18, %struct.nouveau_gpuobj* null)
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %19, align 4
  store i32 %119, i32* %7, align 4
  br label %270

120:                                              ; preds = %101
  %121 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %122 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %123 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %126, align 8
  %128 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @lower_32_bits(i32 %129)
  %131 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %121, i32 512, i32 %130)
  %132 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %133 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %134 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %137, align 8
  %139 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @upper_32_bits(i32 %140)
  %142 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %132, i32 516, i32 %141)
  %143 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %144 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %145 = call i32 @pci_resource_len(%struct.pci_dev* %144, i32 3)
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @lower_32_bits(i32 %146)
  %148 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %143, i32 520, i32 %147)
  %149 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %150 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %151 = call i32 @pci_resource_len(%struct.pci_dev* %150, i32 3)
  %152 = sub nsw i32 %151, 1
  %153 = call i32 @upper_32_bits(i32 %152)
  %154 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %149, i32 524, i32 %153)
  %155 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %156 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %157 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %155, i32* null, i32 4096, i32 0, i32 0, %struct.nouveau_gpuobj** %160)
  store i32 %161, i32* %19, align 4
  %162 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %163 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %162, i32 0, i32 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %166, align 8
  store %struct.nouveau_gpuobj* %167, %struct.nouveau_gpuobj** %17, align 8
  %168 = load i32, i32* %19, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %120
  %171 = load i32, i32* %19, align 4
  store i32 %171, i32* %7, align 4
  br label %270

172:                                              ; preds = %120
  %173 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %174 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %175 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %173, i32* null, i32 32768, i32 0, i32 0, %struct.nouveau_gpuobj** %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i32, i32* %19, align 4
  store i32 %183, i32* %7, align 4
  br label %270

184:                                              ; preds = %172
  %185 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %186 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %187 = call i32 @pci_resource_len(%struct.pci_dev* %186, i32 1)
  %188 = call i32 @nouveau_vm_new(%struct.nouveau_device* %185, i32 0, i32 %187, i32 0, %struct.nouveau_vm** %18)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %7, align 4
  br label %270

193:                                              ; preds = %184
  %194 = load %struct.nouveau_vm*, %struct.nouveau_vm** %18, align 8
  %195 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %196 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %195, i32 0, i32 2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %201 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %200, i32 0, i32 2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %204, align 8
  %206 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* %194, %struct.nouveau_vm** %199, %struct.nouveau_gpuobj* %205)
  store i32 %206, i32* %19, align 4
  %207 = call i32 @nouveau_vm_ref(%struct.nouveau_vm* null, %struct.nouveau_vm** %18, %struct.nouveau_gpuobj* null)
  %208 = load i32, i32* %19, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %193
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %7, align 4
  br label %270

212:                                              ; preds = %193
  %213 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %214 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %215 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %214, i32 0, i32 2
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %218, align 8
  %220 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @lower_32_bits(i32 %221)
  %223 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %213, i32 512, i32 %222)
  %224 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %225 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %226 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %225, i32 0, i32 2
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %229, align 8
  %231 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @upper_32_bits(i32 %232)
  %234 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %224, i32 516, i32 %233)
  %235 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %236 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %237 = call i32 @pci_resource_len(%struct.pci_dev* %236, i32 1)
  %238 = sub nsw i32 %237, 1
  %239 = call i32 @lower_32_bits(i32 %238)
  %240 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %235, i32 520, i32 %239)
  %241 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, align 8
  %242 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %243 = call i32 @pci_resource_len(%struct.pci_dev* %242, i32 1)
  %244 = sub nsw i32 %243, 1
  %245 = call i32 @upper_32_bits(i32 %244)
  %246 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %241, i32 524, i32 %245)
  %247 = load i32, i32* @nouveau_bar_alloc, align 4
  %248 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %249 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* @nvc0_bar_kmap, align 4
  %252 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %253 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  store i32 %251, i32* %254, align 4
  %255 = load i32, i32* @nvc0_bar_umap, align 4
  %256 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %257 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  store i32 %255, i32* %258, align 4
  %259 = load i32, i32* @nvc0_bar_unmap, align 4
  %260 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %261 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 4
  %263 = load i32, i32* @nv84_bar_flush, align 4
  %264 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %265 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 4
  %267 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %16, align 8
  %268 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %267, i32 0, i32 0
  %269 = call i32 @spin_lock_init(i32* %268)
  store i32 0, i32* %7, align 4
  br label %270

270:                                              ; preds = %212, %210, %191, %182, %170, %118, %99, %73, %64, %52, %34
  %271 = load i32, i32* %7, align 4
  ret i32 %271
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_bar_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nvc0_bar_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_bar_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local i32 @nouveau_vm_new(%struct.nouveau_device*, i32, i32, i32, %struct.nouveau_vm**) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @nouveau_vm_ref(%struct.nouveau_vm*, %struct.nouveau_vm**, %struct.nouveau_gpuobj*) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
