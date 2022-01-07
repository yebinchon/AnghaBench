; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_base.c_nouveau_devobj_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_base.c_nouveau_devobj_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_devobj = type { %struct.nouveau_object**, i32 }

@NVDEV_SUBDEV_NR = common dso_local global i32 0, align 4
@NV_ENGINE_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nouveau_devobj_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_devobj_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_devobj*, align 8
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = bitcast %struct.nouveau_object* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nouveau_devobj*
  store %struct.nouveau_devobj* %11, %struct.nouveau_devobj** %5, align 8
  %12 = load i32, i32* @NVDEV_SUBDEV_NR, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %44, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %18, i32 0, i32 0
  %20 = load %struct.nouveau_object**, %struct.nouveau_object*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nouveau_object*, %struct.nouveau_object** %20, i64 %22
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %23, align 8
  store %struct.nouveau_object* %24, %struct.nouveau_object** %6, align 8
  %25 = icmp ne %struct.nouveau_object* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %28 = load i32, i32* @NV_ENGINE_CLASS, align 4
  %29 = call i32 @nv_iclass(%struct.nouveau_object* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @nouveau_object_dec(%struct.nouveau_object* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %52

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  br label %14

47:                                               ; preds = %14
  %48 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %48, i32 0, i32 1
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @nouveau_parent_fini(i32* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @NVDEV_SUBDEV_NR, align 4
  %62 = icmp slt i32 %60, %61
  br label %63

63:                                               ; preds = %59, %56, %53
  %64 = phi i1 [ false, %56 ], [ false, %53 ], [ %62, %59 ]
  br i1 %64, label %65, label %91

65:                                               ; preds = %63
  %66 = load %struct.nouveau_devobj*, %struct.nouveau_devobj** %5, align 8
  %67 = getelementptr inbounds %struct.nouveau_devobj, %struct.nouveau_devobj* %66, i32 0, i32 0
  %68 = load %struct.nouveau_object**, %struct.nouveau_object*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nouveau_object*, %struct.nouveau_object** %68, i64 %70
  %72 = load %struct.nouveau_object*, %struct.nouveau_object** %71, align 8
  store %struct.nouveau_object* %72, %struct.nouveau_object** %6, align 8
  %73 = icmp ne %struct.nouveau_object* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %76 = load i32, i32* @NV_ENGINE_CLASS, align 4
  %77 = call i32 @nv_iclass(%struct.nouveau_object* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %81 = call i32 @nouveau_object_inc(%struct.nouveau_object* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %53

91:                                               ; preds = %63
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @nv_iclass(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_object_dec(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_parent_fini(i32*, i32) #1

declare dso_local i32 @nouveau_object_inc(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
