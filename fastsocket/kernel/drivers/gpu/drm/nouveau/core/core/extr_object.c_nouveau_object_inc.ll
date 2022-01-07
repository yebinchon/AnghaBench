; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, %struct.nouveau_object*, %struct.nouveau_object* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_object*)* }

@.str = private unnamed_addr constant [15 x i8] c"use(+1) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"initialising...\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"parent failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"engine failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"init failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"initialised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_object_inc(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %6, i32 0, i32 0
  %8 = call i32 @atomic_add_return(i32 1, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i32 (%struct.nouveau_object*, i8*, ...) @nv_trace(%struct.nouveau_object* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

17:                                               ; preds = %1
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %19 = call i32 (%struct.nouveau_object*, i8*, ...) @nv_trace(%struct.nouveau_object* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %20, i32 0, i32 1
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %21, align 8
  %23 = icmp ne %struct.nouveau_object* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %25, i32 0, i32 1
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %26, align 8
  %28 = call i32 @nouveau_object_inc(%struct.nouveau_object* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nv_error(%struct.nouveau_object* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %115

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %38 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %37, i32 0, i32 2
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %38, align 8
  %40 = icmp ne %struct.nouveau_object* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %43 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %42, i32 0, i32 2
  %44 = load %struct.nouveau_object*, %struct.nouveau_object** %43, align 8
  %45 = call %struct.TYPE_3__* @nv_subdev(%struct.nouveau_object* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %48, i32 0, i32 2
  %50 = load %struct.nouveau_object*, %struct.nouveau_object** %49, align 8
  %51 = call i32 @nouveau_object_inc(%struct.nouveau_object* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %53 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %52, i32 0, i32 2
  %54 = load %struct.nouveau_object*, %struct.nouveau_object** %53, align 8
  %55 = call %struct.TYPE_3__* @nv_subdev(%struct.nouveau_object* %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @nv_error(%struct.nouveau_object* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %104

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %67 = call %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.nouveau_object*)*, i32 (%struct.nouveau_object*)** %68, align 8
  %70 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %71 = call i32 %69(%struct.nouveau_object* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @nv_error(%struct.nouveau_object* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %81

78:                                               ; preds = %65
  %79 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %80 = call i32 @nv_debug(%struct.nouveau_object* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %120

81:                                               ; preds = %74
  %82 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %83 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %82, i32 0, i32 2
  %84 = load %struct.nouveau_object*, %struct.nouveau_object** %83, align 8
  %85 = icmp ne %struct.nouveau_object* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %88 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %87, i32 0, i32 2
  %89 = load %struct.nouveau_object*, %struct.nouveau_object** %88, align 8
  %90 = call %struct.TYPE_3__* @nv_subdev(%struct.nouveau_object* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %94 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %93, i32 0, i32 2
  %95 = load %struct.nouveau_object*, %struct.nouveau_object** %94, align 8
  %96 = call i32 @nouveau_object_dec(%struct.nouveau_object* %95, i32 0)
  %97 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %98 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %97, i32 0, i32 2
  %99 = load %struct.nouveau_object*, %struct.nouveau_object** %98, align 8
  %100 = call %struct.TYPE_3__* @nv_subdev(%struct.nouveau_object* %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  br label %103

103:                                              ; preds = %86, %81
  br label %104

104:                                              ; preds = %103, %60
  %105 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %106 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %105, i32 0, i32 1
  %107 = load %struct.nouveau_object*, %struct.nouveau_object** %106, align 8
  %108 = icmp ne %struct.nouveau_object* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %111 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %110, i32 0, i32 1
  %112 = load %struct.nouveau_object*, %struct.nouveau_object** %111, align 8
  %113 = call i32 @nouveau_object_dec(%struct.nouveau_object* %112, i32 0)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %31
  %116 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %117 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %116, i32 0, i32 0
  %118 = call i32 @atomic_dec(i32* %117)
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %78, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @nv_trace(%struct.nouveau_object*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nv_error(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nouveau_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

declare dso_local i32 @nouveau_object_dec(%struct.nouveau_object*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
