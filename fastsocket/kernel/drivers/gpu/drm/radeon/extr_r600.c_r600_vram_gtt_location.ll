; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_mc = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"limiting VRAM\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_mc*)* @r600_vram_gtt_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_vram_gtt_location(%struct.radeon_device* %0, %struct.radeon_mc* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %4, align 8
  %8 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ugt i32 %10, -536870912
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %17, i32 0, i32 1
  store i32 -536870912, i32* %18, align 4
  %19 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %19, i32 0, i32 0
  store i32 -536870912, i32* %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RADEON_IS_AGP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %21
  %29 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 4294967295, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %28
  %40 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %41 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* %5, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %46, %39
  %60 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %62, %66
  %68 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %97

70:                                               ; preds = %28
  %71 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %82 = load i64, i64* %6, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %85 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %6, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %89 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %77, %70
  %91 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %96 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %59
  %98 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %99 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %102 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = sub nsw i64 %105, 1
  %107 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %108 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %113 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = ashr i32 %114, 20
  %116 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %123 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 20
  %126 = call i32 @dev_info(i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %115, i64 %118, i64 %121, i32 %125)
  br label %153

127:                                              ; preds = %21
  store i64 0, i64* %7, align 8
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RADEON_IS_IGP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %136 = call i32 @RREG32(i32 %135)
  %137 = and i32 %136, 65535
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %7, align 8
  %139 = load i64, i64* %7, align 8
  %140 = shl i64 %139, 24
  store i64 %140, i64* %7, align 8
  br label %141

141:                                              ; preds = %134, %127
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 1
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @radeon_vram_location(%struct.radeon_device* %142, %struct.TYPE_2__* %144, i64 %145)
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %152 = call i32 @radeon_gtt_location(%struct.radeon_device* %150, %struct.radeon_mc* %151)
  br label %153

153:                                              ; preds = %141, %97
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.radeon_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
