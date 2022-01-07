; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_decf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_decf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_object*, i32)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"stopping...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"failed fini, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nouveau_object_decf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_object_decf(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = call i32 @nv_trace(%struct.nouveau_object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %7 = call %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (%struct.nouveau_object*, i32)*, i32 (%struct.nouveau_object*, i32)** %8, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %11 = call i32 %9(%struct.nouveau_object* %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @nv_warn(%struct.nouveau_object* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %20 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %25 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.TYPE_3__* @nv_subdev(i64 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nouveau_object_dec(i64 %32, i32 0)
  %34 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %35 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_3__* @nv_subdev(i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %23, %18
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %42 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %47 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nouveau_object_dec(i64 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %52 = call i32 @nv_debug(%struct.nouveau_object* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @nv_trace(%struct.nouveau_object*, i8*) #1

declare dso_local %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object*) #1

declare dso_local i32 @nv_warn(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(i64) #1

declare dso_local i32 @nouveau_object_dec(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
