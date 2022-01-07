; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instobj_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_instmem_priv = type { i32 }
%struct.nv04_instobj_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_instobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_instobj_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_instmem_priv*, align 8
  %15 = alloca %struct.nv04_instobj_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %19 = bitcast %struct.nouveau_object* %18 to i8*
  %20 = bitcast i8* %19 to %struct.nv04_instmem_priv*
  store %struct.nv04_instmem_priv* %20, %struct.nv04_instmem_priv** %14, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 1, i32* %17, align 4
  br label %27

27:                                               ; preds = %26, %6
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %30 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %31 = call i32 @nouveau_instobj_create(%struct.nouveau_object* %28, %struct.nouveau_object* %29, %struct.nouveau_oclass* %30, %struct.nv04_instobj_priv** %15)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %33 = call %struct.nouveau_object* @nv_object(%struct.nv04_instobj_priv* %32)
  %34 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %33, %struct.nouveau_object** %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %69

39:                                               ; preds = %27
  %40 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %46 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %45, i32 0, i32 0
  %47 = call i32 @nouveau_mm_head(i32* %41, i32 1, i32 %42, i32 %43, i32 %44, %struct.TYPE_4__** %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %7, align 4
  br label %69

52:                                               ; preds = %39
  %53 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %54 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %59 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %62 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %15, align 8
  %67 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %52, %50, %37
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @nouveau_instobj_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv04_instobj_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_instobj_priv*) #1

declare dso_local i32 @nouveau_mm_head(i32*, i32, i32, i32, i32, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
