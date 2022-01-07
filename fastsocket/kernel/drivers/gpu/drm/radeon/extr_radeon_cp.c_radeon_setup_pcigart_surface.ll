; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_setup_pcigart_surface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_setup_pcigart_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.radeon_surface*, %struct.radeon_virt_surface*, %struct.drm_ati_pcigart_info }
%struct.radeon_surface = type { i32, i64, i64, i64 }
%struct.radeon_virt_surface = type { i64, i32, i64, i64, i64 }
%struct.drm_ati_pcigart_info = type { i64, i64 }

@RADEON_MAX_SURFACES = common dso_local global i32 0, align 4
@PCIGART_FILE_PRIV = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_SURFACE0_INFO = common dso_local global i64 0, align 8
@RADEON_SURFACE0_LOWER_BOUND = common dso_local global i64 0, align 8
@RADEON_SURFACE0_UPPER_BOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @radeon_setup_pcigart_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_setup_pcigart_surface(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.drm_ati_pcigart_info*, align 8
  %5 = alloca %struct.radeon_virt_surface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_surface*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store %struct.drm_ati_pcigart_info* %9, %struct.drm_ati_pcigart_info** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %13 = mul nsw i32 %12, 2
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %18, i64 %20
  %22 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %28, i64 %30
  %32 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCIGART_FILE_PRIV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %15
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %36, %10
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %44 = mul nsw i32 2, %43
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %142

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %52, i64 %54
  store %struct.radeon_virt_surface* %55, %struct.radeon_virt_surface** %5, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %136, %49
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RADEON_MAX_SURFACES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %139

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.radeon_surface*, %struct.radeon_surface** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %63, i64 %65
  store %struct.radeon_surface* %66, %struct.radeon_surface** %7, align 8
  %67 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %68 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %136

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %75 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %77 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.drm_ati_pcigart_info*, %struct.drm_ati_pcigart_info** %4, align 8
  %85 = getelementptr inbounds %struct.drm_ati_pcigart_info, %struct.drm_ati_pcigart_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %91 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* @PCIGART_FILE_PRIV, align 8
  %93 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %94 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %96 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %98 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %101 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.radeon_virt_surface*, %struct.radeon_virt_surface** %5, align 8
  %103 = getelementptr inbounds %struct.radeon_virt_surface, %struct.radeon_virt_surface* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %106 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %108 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load i64, i64* @RADEON_SURFACE0_INFO, align 8
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 16, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %115 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @RADEON_WRITE(i64 %113, i64 %116)
  %118 = load i64, i64* @RADEON_SURFACE0_LOWER_BOUND, align 8
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 16, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %124 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @RADEON_WRITE(i64 %122, i64 %125)
  %127 = load i64, i64* @RADEON_SURFACE0_UPPER_BOUND, align 8
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 16, %128
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %127, %130
  %132 = load %struct.radeon_surface*, %struct.radeon_surface** %7, align 8
  %133 = getelementptr inbounds %struct.radeon_surface, %struct.radeon_surface* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @RADEON_WRITE(i64 %131, i64 %134)
  store i32 0, i32* %2, align 4
  br label %142

136:                                              ; preds = %71
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %56

139:                                              ; preds = %56
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %72, %46
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @RADEON_WRITE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
