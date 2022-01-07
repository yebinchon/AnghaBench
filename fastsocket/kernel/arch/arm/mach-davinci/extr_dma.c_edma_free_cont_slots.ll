; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_free_cont_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_free_cont_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@edmacc_regs_base = common dso_local global i64* null, align 8
@dummy_paramset = common dso_local global i32 0, align 4
@PARM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edma_free_cont_slots(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @EDMA_CTLR(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @EDMA_CHAN_SLOT(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %12, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %22, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %21, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %69, %37
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %41, %42
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @EDMA_CTLR(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @EDMA_CHAN_SLOT(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i64*, i64** @edmacc_regs_base, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @PARM_OFFSET(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* @PARM_SIZE, align 4
  %59 = call i32 @memcpy_toio(i64 %57, i32* @dummy_paramset, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clear_bit(i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %39

72:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i64 @PARM_OFFSET(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
