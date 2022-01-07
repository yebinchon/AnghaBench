; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_lvds_manufacturer_table_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_lvds_manufacturer_table_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lvdstableheader = type { i32, i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Pointer to LVDS manufacturer table invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"LVDS table header not understood\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"LVDS table revision %d.%d not currently supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.lvdstableheader*)* @parse_lvds_manufacturer_table_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_lvds_manufacturer_table_header(%struct.drm_device* %0, %struct.nvbios* %1, %struct.lvdstableheader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.lvdstableheader*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.lvdstableheader* %2, %struct.lvdstableheader** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %8, align 8
  %14 = load %struct.lvdstableheader*, %struct.lvdstableheader** %7, align 8
  %15 = call i32 @memset(%struct.lvdstableheader* %14, i32 0, i32 12)
  %16 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %17 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %23 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %131

26:                                               ; preds = %3
  %27 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %28 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %31 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %112 [
    i32 10, label %38
    i32 48, label %50
    i32 64, label %81
  ]

38:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  %39 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %40 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %43 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %121

50:                                               ; preds = %26
  %51 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %52 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %55 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 31
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %66 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %131

69:                                               ; preds = %50
  %70 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %71 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %74 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  br label %121

81:                                               ; preds = %26
  %82 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %83 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %86 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 7
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %97 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %131

100:                                              ; preds = %81
  %101 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %102 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %105 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  br label %121

112:                                              ; preds = %26
  %113 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = ashr i32 %114, 4
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 15
  %118 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %113, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %117)
  %119 = load i32, i32* @ENOSYS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %131

121:                                              ; preds = %100, %69, %38
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.lvdstableheader*, %struct.lvdstableheader** %7, align 8
  %124 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.lvdstableheader*, %struct.lvdstableheader** %7, align 8
  %127 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.lvdstableheader*, %struct.lvdstableheader** %7, align 8
  %130 = getelementptr inbounds %struct.lvdstableheader, %struct.lvdstableheader* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %121, %112, %95, %64, %21
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @memset(%struct.lvdstableheader*, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
