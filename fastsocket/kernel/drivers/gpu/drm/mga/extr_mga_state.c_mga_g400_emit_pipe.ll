; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g400_emit_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_g400_emit_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@MGA_WIADDR2 = common dso_local global i64 0, align 8
@MGA_WMODE_SUSPEND = common dso_local global i32 0, align 4
@MGA_DMAPAD = common dso_local global i64 0, align 8
@MGA_T2 = common dso_local global i32 0, align 4
@MGA_WVRTXSZ = common dso_local global i64 0, align 8
@MGA_WACCEPTSEQ = common dso_local global i64 0, align 8
@MGA_YDST = common dso_local global i64 0, align 8
@MGA_FXLEFT = common dso_local global i64 0, align 8
@MGA_FXRIGHT = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i64 0, align 8
@MGA_DWGCTL_FLUSH = common dso_local global i32 0, align 4
@MGA_LEN = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@MGA_DWGSYNC = common dso_local global i64 0, align 8
@MGA_TEXCTL2 = common dso_local global i64 0, align 8
@MGA_G400_TC2_MAGIC = common dso_local global i32 0, align 4
@MGA_DUALTEX = common dso_local global i32 0, align 4
@MGA_WFLAG = common dso_local global i64 0, align 8
@MGA_WFLAG1 = common dso_local global i64 0, align 8
@MGA_WR56 = common dso_local global i64 0, align 8
@MGA_G400_WR56_MAGIC = common dso_local global i32 0, align 4
@MGA_WR49 = common dso_local global i64 0, align 8
@MGA_WR57 = common dso_local global i64 0, align 8
@MGA_WR53 = common dso_local global i64 0, align 8
@MGA_WR61 = common dso_local global i64 0, align 8
@MGA_WR54 = common dso_local global i64 0, align 8
@MGA_G400_WR_MAGIC = common dso_local global i32 0, align 4
@MGA_WR62 = common dso_local global i64 0, align 8
@MGA_WR52 = common dso_local global i64 0, align 8
@MGA_WR60 = common dso_local global i64 0, align 8
@MGA_WMODE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mga_g400_emit_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_g400_emit_pipe(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @DMA_LOCALS, align 4
  %12 = call i32 @BEGIN_DMA(i32 10)
  %13 = load i64, i64* @MGA_WIADDR2, align 8
  %14 = load i32, i32* @MGA_WMODE_SUSPEND, align 4
  %15 = load i64, i64* @MGA_DMAPAD, align 8
  %16 = load i64, i64* @MGA_DMAPAD, align 8
  %17 = load i64, i64* @MGA_DMAPAD, align 8
  %18 = call i32 @DMA_BLOCK(i64 %13, i32 %14, i64 %15, i32 0, i64 %16, i32 0, i64 %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MGA_T2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load i64, i64* @MGA_WVRTXSZ, align 8
  %25 = load i64, i64* @MGA_DMAPAD, align 8
  %26 = load i64, i64* @MGA_DMAPAD, align 8
  %27 = load i64, i64* @MGA_DMAPAD, align 8
  %28 = call i32 @DMA_BLOCK(i64 %24, i32 7689, i64 %25, i32 0, i64 %26, i32 0, i64 %27, i32 0)
  %29 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %30 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %31 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %32 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %33 = call i32 @DMA_BLOCK(i64 %29, i32 0, i64 %30, i32 0, i64 %31, i32 0, i64 %32, i32 503316480)
  br label %80

34:                                               ; preds = %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MGA_T2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load i64, i64* @MGA_YDST, align 8
  %43 = load i64, i64* @MGA_FXLEFT, align 8
  %44 = load i64, i64* @MGA_FXRIGHT, align 8
  %45 = load i64, i64* @MGA_DWGCTL, align 8
  %46 = load i32, i32* @MGA_DWGCTL_FLUSH, align 4
  %47 = call i32 @DMA_BLOCK(i64 %42, i32 0, i64 %43, i32 0, i64 %44, i32 1, i64 %45, i32 %46)
  %48 = load i64, i64* @MGA_LEN, align 8
  %49 = load i64, i64* @MGA_EXEC, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* @MGA_DWGSYNC, align 8
  %52 = load i64, i64* @MGA_TEXCTL2, align 8
  %53 = load i32, i32* @MGA_G400_TC2_MAGIC, align 4
  %54 = load i64, i64* @MGA_LEN, align 8
  %55 = load i64, i64* @MGA_EXEC, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @DMA_BLOCK(i64 %50, i32 1, i64 %51, i32 28672, i64 %52, i32 %53, i64 %56, i32 0)
  %58 = load i64, i64* @MGA_TEXCTL2, align 8
  %59 = load i32, i32* @MGA_DUALTEX, align 4
  %60 = load i32, i32* @MGA_G400_TC2_MAGIC, align 4
  %61 = or i32 %59, %60
  %62 = load i64, i64* @MGA_LEN, align 8
  %63 = load i64, i64* @MGA_EXEC, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @MGA_TEXCTL2, align 8
  %66 = load i32, i32* @MGA_G400_TC2_MAGIC, align 4
  %67 = load i64, i64* @MGA_DMAPAD, align 8
  %68 = call i32 @DMA_BLOCK(i64 %58, i32 %61, i64 %64, i32 0, i64 %65, i32 %66, i64 %67, i32 0)
  br label %69

69:                                               ; preds = %41, %34
  %70 = load i64, i64* @MGA_WVRTXSZ, align 8
  %71 = load i64, i64* @MGA_DMAPAD, align 8
  %72 = load i64, i64* @MGA_DMAPAD, align 8
  %73 = load i64, i64* @MGA_DMAPAD, align 8
  %74 = call i32 @DMA_BLOCK(i64 %70, i32 6151, i64 %71, i32 0, i64 %72, i32 0, i64 %73, i32 0)
  %75 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %76 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %77 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %78 = load i64, i64* @MGA_WACCEPTSEQ, align 8
  %79 = call i32 @DMA_BLOCK(i64 %75, i32 0, i64 %76, i32 0, i64 %77, i32 0, i64 %78, i32 402653184)
  br label %80

80:                                               ; preds = %69, %23
  %81 = load i64, i64* @MGA_WFLAG, align 8
  %82 = load i64, i64* @MGA_WFLAG1, align 8
  %83 = load i64, i64* @MGA_WR56, align 8
  %84 = load i32, i32* @MGA_G400_WR56_MAGIC, align 4
  %85 = load i64, i64* @MGA_DMAPAD, align 8
  %86 = call i32 @DMA_BLOCK(i64 %81, i32 0, i64 %82, i32 0, i64 %83, i32 %84, i64 %85, i32 0)
  %87 = load i64, i64* @MGA_WR49, align 8
  %88 = load i64, i64* @MGA_WR57, align 8
  %89 = load i64, i64* @MGA_WR53, align 8
  %90 = load i64, i64* @MGA_WR61, align 8
  %91 = call i32 @DMA_BLOCK(i64 %87, i32 0, i64 %88, i32 0, i64 %89, i32 0, i64 %90, i32 0)
  %92 = load i64, i64* @MGA_WR54, align 8
  %93 = load i32, i32* @MGA_G400_WR_MAGIC, align 4
  %94 = load i64, i64* @MGA_WR62, align 8
  %95 = load i32, i32* @MGA_G400_WR_MAGIC, align 4
  %96 = load i64, i64* @MGA_WR52, align 8
  %97 = load i32, i32* @MGA_G400_WR_MAGIC, align 4
  %98 = load i64, i64* @MGA_WR60, align 8
  %99 = load i32, i32* @MGA_G400_WR_MAGIC, align 4
  %100 = call i32 @DMA_BLOCK(i64 %92, i32 %93, i64 %94, i32 %95, i64 %96, i32 %97, i64 %98, i32 %99)
  %101 = load i64, i64* @MGA_DMAPAD, align 8
  %102 = load i64, i64* @MGA_DMAPAD, align 8
  %103 = load i64, i64* @MGA_DMAPAD, align 8
  %104 = load i64, i64* @MGA_WIADDR2, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MGA_WMODE_START, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %113, %116
  %118 = call i32 @DMA_BLOCK(i64 %101, i32 -1, i64 %102, i32 -1, i64 %103, i32 -1, i64 %104, i32 %117)
  %119 = call i32 (...) @ADVANCE_DMA()
  ret void
}

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i64, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
