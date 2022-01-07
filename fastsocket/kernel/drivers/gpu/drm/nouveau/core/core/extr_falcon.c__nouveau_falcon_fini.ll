; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_falcon = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nouveau_falcon_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_falcon*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nouveau_falcon*
  store %struct.nouveau_falcon* %8, %struct.nouveau_falcon** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %12, i32 0, i32 4
  %14 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %13)
  %15 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %16 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %31 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %19, %11
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %36 = call i32 @nv_mo32(%struct.nouveau_falcon* %35, i32 72, i32 3, i32 0)
  %37 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %38 = call i32 @nv_wo32(%struct.nouveau_falcon* %37, i32 20, i32 -1)
  %39 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @nouveau_engine_fini(i32* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @nv_mo32(%struct.nouveau_falcon*, i32, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_falcon*, i32, i32) #1

declare dso_local i32 @nouveau_engine_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
