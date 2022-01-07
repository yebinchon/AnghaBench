; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_xfer_verbose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_xfer_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_UDMA_7 = common dso_local global i32 0, align 4
@udma_str = common dso_local global i8** null, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_4 = common dso_local global i32 0, align 4
@mwdma_str = common dso_local global i8** null, align 8
@XFER_SW_DMA_0 = common dso_local global i32 0, align 4
@XFER_SW_DMA_2 = common dso_local global i32 0, align 4
@swdma_str = common dso_local global i8** null, align 8
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_6 = common dso_local global i32 0, align 4
@pio_str = common dso_local global i8** null, align 8
@XFER_PIO_SLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PIO SLOW\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"XFER ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ide_xfer_verbose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 15
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @XFER_UDMA_0, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @XFER_UDMA_7, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i8**, i8*** @udma_str, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  br label %73

20:                                               ; preds = %10, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @XFER_MW_DMA_0, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @XFER_MW_DMA_4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8**, i8*** @mwdma_str, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %72

34:                                               ; preds = %24, %20
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @XFER_SW_DMA_0, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @XFER_SW_DMA_2, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8**, i8*** @swdma_str, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %3, align 8
  br label %71

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @XFER_PIO_0, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @XFER_PIO_6, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8**, i8*** @pio_str, align 8
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  br label %70

63:                                               ; preds = %52, %48
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @XFER_PIO_SLOW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %69

68:                                               ; preds = %63
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %28
  br label %73

73:                                               ; preds = %72, %14
  %74 = load i8*, i8** %3, align 8
  ret i8* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
