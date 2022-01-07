; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_cp_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_do_cp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R420 = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DC_FINISH = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_CNTL = common dso_local global i32 0, align 4
@RADEON_CSQ_PRIDIS_INDDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @radeon_do_cp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_do_cp_stop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @RING_LOCALS, align 4
  %4 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @CHIP_R420, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = call i32 @BEGIN_RING(i32 2)
  %14 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %15 = call i32 @CP_PACKET0(i32 %14, i32 0)
  %16 = call i32 @OUT_RING(i32 %15)
  %17 = load i32, i32* @R300_RB3D_DC_FINISH, align 4
  %18 = call i32 @OUT_RING(i32 %17)
  %19 = call i32 (...) @ADVANCE_RING()
  %20 = call i32 (...) @COMMIT_RING()
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @radeon_do_wait_for_idle(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load i32, i32* @RADEON_CP_CSQ_CNTL, align 4
  %25 = load i32, i32* @RADEON_CSQ_PRIDIS_INDDIS, align 4
  %26 = call i32 @RADEON_WRITE(i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @COMMIT_RING(...) #1

declare dso_local i32 @radeon_do_wait_for_idle(%struct.TYPE_4__*) #1

declare dso_local i32 @RADEON_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
