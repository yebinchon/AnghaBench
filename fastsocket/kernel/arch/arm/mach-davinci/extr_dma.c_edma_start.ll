; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"EDMA: ESR%d %08x\0A\00", align 1
@SH_ESR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EDMA: ER%d %08x\0A\00", align 1
@SH_ER = common dso_local global i32 0, align 4
@EDMA_EMCR = common dso_local global i32 0, align 4
@SH_SECR = common dso_local global i32 0, align 4
@SH_EESR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"EDMA: EER%d %08x\0A\00", align 1
@SH_EER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edma_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @EDMA_CTLR(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @EDMA_CHAN_SLOT(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %11, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = lshr i32 %21, 5
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 31
  %25 = shl i32 1, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @test_bit(i32 %26, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SH_ESR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @edma_shadow0_read_array(i32 %38, i32 %39, i32 %40)
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SH_ESR, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @edma_shadow0_write_array(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %79

48:                                               ; preds = %20
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SH_ER, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @edma_shadow0_read_array(i32 %50, i32 %51, i32 %52)
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @EDMA_EMCR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @edma_write_array(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SH_SECR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @edma_shadow0_write_array(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @SH_EESR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @edma_shadow0_write_array(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SH_EER, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @edma_shadow0_read_array(i32 %71, i32 %72, i32 %73)
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74)
  store i32 0, i32* %2, align 4
  br label %79

76:                                               ; preds = %1
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %48, %36
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @edma_shadow0_read_array(i32, i32, i32) #1

declare dso_local i32 @edma_shadow0_write_array(i32, i32, i32, i32) #1

declare dso_local i32 @edma_write_array(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
