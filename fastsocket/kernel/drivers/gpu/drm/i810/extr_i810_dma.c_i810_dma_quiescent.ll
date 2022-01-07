; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_quiescent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_quiescent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@INST_PARSER_CLIENT = common dso_local global i32 0, align 4
@INST_OP_FLUSH = common dso_local global i32 0, align 4
@INST_FLUSH_MAP_CACHE = common dso_local global i32 0, align 4
@CMD_REPORT_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i810_dma_quiescent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_dma_quiescent(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* @RING_LOCALS, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @i810_kernel_lost_context(%struct.drm_device* %8)
  %10 = call i32 @BEGIN_LP_RING(i32 4)
  %11 = load i32, i32* @INST_PARSER_CLIENT, align 4
  %12 = load i32, i32* @INST_OP_FLUSH, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @INST_FLUSH_MAP_CACHE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @OUT_RING(i32 %15)
  %17 = load i32, i32* @CMD_REPORT_HEAD, align 4
  %18 = call i32 @OUT_RING(i32 %17)
  %19 = call i32 @OUT_RING(i32 0)
  %20 = call i32 @OUT_RING(i32 0)
  %21 = call i32 (...) @ADVANCE_LP_RING()
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 8
  %28 = call i32 @i810_wait_ring(%struct.drm_device* %22, i64 %27)
  ret void
}

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

declare dso_local i32 @i810_wait_ring(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
