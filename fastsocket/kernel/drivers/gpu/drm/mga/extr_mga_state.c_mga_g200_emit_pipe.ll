; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g200_emit_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g200_emit_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@MGA_WIADDR = common dso_local global i32 0, align 4
@MGA_WMODE_SUSPEND = common dso_local global i32 0, align 4
@MGA_WVRTXSZ = common dso_local global i32 0, align 4
@MGA_WFLAG = common dso_local global i32 0, align 4
@MGA_WR24 = common dso_local global i32 0, align 4
@MGA_WR25 = common dso_local global i32 0, align 4
@MGA_WR34 = common dso_local global i32 0, align 4
@MGA_WR42 = common dso_local global i32 0, align 4
@MGA_WR60 = common dso_local global i32 0, align 4
@MGA_DMAPAD = common dso_local global i32 0, align 4
@MGA_WMODE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mga_g200_emit_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_g200_emit_pipe(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @DMA_LOCALS, align 4
  %12 = call i32 @BEGIN_DMA(i32 3)
  %13 = load i32, i32* @MGA_WIADDR, align 4
  %14 = load i32, i32* @MGA_WMODE_SUSPEND, align 4
  %15 = load i32, i32* @MGA_WVRTXSZ, align 4
  %16 = load i32, i32* @MGA_WFLAG, align 4
  %17 = load i32, i32* @MGA_WR24, align 4
  %18 = call i32 @DMA_BLOCK(i32 %13, i32 %14, i32 %15, i32 7, i32 %16, i32 0, i32 %17, i32 0)
  %19 = load i32, i32* @MGA_WR25, align 4
  %20 = load i32, i32* @MGA_WR34, align 4
  %21 = load i32, i32* @MGA_WR42, align 4
  %22 = load i32, i32* @MGA_WR60, align 4
  %23 = call i32 @DMA_BLOCK(i32 %19, i32 256, i32 %20, i32 0, i32 %21, i32 65535, i32 %22, i32 65535)
  %24 = load i32, i32* @MGA_DMAPAD, align 4
  %25 = load i32, i32* @MGA_DMAPAD, align 4
  %26 = load i32, i32* @MGA_DMAPAD, align 4
  %27 = load i32, i32* @MGA_WIADDR, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MGA_WMODE_START, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %36, %39
  %41 = call i32 @DMA_BLOCK(i32 %24, i32 -1, i32 %25, i32 -1, i32 %26, i32 -1, i32 %27, i32 %40)
  %42 = call i32 (...) @ADVANCE_DMA()
  ret void
}

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
