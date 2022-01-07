; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_pad_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_pad_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HC_HEADER2 = common dso_local global i32 0, align 4
@HC_ParaType_NotTex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @via_pad_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_pad_cache(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 2
  %9 = call i32 @via_cmdbuf_wait(i32* %6, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @via_get_dma(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @HC_HEADER2, align 4
  %13 = load i32, i32* @HC_ParaType_NotTex, align 4
  %14 = shl i32 %13, 16
  %15 = call i32 @VIA_OUT_RING_QW(i32 %12, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @via_align_buffer(i32* %16, i32* %17, i32 %18)
  ret void
}

declare dso_local i32 @via_cmdbuf_wait(i32*, i32) #1

declare dso_local i32* @via_get_dma(i32*) #1

declare dso_local i32 @VIA_OUT_RING_QW(i32, i32) #1

declare dso_local i32 @via_align_buffer(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
