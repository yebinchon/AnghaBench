; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv31_mpeg_priv = type { i32 }
%struct.nv31_mpeg_chan = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv31_mpeg_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv31_mpeg_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv31_mpeg_priv*, align 8
  %15 = alloca %struct.nv31_mpeg_chan*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv31_mpeg_priv*
  store %struct.nv31_mpeg_priv* %19, %struct.nv31_mpeg_priv** %14, align 8
  %20 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %14, align 8
  %21 = getelementptr inbounds %struct.nv31_mpeg_priv, %struct.nv31_mpeg_priv* %20, i32 0, i32 0
  %22 = call i32 @atomic_add_unless(i32* %21, i32 1, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %6
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %30 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %31 = call i32 @nouveau_object_create(%struct.nouveau_object* %28, %struct.nouveau_object* %29, %struct.nouveau_oclass* %30, i32 0, %struct.nv31_mpeg_chan** %15)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %15, align 8
  %33 = call %struct.nouveau_object* @nv_object(%struct.nv31_mpeg_chan* %32)
  %34 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %33, %struct.nouveau_object** %34, align 8
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %37, %24
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @nouveau_object_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nv31_mpeg_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv31_mpeg_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
