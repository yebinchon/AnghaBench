; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g200_emit_tex0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g200_emit_tex0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@MGA_TEXCTL2 = common dso_local global i32 0, align 4
@MGA_TEXCTL = common dso_local global i32 0, align 4
@MGA_TEXFILTER = common dso_local global i32 0, align 4
@MGA_TEXBORDERCOL = common dso_local global i32 0, align 4
@MGA_TEXORG = common dso_local global i32 0, align 4
@MGA_TEXORG1 = common dso_local global i32 0, align 4
@MGA_TEXORG2 = common dso_local global i32 0, align 4
@MGA_TEXORG3 = common dso_local global i32 0, align 4
@MGA_TEXORG4 = common dso_local global i32 0, align 4
@MGA_TEXWIDTH = common dso_local global i32 0, align 4
@MGA_TEXHEIGHT = common dso_local global i32 0, align 4
@MGA_WR24 = common dso_local global i32 0, align 4
@MGA_WR34 = common dso_local global i32 0, align 4
@MGA_TEXTRANS = common dso_local global i32 0, align 4
@MGA_TEXTRANSHIGH = common dso_local global i32 0, align 4
@MGA_DMAPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @mga_g200_emit_tex0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_g200_emit_tex0(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load i32, i32* @DMA_LOCALS, align 4
  %13 = call i32 @BEGIN_DMA(i32 4)
  %14 = load i32, i32* @MGA_TEXCTL2, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MGA_TEXCTL, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MGA_TEXFILTER, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MGA_TEXBORDERCOL, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DMA_BLOCK(i32 %14, i32 %17, i32 %18, i32 %21, i32 %22, i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @MGA_TEXORG, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MGA_TEXORG1, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MGA_TEXORG2, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MGA_TEXORG3, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DMA_BLOCK(i32 %31, i32 %34, i32 %35, i32 %38, i32 %39, i32 %42, i32 %43, i32 %46)
  %48 = load i32, i32* @MGA_TEXORG4, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MGA_TEXWIDTH, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MGA_TEXHEIGHT, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MGA_WR24, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DMA_BLOCK(i32 %48, i32 %51, i32 %52, i32 %55, i32 %56, i32 %59, i32 %60, i32 %63)
  %65 = load i32, i32* @MGA_WR34, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MGA_TEXTRANS, align 4
  %70 = load i32, i32* @MGA_TEXTRANSHIGH, align 4
  %71 = load i32, i32* @MGA_DMAPAD, align 4
  %72 = call i32 @DMA_BLOCK(i32 %65, i32 %68, i32 %69, i32 65535, i32 %70, i32 65535, i32 %71, i32 0)
  %73 = call i32 (...) @ADVANCE_DMA()
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
