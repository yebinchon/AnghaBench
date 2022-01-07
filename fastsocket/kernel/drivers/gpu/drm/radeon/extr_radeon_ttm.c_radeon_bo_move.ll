; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_bo_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_bo_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32*, i32, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i64 }
%struct.radeon_device = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @radeon_bo_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_bo_move(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca %struct.ttm_mem_reg*, align 8
  %14 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 2
  store %struct.ttm_mem_reg* %16, %struct.ttm_mem_reg** %13, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.radeon_device* @radeon_get_rdev(i32 %19)
  store %struct.radeon_device* %20, %struct.radeon_device** %12, align 8
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %33 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %34 = call i32 @radeon_move_null(%struct.ttm_buffer_object* %32, %struct.ttm_mem_reg* %33)
  store i32 0, i32* %6, align 4
  br label %140

35:                                               ; preds = %26, %5
  %36 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TTM_PL_TT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %43 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %55 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TTM_PL_TT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %41
  %60 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %61 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %62 = call i32 @radeon_move_null(%struct.ttm_buffer_object* %60, %struct.ttm_mem_reg* %61)
  store i32 0, i32* %6, align 4
  br label %140

63:                                               ; preds = %53, %47
  %64 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %68 = call i64 @radeon_copy_ring_index(%struct.radeon_device* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %63
  br label %132

82:                                               ; preds = %73
  %83 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %84 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TTM_PL_VRAM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %90 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %100 = call i32 @radeon_move_vram_ram(%struct.ttm_buffer_object* %95, i32 %96, i32 %97, i32 %98, %struct.ttm_mem_reg* %99)
  store i32 %100, i32* %14, align 4
  br label %128

101:                                              ; preds = %88, %82
  %102 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %103 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %109 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TTM_PL_VRAM, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %119 = call i32 @radeon_move_ram_vram(%struct.ttm_buffer_object* %114, i32 %115, i32 %116, i32 %117, %struct.ttm_mem_reg* %118)
  store i32 %119, i32* %14, align 4
  br label %127

120:                                              ; preds = %107, %101
  %121 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %125 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %126 = call i32 @radeon_move_blit(%struct.ttm_buffer_object* %121, i32 %122, i32 %123, %struct.ttm_mem_reg* %124, %struct.ttm_mem_reg* %125)
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131, %81
  %133 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %137 = call i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %133, i32 %134, i32 %135, %struct.ttm_mem_reg* %136)
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %132, %128
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %59, %31
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local i32 @radeon_move_null(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

declare dso_local i64 @radeon_copy_ring_index(%struct.radeon_device*) #1

declare dso_local i32 @radeon_move_vram_ram(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @radeon_move_ram_vram(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @radeon_move_blit(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
