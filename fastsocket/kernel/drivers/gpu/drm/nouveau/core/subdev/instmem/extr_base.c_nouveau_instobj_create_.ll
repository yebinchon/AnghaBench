; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_base.c_nouveau_instobj_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_base.c_nouveau_instobj_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_instmem = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_instobj = type { i32 }

@NV_MEMOBJ_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_instobj_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_oclass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.nouveau_instmem*, align 8
  %13 = alloca %struct.nouveau_instobj*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %16 = bitcast %struct.nouveau_object* %15 to i8*
  %17 = bitcast i8* %16 to %struct.nouveau_instmem*
  store %struct.nouveau_instmem* %17, %struct.nouveau_instmem** %12, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %9, align 8
  %21 = load i32, i32* @NV_MEMOBJ_CLASS, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i8**, i8*** %11, align 8
  %24 = call i32 @nouveau_object_create_(%struct.nouveau_object* %18, %struct.nouveau_object* %19, %struct.nouveau_oclass* %20, i32 %21, i32 %22, i8** %23)
  store i32 %24, i32* %14, align 4
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.nouveau_instobj*
  store %struct.nouveau_instobj* %27, %struct.nouveau_instobj** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %46

32:                                               ; preds = %5
  %33 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %12, align 8
  %34 = getelementptr inbounds %struct.nouveau_instmem, %struct.nouveau_instmem* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.nouveau_instobj*, %struct.nouveau_instobj** %13, align 8
  %38 = getelementptr inbounds %struct.nouveau_instobj, %struct.nouveau_instobj* %37, i32 0, i32 0
  %39 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %12, align 8
  %40 = getelementptr inbounds %struct.nouveau_instmem, %struct.nouveau_instmem* %39, i32 0, i32 1
  %41 = call i32 @list_add(i32* %38, i32* %40)
  %42 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %12, align 8
  %43 = getelementptr inbounds %struct.nouveau_instmem, %struct.nouveau_instmem* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %32, %30
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
