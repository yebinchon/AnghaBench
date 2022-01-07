; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_clean_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_clean_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"EDMA: EMR%d %08x\0A\00", align 1
@EDMA_EMR = common dso_local global i32 0, align 4
@SH_ECR = common dso_local global i32 0, align 4
@EDMA_EMCR = common dso_local global i32 0, align 4
@SH_SECR = common dso_local global i32 0, align 4
@EDMA_CCERRCLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edma_clean_channel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @EDMA_CTLR(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @EDMA_CHAN_SLOT(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %10, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = lshr i32 %20, 5
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 31
  %24 = shl i32 1, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @EDMA_EMR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @edma_read_array(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SH_ECR, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @edma_shadow0_write_array(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @EDMA_EMCR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @edma_write_array(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SH_SECR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @edma_shadow0_write_array(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @EDMA_CCERRCLR, align 4
  %48 = call i32 @edma_write(i32 %46, i32 %47, i32 65539)
  br label %49

49:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @edma_read_array(i32, i32, i32) #1

declare dso_local i32 @edma_shadow0_write_array(i32, i32, i32, i32) #1

declare dso_local i32 @edma_write_array(i32, i32, i32, i32) #1

declare dso_local i32 @edma_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
