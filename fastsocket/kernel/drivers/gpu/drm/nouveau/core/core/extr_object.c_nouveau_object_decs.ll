; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_decs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_decs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.nouveau_object*, i32)*, i32 (%struct.nouveau_object*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"suspending...\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed suspend, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"engine failed suspend, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"parent failed suspend, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"suspended\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"engine failed to reinit, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to reinit, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nouveau_object_decs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_object_decs(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = call i32 @nv_trace(%struct.nouveau_object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = call %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.nouveau_object*, i32)*, i32 (%struct.nouveau_object*, i32)** %10, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %13 = call i32 %11(%struct.nouveau_object* %12, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @nv_error(%struct.nouveau_object* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %115

21:                                               ; preds = %1
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.TYPE_3__* @nv_subdev(i64 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @nouveau_object_dec(i64 %35, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %38 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.TYPE_3__* @nv_subdev(i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @nv_warn(%struct.nouveau_object* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %100

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @nouveau_object_dec(i64 %58, i32 1)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @nv_warn(%struct.nouveau_object* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %69 = call i32 @nv_debug(%struct.nouveau_object* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

70:                                               ; preds = %62
  %71 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %72 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %77 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.TYPE_3__* @nv_subdev(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %83 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @nouveau_object_inc(i64 %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %87 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_3__* @nv_subdev(i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %75
  %95 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @nv_fatal(%struct.nouveau_object* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %75
  br label %99

99:                                               ; preds = %98, %70
  br label %100

100:                                              ; preds = %99, %45
  %101 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %102 = call %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32 (%struct.nouveau_object*)*, i32 (%struct.nouveau_object*)** %103, align 8
  %105 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %106 = call i32 %104(%struct.nouveau_object* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @nv_fatal(%struct.nouveau_object* %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %100
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %67, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @nv_trace(%struct.nouveau_object*, i8*) #1

declare dso_local %struct.TYPE_4__* @nv_ofuncs(%struct.nouveau_object*) #1

declare dso_local i32 @nv_error(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(i64) #1

declare dso_local i32 @nouveau_object_dec(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nv_warn(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

declare dso_local i32 @nouveau_object_inc(i64) #1

declare dso_local i32 @nv_fatal(%struct.nouveau_object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
