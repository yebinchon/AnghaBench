; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"inc() == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dec() == %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_object_ref(%struct.nouveau_object* %0, %struct.nouveau_object** %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_object**, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store %struct.nouveau_object** %1, %struct.nouveau_object*** %4, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = icmp ne %struct.nouveau_object* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = call i32 @atomic_inc(i32* %10)
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = call i32 @nv_trace(%struct.nouveau_object* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %8, %2
  %18 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %18, align 8
  %20 = icmp ne %struct.nouveau_object* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %22, align 8
  %24 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %23, i32 0, i32 0
  %25 = call i32 @atomic_dec_and_test(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %26, align 8
  %28 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  %32 = call i32 @nv_trace(%struct.nouveau_object* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %36, align 8
  %38 = call i32 @nouveau_object_dtor(%struct.nouveau_object* %37)
  br label %39

39:                                               ; preds = %35, %21
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %42 = load %struct.nouveau_object**, %struct.nouveau_object*** %4, align 8
  store %struct.nouveau_object* %41, %struct.nouveau_object** %42, align 8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nv_trace(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nouveau_object_dtor(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
