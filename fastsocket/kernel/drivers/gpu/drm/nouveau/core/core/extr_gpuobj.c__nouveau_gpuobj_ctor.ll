; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_gpuobj.c__nouveau_gpuobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_gpuobj_class = type { i32, i32, i32, i32 }
%struct.nouveau_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @_nouveau_gpuobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nouveau_gpuobj_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_gpuobj_class*, align 8
  %15 = alloca %struct.nouveau_gpuobj*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.nouveau_gpuobj_class*
  store %struct.nouveau_gpuobj_class* %18, %struct.nouveau_gpuobj_class** %14, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = load %struct.nouveau_gpuobj_class*, %struct.nouveau_gpuobj_class** %14, align 8
  %23 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nouveau_gpuobj_class*, %struct.nouveau_gpuobj_class** %14, align 8
  %26 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nouveau_gpuobj_class*, %struct.nouveau_gpuobj_class** %14, align 8
  %29 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nouveau_gpuobj_class*, %struct.nouveau_gpuobj_class** %14, align 8
  %32 = getelementptr inbounds %struct.nouveau_gpuobj_class, %struct.nouveau_gpuobj_class* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nouveau_gpuobj_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, i32 0, i32 %24, i32 %27, i32 %30, i32 %33, %struct.nouveau_gpuobj** %15)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %15, align 8
  %36 = call %struct.nouveau_object* @nv_object(%struct.nouveau_gpuobj* %35)
  %37 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %36, %struct.nouveau_object** %37, align 8
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %7, align 4
  br label %43

42:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @nouveau_gpuobj_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, i32, i32, %struct.nouveau_gpuobj**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
