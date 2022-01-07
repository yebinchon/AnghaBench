; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_pacify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_pacify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@R300_ZC_FLUSH = common dso_local global i32 0, align 4
@R300_RB2D_DC_FLUSH = common dso_local global i32 0, align 4
@R300_RB3D_DC_FLUSH = common dso_local global i32 0, align 4
@RADEON_PURGE_EMITED = common dso_local global i32 0, align 4
@R300_ZC_FREE = common dso_local global i32 0, align 4
@R300_RB2D_DC_FREE = common dso_local global i32 0, align 4
@R300_RB3D_DC_FREE = common dso_local global i32 0, align 4
@R300_ZB_ZCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_RB3D_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@R300_TX_INVALTAGS = common dso_local global i32 0, align 4
@R300_RB3D_AARESOLVE_CTL = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@R300_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_HOST_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_FLUSH_EMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @r300_pacify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r300_pacify(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @RING_LOCALS, align 4
  %7 = load i32, i32* @R300_ZC_FLUSH, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @R300_RB2D_DC_FLUSH, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @R300_RB3D_DC_FLUSH, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_PURGE_EMITED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @R300_ZC_FREE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @R300_RB2D_DC_FREE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @R300_RB3D_DC_FREE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %1
  %27 = call i32 @BEGIN_RING(i32 2)
  %28 = load i32, i32* @R300_ZB_ZCACHE_CTLSTAT, align 4
  %29 = call i32 @CP_PACKET0(i32 %28, i32 0)
  %30 = call i32 @OUT_RING(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @OUT_RING(i32 %31)
  %33 = call i32 (...) @ADVANCE_RING()
  %34 = call i32 @BEGIN_RING(i32 2)
  %35 = load i32, i32* @R300_RB3D_DSTCACHE_CTLSTAT, align 4
  %36 = call i32 @CP_PACKET0(i32 %35, i32 0)
  %37 = call i32 @OUT_RING(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @OUT_RING(i32 %38)
  %40 = call i32 (...) @ADVANCE_RING()
  %41 = call i32 @BEGIN_RING(i32 2)
  %42 = load i32, i32* @R300_TX_INVALTAGS, align 4
  %43 = call i32 @CP_PACKET0(i32 %42, i32 0)
  %44 = call i32 @OUT_RING(i32 %43)
  %45 = call i32 @OUT_RING(i32 0)
  %46 = call i32 (...) @ADVANCE_RING()
  %47 = call i32 @BEGIN_RING(i32 2)
  %48 = load i32, i32* @R300_RB3D_AARESOLVE_CTL, align 4
  %49 = call i32 @CP_PACKET0(i32 %48, i32 0)
  %50 = call i32 @OUT_RING(i32 %49)
  %51 = call i32 @OUT_RING(i32 0)
  %52 = call i32 (...) @ADVANCE_RING()
  %53 = call i32 @BEGIN_RING(i32 2)
  %54 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %55 = call i32 @CP_PACKET0(i32 %54, i32 0)
  %56 = call i32 @OUT_RING(i32 %55)
  %57 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %58 = call i32 @OUT_RING(i32 %57)
  %59 = call i32 (...) @ADVANCE_RING()
  %60 = call i32 @BEGIN_RING(i32 4)
  %61 = load i32, i32* @R300_DSTCACHE_CTLSTAT, align 4
  %62 = call i32 @CP_PACKET0(i32 %61, i32 0)
  %63 = call i32 @OUT_RING(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @OUT_RING(i32 %64)
  %66 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %67 = call i32 @CP_PACKET0(i32 %66, i32 0)
  %68 = call i32 @OUT_RING(i32 %67)
  %69 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %70 = load i32, i32* @RADEON_WAIT_HOST_IDLECLEAN, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @OUT_RING(i32 %71)
  %73 = call i32 (...) @ADVANCE_RING()
  %74 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %75 = load i32, i32* @RADEON_PURGE_EMITED, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  ret void
}

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
