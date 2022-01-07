; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv50.c_nv50_instobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.TYPE_6__**)* }
%struct.nouveau_fb.0 = type opaque
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.nv50_instobj_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_instobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_instobj_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_fb*, align 8
  %15 = alloca %struct.nv50_instobj_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %19 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object* %18)
  store %struct.nouveau_fb* %19, %struct.nouveau_fb** %14, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 4095
  %25 = and i32 %24, -4096
  %26 = call i32 @max(i32 %25, i32 4096)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %16, align 4
  %28 = add nsw i32 %27, 4095
  %29 = and i32 %28, -4096
  %30 = call i32 @max(i32 %29, i32 4096)
  store i32 %30, i32* %16, align 4
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %33 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %34 = call i32 @nouveau_instobj_create(%struct.nouveau_object* %31, %struct.nouveau_object* %32, %struct.nouveau_oclass* %33, %struct.nv50_instobj_priv** %15)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %36 = call %struct.nouveau_object* @nv_object(%struct.nv50_instobj_priv* %35)
  %37 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %36, %struct.nouveau_object** %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %7, align 4
  br label %80

42:                                               ; preds = %6
  %43 = load %struct.nouveau_fb*, %struct.nouveau_fb** %14, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.TYPE_6__**)*, i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.TYPE_6__**)** %45, align 8
  %47 = load %struct.nouveau_fb*, %struct.nouveau_fb** %14, align 8
  %48 = bitcast %struct.nouveau_fb* %47 to %struct.nouveau_fb.0*
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %52 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %51, i32 0, i32 0
  %53 = call i32 %46(%struct.nouveau_fb.0* %48, i32 %49, i32 %50, i32 0, i32 2048, %struct.TYPE_6__** %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %80

58:                                               ; preds = %42
  %59 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %60 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %65 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %68 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 12
  %73 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %74 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.nv50_instobj_priv*, %struct.nv50_instobj_priv** %15, align 8
  %77 = getelementptr inbounds %struct.nv50_instobj_priv, %struct.nv50_instobj_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 12, i32* %79, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %58, %56, %40
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_object*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nouveau_instobj_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv50_instobj_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_instobj_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
