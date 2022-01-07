; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_pm.c_nouveau_pm_perflvl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_pm_level = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c" core %dMHz\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" shader %dMHz\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" memory %dMHz\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" voltage %dmV-%dmV\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" voltage %dmV\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" fanspeed %d%%\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s%s%s%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_pm_level*, i8*, i32)* @nouveau_pm_perflvl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_pm_perflvl_info(%struct.nouveau_pm_level* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_pm_level*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  store %struct.nouveau_pm_level* %0, %struct.nouveau_pm_level** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %19 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %3
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %32 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %33 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 1000
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %38, align 16
  %39 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %40 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %45 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %46 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 1000
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %37
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %51, align 16
  %52 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %66 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %67 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 1000
  %70 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %71 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 1000
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %73)
  br label %88

75:                                               ; preds = %56, %50
  %76 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %77 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %82 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %83 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 1000
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  br label %88

88:                                               ; preds = %87, %64
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %89, align 16
  %90 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %91 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %96 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %4, align 8
  %97 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %95, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %103, i8* %104, i8* %105, i8* %106, i8* %107)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
