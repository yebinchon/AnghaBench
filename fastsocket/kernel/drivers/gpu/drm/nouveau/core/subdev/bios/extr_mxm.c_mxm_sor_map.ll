; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_mxm.c_mxm_sor_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_mxm.c_mxm_sor_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown sor map v%02x\0A\00", align 1
@nv84_sor_map = common dso_local global i32* null, align 8
@nv92_sor_map = common dso_local global i32* null, align 8
@nv94_sor_map = common dso_local global i32* null, align 8
@nv98_sor_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"missing sor map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_sor_map(%struct.nouveau_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %11 = call i32 @mxm_table(%struct.nouveau_bios* %10, i32* %6, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 6
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 4
  %21 = call i32 @nv_ro16(%struct.nouveau_bios* %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %17
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @nv_ro08(%struct.nouveau_bios* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 3
  %35 = call i32 @nv_ro08(%struct.nouveau_bios* %32, i32 %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @nv_ro08(%struct.nouveau_bios* %38, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @nv_ro08(%struct.nouveau_bios* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %119

50:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %119

51:                                               ; preds = %24
  %52 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %17
  br label %56

56:                                               ; preds = %55, %14, %2
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %64 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 134
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %56
  %69 = load i32*, i32** @nv84_sor_map, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  br label %119

74:                                               ; preds = %62
  %75 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %76 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 146
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32*, i32** @nv92_sor_map, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %3, align 4
  br label %119

86:                                               ; preds = %74
  %87 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %88 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 148
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %94 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 150
  br i1 %97, label %98, label %104

98:                                               ; preds = %92, %86
  %99 = load i32*, i32** @nv94_sor_map, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %3, align 4
  br label %119

104:                                              ; preds = %92
  %105 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %106 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 152
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32*, i32** @nv98_sor_map, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %3, align 4
  br label %119

116:                                              ; preds = %104
  %117 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %118 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %110, %98, %80, %68, %50, %37
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @mxm_table(%struct.nouveau_bios*, i32*, i32*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_warn(%struct.nouveau_bios*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
