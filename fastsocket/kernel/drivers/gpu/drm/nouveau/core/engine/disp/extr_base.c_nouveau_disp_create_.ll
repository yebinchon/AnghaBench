; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_base.c_nouveau_disp_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_base.c_nouveau_disp_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_disp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_disp_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8* %4, i8* %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.nouveau_disp*, align 8
  %19 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %22 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i8**, i8*** %17, align 8
  %27 = call i32 @nouveau_engine_create_(%struct.nouveau_object* %20, %struct.nouveau_object* %21, %struct.nouveau_oclass* %22, i32 1, i8* %23, i8* %24, i32 %25, i8** %26)
  store i32 %27, i32* %19, align 4
  %28 = load i8**, i8*** %17, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.nouveau_disp*
  store %struct.nouveau_disp* %30, %struct.nouveau_disp** %18, align 8
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i32, i32* %19, align 4
  store i32 %34, i32* %9, align 4
  br label %40

35:                                               ; preds = %8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.nouveau_disp*, %struct.nouveau_disp** %18, align 8
  %38 = getelementptr inbounds %struct.nouveau_disp, %struct.nouveau_disp* %37, i32 0, i32 0
  %39 = call i32 @nouveau_event_create(i32 %36, i32* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @nouveau_engine_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @nouveau_event_create(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
