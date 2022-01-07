; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_vtx_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_set_vtx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R600_IT_SET_RESOURCE = common dso_local global i32 0, align 4
@R600_SQ_TEX_VTX_VALID_BUFFER = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV610 = common dso_local global i32 0, align 4
@CHIP_RV620 = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i32 0, align 4
@CHIP_RS880 = common dso_local global i32 0, align 4
@CHIP_RV710 = common dso_local global i32 0, align 4
@R600_TC_ACTION_ENA = common dso_local global i32 0, align 4
@R600_VC_ACTION_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @set_vtx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vtx_resource(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RING_LOCALS, align 4
  %7 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 32
  %10 = and i32 %9, 255
  %11 = or i32 %10, 4096
  store i32 %11, i32* %5, align 4
  %12 = call i32 @BEGIN_RING(i32 9)
  %13 = load i32, i32* @R600_IT_SET_RESOURCE, align 4
  %14 = call i32 @CP_PACKET3(i32 %13, i32 7)
  %15 = call i32 @OUT_RING(i32 %14)
  %16 = call i32 @OUT_RING(i32 1120)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @OUT_RING(i32 %17)
  %19 = call i32 @OUT_RING(i32 47)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @OUT_RING(i32 %20)
  %22 = call i32 @OUT_RING(i32 1)
  %23 = call i32 @OUT_RING(i32 0)
  %24 = call i32 @OUT_RING(i32 0)
  %25 = load i32, i32* @R600_SQ_TEX_VTX_VALID_BUFFER, align 4
  %26 = shl i32 %25, 30
  %27 = call i32 @OUT_RING(i32 %26)
  %28 = call i32 (...) @ADVANCE_RING()
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CHIP_RV610, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CHIP_RV620, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %68, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CHIP_RS780, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CHIP_RS880, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CHIP_RV710, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60, %52, %44, %36, %2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = load i32, i32* @R600_TC_ACTION_ENA, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @cp_set_surface_sync(%struct.TYPE_4__* %69, i32 %70, i32 48, i32 %71)
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = load i32, i32* @R600_VC_ACTION_ENA, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @cp_set_surface_sync(%struct.TYPE_4__* %74, i32 %75, i32 48, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @cp_set_surface_sync(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
