; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_base.c_nouveau_devobj_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_base.c_nouveau_devobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_devobj = type { i32, %struct.nouveau_object**, i32 }

@NVDEV_SUBDEV_NR = common dso_local global i32 0, align 4
@NV_ENGINE_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nouveau_devobj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_devobj_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_devobj*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = bitcast %struct.nouveau_object* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nouveau_devobj*
  store %struct.nouveau_devobj* %10, %struct.nouveau_devobj** %4, align 8
  %11 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %11, i32 0, i32 2
  %13 = call i32 @nouveau_parent_init(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %89

18:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NVDEV_SUBDEV_NR, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %56

30:                                               ; preds = %28
  %31 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %31, i32 0, i32 1
  %33 = load %struct.nouveau_object**, %struct.nouveau_object*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nouveau_object*, %struct.nouveau_object** %33, i64 %35
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %36, align 8
  store %struct.nouveau_object* %37, %struct.nouveau_object** %5, align 8
  %38 = icmp ne %struct.nouveau_object* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %41 = load i32, i32* @NV_ENGINE_CLASS, align 4
  %42 = call i32 @nv_iclass(%struct.nouveau_object* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %46 = call i32 @nouveau_object_inc(%struct.nouveau_object* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %59

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %19

56:                                               ; preds = %28
  %57 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %89

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %84, %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %4, align 8
  %67 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %66, i32 0, i32 1
  %68 = load %struct.nouveau_object**, %struct.nouveau_object*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nouveau_object*, %struct.nouveau_object** %68, i64 %70
  %72 = load %struct.nouveau_object*, %struct.nouveau_object** %71, align 8
  store %struct.nouveau_object* %72, %struct.nouveau_object** %5, align 8
  %73 = icmp ne %struct.nouveau_object* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %76 = load i32, i32* @NV_ENGINE_CLASS, align 4
  %77 = call i32 @nv_iclass(%struct.nouveau_object* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %81 = call i32 @nouveau_object_dec(%struct.nouveau_object* %80, i32 0)
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %62
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %56, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @nouveau_parent_init(i32*) #1

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_object_inc(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_object_dec(%struct.nouveau_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
