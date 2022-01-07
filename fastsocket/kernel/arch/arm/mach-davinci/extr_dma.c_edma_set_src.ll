; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_set_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@PARM_OPT = common dso_local global i32 0, align 4
@EDMA_FWID = common dso_local global i32 0, align 4
@SAM = common dso_local global i32 0, align 4
@PARM_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edma_set_src(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @EDMA_CTLR(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @EDMA_CHAN_SLOT(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %15, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PARM_OPT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @edma_parm_read(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @EDMA_FWID, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @SAM, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 8
  %40 = or i32 %36, %39
  %41 = or i32 %35, %40
  store i32 %41, i32* %10, align 4
  br label %47

42:                                               ; preds = %24
  %43 = load i32, i32* @SAM, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %31
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PARM_OPT, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @edma_parm_write(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @PARM_SRC, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @edma_parm_write(i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %4
  ret void
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_parm_read(i32, i32, i32) #1

declare dso_local i32 @edma_parm_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
