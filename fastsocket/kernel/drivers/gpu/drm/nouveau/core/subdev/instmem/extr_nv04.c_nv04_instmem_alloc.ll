; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_instmem = type { i32 }
%struct.nouveau_object = type { i32 }
%struct.nv04_instmem_priv = type { i32 }

@nv04_instobj_oclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_instmem_alloc(%struct.nouveau_instmem* %0, %struct.nouveau_object* %1, i64 %2, i64 %3, %struct.nouveau_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_instmem*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nouveau_object**, align 8
  %12 = alloca %struct.nouveau_object*, align 8
  %13 = alloca %struct.nv04_instmem_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_instmem* %0, %struct.nouveau_instmem** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.nouveau_object** %4, %struct.nouveau_object*** %11, align 8
  %15 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %7, align 8
  %16 = call %struct.nouveau_object* @nv_object(%struct.nouveau_instmem* %15)
  store %struct.nouveau_object* %16, %struct.nouveau_object** %12, align 8
  %17 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %7, align 8
  %18 = bitcast %struct.nouveau_instmem* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv04_instmem_priv*
  store %struct.nv04_instmem_priv* %19, %struct.nv04_instmem_priv** %13, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.nouveau_object**, %struct.nouveau_object*** %11, align 8
  %26 = call i32 @nouveau_object_ctor(%struct.nouveau_object* %20, %struct.nouveau_object* %21, i32* @nv04_instobj_oclass, i8* %23, i64 %24, %struct.nouveau_object** %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %45

31:                                               ; preds = %5
  %32 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %13, align 8
  %33 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %42 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %41, i32 0, i32 0
  %43 = call i32 @atomic_dec(i32* %42)
  br label %44

44:                                               ; preds = %40, %31
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_instmem*) #1

declare dso_local i32 @nouveau_object_ctor(%struct.nouveau_object*, %struct.nouveau_object*, i32*, i8*, i64, %struct.nouveau_object**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
