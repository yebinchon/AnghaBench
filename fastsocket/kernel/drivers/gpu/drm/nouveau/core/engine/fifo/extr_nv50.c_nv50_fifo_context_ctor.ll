; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv50.c_nv50_fifo_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_fifo_base = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NVOBJ_FLAG_HEAP = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_fifo_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_fifo_base*, align 8
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
  %19 = load i32, i32* @NVOBJ_FLAG_HEAP, align 4
  %20 = call i32 @nouveau_fifo_context_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32* null, i32 65536, i32 4096, i32 %19, %struct.nv50_fifo_base** %14)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %22 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_base* %21)
  %23 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %22, %struct.nouveau_object** %23, align 8
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %79

28:                                               ; preds = %6
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %30 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %31 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_base* %30)
  %32 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %33 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %34 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %33, i32 0, i32 3
  %35 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %29, %struct.nouveau_object* %31, i32 512, i32 4096, i32 %32, i32* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %7, align 4
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %42 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %43 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_base* %42)
  %44 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %45 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %46 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %45, i32 0, i32 2
  %47 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %41, %struct.nouveau_object* %43, i32 4608, i32 0, i32 %44, i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %79

52:                                               ; preds = %40
  %53 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %54 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %55 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_base* %54)
  %56 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %57 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %56, i32 0, i32 0
  %58 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %53, %struct.nouveau_object* %55, i32 16384, i32 0, i32 0, i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %7, align 4
  br label %79

63:                                               ; preds = %52
  %64 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %65 = call %struct.TYPE_2__* @nouveau_client(%struct.nouveau_object* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %69 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %68, i32 0, i32 1
  %70 = load %struct.nv50_fifo_base*, %struct.nv50_fifo_base** %14, align 8
  %71 = getelementptr inbounds %struct.nv50_fifo_base, %struct.nv50_fifo_base* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nouveau_vm_ref(i32 %67, i32* %69, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %7, align 4
  br label %79

78:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %76, %61, %50, %38, %26
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @nouveau_fifo_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nv50_fifo_base**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fifo_base*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_vm_ref(i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @nouveau_client(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
