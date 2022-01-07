; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_parent.c_nouveau_parent_sclass.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_parent.c_nouveau_parent_sclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { %struct.nouveau_object* }
%struct.nouveau_oclass = type { i32, i64 }
%struct.nouveau_sclass = type { %struct.nouveau_sclass*, %struct.nouveau_oclass* }
%struct.nouveau_engine = type { %struct.nouveau_oclass* }
%struct.TYPE_2__ = type { i64, %struct.nouveau_sclass* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_parent_sclass(%struct.nouveau_object* %0, i32 %1, %struct.nouveau_object** %2, %struct.nouveau_oclass** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object**, align 8
  %9 = alloca %struct.nouveau_oclass**, align 8
  %10 = alloca %struct.nouveau_sclass*, align 8
  %11 = alloca %struct.nouveau_engine*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nouveau_object** %2, %struct.nouveau_object*** %8, align 8
  store %struct.nouveau_oclass** %3, %struct.nouveau_oclass*** %9, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %16 = call %struct.TYPE_2__* @nv_parent(%struct.nouveau_object* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %17, align 8
  store %struct.nouveau_sclass* %18, %struct.nouveau_sclass** %10, align 8
  br label %19

19:                                               ; preds = %40, %4
  %20 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %10, align 8
  %21 = icmp ne %struct.nouveau_sclass* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %10, align 8
  %24 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %23, i32 0, i32 1
  %25 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 65535
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %33 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %32, i32 0, i32 0
  %34 = load %struct.nouveau_object*, %struct.nouveau_object** %33, align 8
  %35 = load %struct.nouveau_object**, %struct.nouveau_object*** %8, align 8
  store %struct.nouveau_object* %34, %struct.nouveau_object** %35, align 8
  %36 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %10, align 8
  %37 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %36, i32 0, i32 1
  %38 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %37, align 8
  %39 = load %struct.nouveau_oclass**, %struct.nouveau_oclass*** %9, align 8
  store %struct.nouveau_oclass* %38, %struct.nouveau_oclass** %39, align 8
  store i32 0, i32* %5, align 4
  br label %96

40:                                               ; preds = %22
  %41 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %10, align 8
  %42 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %41, i32 0, i32 0
  %43 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %42, align 8
  store %struct.nouveau_sclass* %43, %struct.nouveau_sclass** %10, align 8
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %46 = call %struct.TYPE_2__* @nv_parent(%struct.nouveau_object* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %86, %44
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %49
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @ffsll(i64 %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  %56 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_object* %56, i32 %57)
  store %struct.nouveau_engine* %58, %struct.nouveau_engine** %11, align 8
  %59 = icmp ne %struct.nouveau_engine* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %52
  %61 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %62 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %61, i32 0, i32 0
  %63 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %62, align 8
  store %struct.nouveau_oclass* %63, %struct.nouveau_oclass** %12, align 8
  br label %64

64:                                               ; preds = %82, %60
  %65 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %66 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %71 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 65535
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.nouveau_engine*, %struct.nouveau_engine** %11, align 8
  %78 = call %struct.nouveau_object* @nv_object(%struct.nouveau_engine* %77)
  %79 = load %struct.nouveau_object**, %struct.nouveau_object*** %8, align 8
  store %struct.nouveau_object* %78, %struct.nouveau_object** %79, align 8
  %80 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %81 = load %struct.nouveau_oclass**, %struct.nouveau_oclass*** %9, align 8
  store %struct.nouveau_oclass* %80, %struct.nouveau_oclass** %81, align 8
  store i32 0, i32* %5, align 4
  br label %96

82:                                               ; preds = %69
  %83 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %84 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %83, i32 1
  store %struct.nouveau_oclass* %84, %struct.nouveau_oclass** %12, align 8
  br label %64

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %13, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %49

93:                                               ; preds = %49
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %76, %31
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_2__* @nv_parent(%struct.nouveau_object*) #1

declare dso_local i32 @ffsll(i64) #1

declare dso_local %struct.nouveau_engine* @nouveau_engine(%struct.nouveau_object*, i32) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
