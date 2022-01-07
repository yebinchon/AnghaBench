; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_set_transfer_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_set_transfer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@PARM_LINK_BCNTRLD = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@PARM_OPT = common dso_local global i32 0, align 4
@SYNCDIM = common dso_local global i32 0, align 4
@PARM_A_B_CNT = common dso_local global i32 0, align 4
@PARM_CCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edma_set_transfer_params(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @EDMA_CTLR(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @EDMA_CHAN_SLOT(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %20 = load i32, i32* %13, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %18, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %6
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @PARM_LINK_BCNTRLD, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 %31, 16
  %33 = call i32 @edma_parm_modify(i32 %28, i32 %29, i32 %30, i32 65535, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ASYNC, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @PARM_OPT, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SYNCDIM, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @edma_parm_and(i32 %38, i32 %39, i32 %40, i32 %42)
  br label %50

44:                                               ; preds = %27
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @PARM_OPT, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SYNCDIM, align 4
  %49 = call i32 @edma_parm_or(i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @PARM_A_B_CNT, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @edma_parm_write(i32 %51, i32 %52, i32 %53, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @PARM_CCNT, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @edma_parm_write(i32 %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %6
  ret void
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_parm_modify(i32, i32, i32, i32, i32) #1

declare dso_local i32 @edma_parm_and(i32, i32, i32, i32) #1

declare dso_local i32 @edma_parm_or(i32, i32, i32, i32) #1

declare dso_local i32 @edma_parm_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
