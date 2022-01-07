; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_r700_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_r700_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_mc = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"limiting VRAM\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r700_vram_gtt_location(%struct.radeon_device* %0, %struct.radeon_mc* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %4, align 8
  %7 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ugt i32 %9, -536870912
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %16, i32 0, i32 1
  store i32 -536870912, i32* %17, align 4
  %18 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %18, i32 0, i32 0
  store i32 -536870912, i32* %19, align 8
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RADEON_IS_AGP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %126

27:                                               ; preds = %20
  %28 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 4294967295, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %27
  %39 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_warn(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %5, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %45, %38
  %59 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %61, %65
  %67 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  br label %96

69:                                               ; preds = %27
  %70 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_warn(i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %84 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %76, %69
  %90 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %89, %58
  %97 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %98 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  %105 = sub nsw i64 %104, 1
  %106 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 20
  %115 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %119 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %122 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 20
  %125 = call i32 @dev_info(i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %114, i64 %117, i64 %120, i32 %124)
  br label %137

126:                                              ; preds = %20
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 1
  %130 = call i32 @radeon_vram_location(%struct.radeon_device* %127, %struct.TYPE_2__* %129, i32 0)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %136 = call i32 @radeon_gtt_location(%struct.radeon_device* %134, %struct.radeon_mc* %135)
  br label %137

137:                                              ; preds = %126, %96
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.radeon_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
