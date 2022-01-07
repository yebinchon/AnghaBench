; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_base.c_nouveau_instmem_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_base.c_nouveau_instmem_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_instmem = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"INSTMEM\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"instmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_instmem_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_oclass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.nouveau_instmem*, align 8
  %13 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %16 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8**, i8*** %11, align 8
  %19 = call i32 @nouveau_subdev_create_(%struct.nouveau_object* %14, %struct.nouveau_object* %15, %struct.nouveau_oclass* %16, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8** %18)
  store i32 %19, i32* %13, align 4
  %20 = load i8**, i8*** %11, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.nouveau_instmem*
  store %struct.nouveau_instmem* %22, %struct.nouveau_instmem** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load %struct.nouveau_instmem*, %struct.nouveau_instmem** %12, align 8
  %29 = getelementptr inbounds %struct.nouveau_instmem, %struct.nouveau_instmem* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
