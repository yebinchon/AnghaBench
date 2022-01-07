; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_align_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_align_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }

@CMDBUF_ALIGNMENT_SIZE = common dso_local global i32 0, align 4
@HC_HEADER2 = common dso_local global i32 0, align 4
@VIA_REG_TRANSET = common dso_local global i32 0, align 4
@VIA_REG_TRANSPACE = common dso_local global i32 0, align 4
@HC_ParaType_PreCR = common dso_local global i32 0, align 4
@CMDBUF_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@HC_SubA_HAGPBpL = common dso_local global i32 0, align 4
@HC_HAGPBpID_MASK = common dso_local global i32 0, align 4
@HC_HAGPBpL_MASK = common dso_local global i32 0, align 4
@HC_SubA_HAGPBpH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32, i32*, i32*, i32)* @via_align_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @via_align_cmd(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = load i32, i32* @CMDBUF_ALIGNMENT_SIZE, align 4
  %24 = mul nsw i32 2, %23
  %25 = call i32 @via_cmdbuf_wait(%struct.TYPE_6__* %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = call i32* @via_get_dma(%struct.TYPE_6__* %27)
  store i32* %28, i32** %17, align 8
  %29 = load i32, i32* @HC_HEADER2, align 4
  %30 = load i32, i32* @VIA_REG_TRANSET, align 4
  %31 = ashr i32 %30, 2
  %32 = shl i32 %31, 12
  %33 = or i32 %29, %32
  %34 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %35 = ashr i32 %34, 2
  %36 = or i32 %33, %35
  %37 = load i32, i32* @HC_ParaType_PreCR, align 4
  %38 = shl i32 %37, 16
  %39 = call i32 @VIA_OUT_RING_QW(i32 %36, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @CMDBUF_ALIGNMENT_SIZE, align 4
  %49 = ashr i32 %48, 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CMDBUF_ALIGNMENT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = ashr i32 %54, 3
  %56 = sub nsw i32 %49, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %26
  %60 = load i32, i32* %9, align 4
  br label %71

61:                                               ; preds = %26
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = sub nsw i32 %66, 8
  %68 = load i32, i32* %18, align 4
  %69 = shl i32 %68, 3
  %70 = add nsw i32 %67, %69
  br label %71

71:                                               ; preds = %61, %59
  %72 = phi i32 [ %60, %59 ], [ %70, %61 ]
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @HC_SubA_HAGPBpL, align 4
  %74 = shl i32 %73, 24
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @HC_HAGPBpID_MASK, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @HC_HAGPBpL_MASK, align 4
  %81 = and i32 %79, %80
  %82 = or i32 %78, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* @HC_SubA_HAGPBpH, align 4
  %84 = shl i32 %83, 24
  %85 = load i32, i32* %14, align 4
  %86 = ashr i32 %85, 24
  %87 = or i32 %84, %86
  store i32 %87, i32* %16, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32* @via_align_buffer(%struct.TYPE_6__* %88, i32* %89, i32 %91)
  store i32* %92, i32** %17, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  %97 = call i32 @VIA_OUT_RING_QW(i32 %93, i32 %95)
  %98 = load i32*, i32** %17, align 8
  ret i32* %98
}

declare dso_local i32 @via_cmdbuf_wait(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @via_get_dma(%struct.TYPE_6__*) #1

declare dso_local i32 @VIA_OUT_RING_QW(i32, i32) #1

declare dso_local i32* @via_align_buffer(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
