; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_cp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_cp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_CP_CSQ_CNTL = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i32 0, align 4
@R300_CP_RESYNC_ADDR = common dso_local global i32 0, align 4
@RADEON_ISYNC_CNTL = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY2D_IDLE3D = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY3D_IDLE2D = common dso_local global i32 0, align 4
@RADEON_ISYNC_WAIT_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_ISYNC_CPSCRATCH_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_FLUSH_EMITED = common dso_local global i32 0, align 4
@RADEON_PURGE_EMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @radeon_do_cp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_do_cp_start(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @RING_LOCALS, align 4
  %4 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i32 @radeon_do_wait_for_idle(%struct.TYPE_4__* %5)
  %7 = load i32, i32* @RADEON_CP_CSQ_CNTL, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @RADEON_WRITE(i32 %7, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CHIP_R420, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = call i32 @BEGIN_RING(i32 3)
  %23 = load i32, i32* @R300_CP_RESYNC_ADDR, align 4
  %24 = call i32 @CP_PACKET0(i32 %23, i32 1)
  %25 = call i32 @OUT_RING(i32 %24)
  %26 = call i32 @OUT_RING(i32 5)
  %27 = call i32 @OUT_RING(i32 -559038737)
  %28 = call i32 (...) @ADVANCE_RING()
  %29 = call i32 (...) @COMMIT_RING()
  br label %30

30:                                               ; preds = %21, %1
  %31 = call i32 @BEGIN_RING(i32 8)
  %32 = load i32, i32* @RADEON_ISYNC_CNTL, align 4
  %33 = call i32 @CP_PACKET0(i32 %32, i32 0)
  %34 = call i32 @OUT_RING(i32 %33)
  %35 = load i32, i32* @RADEON_ISYNC_ANY2D_IDLE3D, align 4
  %36 = load i32, i32* @RADEON_ISYNC_ANY3D_IDLE2D, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RADEON_ISYNC_WAIT_IDLEGUI, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RADEON_ISYNC_CPSCRATCH_IDLEGUI, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @OUT_RING(i32 %41)
  %43 = call i32 (...) @RADEON_PURGE_CACHE()
  %44 = call i32 (...) @RADEON_PURGE_ZCACHE()
  %45 = call i32 (...) @RADEON_WAIT_UNTIL_IDLE()
  %46 = call i32 (...) @ADVANCE_RING()
  %47 = call i32 (...) @COMMIT_RING()
  %48 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %49 = load i32, i32* @RADEON_PURGE_EMITED, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @radeon_do_wait_for_idle(%struct.TYPE_4__*) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @COMMIT_RING(...) #1

declare dso_local i32 @RADEON_PURGE_CACHE(...) #1

declare dso_local i32 @RADEON_PURGE_ZCACHE(...) #1

declare dso_local i32 @RADEON_WAIT_UNTIL_IDLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
