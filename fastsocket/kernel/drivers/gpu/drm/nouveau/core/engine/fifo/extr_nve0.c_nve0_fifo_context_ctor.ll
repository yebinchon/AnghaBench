; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nve0_fifo_base = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_fifo_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nve0_fifo_base*, align 8
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
  %20 = call i32 @nouveau_fifo_context_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32* null, i32 4096, i32 4096, i32 %19, %struct.nve0_fifo_base** %14)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %22 = call %struct.nouveau_object* @nv_object(%struct.nve0_fifo_base* %21)
  %23 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %22, %struct.nouveau_object** %23, align 8
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %73

28:                                               ; preds = %6
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %30 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %31 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %30, i32 0, i32 0
  %32 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %29, i32* null, i32 65536, i32 4096, i32 0, %struct.TYPE_4__** %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %73

37:                                               ; preds = %28
  %38 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %39 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %40 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @nv_wo32(%struct.nve0_fifo_base* %38, i32 512, i32 %44)
  %46 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %47 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %48 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = call i32 @nv_wo32(%struct.nve0_fifo_base* %46, i32 516, i32 %52)
  %54 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %55 = call i32 @nv_wo32(%struct.nve0_fifo_base* %54, i32 520, i32 -1)
  %56 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %57 = call i32 @nv_wo32(%struct.nve0_fifo_base* %56, i32 524, i32 255)
  %58 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %59 = call %struct.TYPE_5__* @nouveau_client(%struct.nouveau_object* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %63 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %62, i32 0, i32 1
  %64 = load %struct.nve0_fifo_base*, %struct.nve0_fifo_base** %14, align 8
  %65 = getelementptr inbounds %struct.nve0_fifo_base, %struct.nve0_fifo_base* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @nouveau_vm_ref(i32 %61, i32* %63, %struct.TYPE_4__* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %37
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %7, align 4
  br label %73

72:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %70, %35, %26
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @nouveau_fifo_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nve0_fifo_base**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nve0_fifo_base*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @nv_wo32(%struct.nve0_fifo_base*, i32, i32) #1

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
