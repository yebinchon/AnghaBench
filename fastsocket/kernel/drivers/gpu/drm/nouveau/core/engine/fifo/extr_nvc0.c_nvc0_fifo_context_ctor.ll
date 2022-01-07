; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nvc0_fifo_base = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@NVOBJ_FLAG_HEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_fifo_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nvc0_fifo_base*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %20 = load i32, i32* @NVOBJ_FLAG_HEAP, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @nouveau_fifo_context_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32* null, i32 4096, i32 4096, i32 %21, %struct.nvc0_fifo_base** %14)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %24 = call %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_base* %23)
  %25 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %24, %struct.nouveau_object** %25, align 8
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %7, align 4
  br label %75

30:                                               ; preds = %6
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %32 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %33 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %32, i32 0, i32 0
  %34 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %31, i32* null, i32 65536, i32 4096, i32 0, %struct.TYPE_4__** %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %75

39:                                               ; preds = %30
  %40 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %41 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %42 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %40, i32 512, i32 %46)
  %48 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %49 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %50 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %48, i32 516, i32 %54)
  %56 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %57 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %56, i32 520, i32 -1)
  %58 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %59 = call i32 @nv_wo32(%struct.nvc0_fifo_base* %58, i32 524, i32 255)
  %60 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %61 = call %struct.TYPE_5__* @nouveau_client(%struct.nouveau_object* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %65 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %64, i32 0, i32 1
  %66 = load %struct.nvc0_fifo_base*, %struct.nvc0_fifo_base** %14, align 8
  %67 = getelementptr inbounds %struct.nvc0_fifo_base, %struct.nvc0_fifo_base* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @nouveau_vm_ref(i32 %63, i32* %65, %struct.TYPE_4__* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %39
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %7, align 4
  br label %75

74:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %72, %37, %28
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @nouveau_fifo_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nvc0_fifo_base**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_base*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @nv_wo32(%struct.nvc0_fifo_base*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nouveau_vm_ref(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @nouveau_client(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
