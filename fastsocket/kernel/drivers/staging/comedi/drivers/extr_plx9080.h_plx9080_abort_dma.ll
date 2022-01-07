; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_plx9080.h_plx9080_abort_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_plx9080.h_plx9080_abort_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLX_DMA1_CS_REG = common dso_local global i32 0, align 4
@PLX_DMA0_CS_REG = common dso_local global i32 0, align 4
@PLX_DMA_EN_BIT = common dso_local global i32 0, align 4
@PLX_DMA_DONE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"plx9080: cancel() timed out waiting for dma %i done clear\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PLX_DMA_ABORT_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"plx9080: cancel() timed out waiting for dma %i done set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @plx9080_abort_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plx9080_abort_dma(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10000, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @PLX_DMA1_CS_REG, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %13, i64 %15
  store i8* %16, i8** %6, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @PLX_DMA0_CS_REG, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @readb(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PLX_DMA_EN_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %88

30:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PLX_DMA_DONE_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp ult i32 %37, 10000
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i1 [ false, %31 ], [ %38, %36 ]
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = call i32 @udelay(i32 1)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @readb(i8* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %31

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 10000
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %88

56:                                               ; preds = %48
  %57 = load i32, i32* @PLX_DMA_ABORT_BIT, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @writeb(i32 %57, i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @readb(i8* %60)
  store i32 %61, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %76, %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @PLX_DMA_DONE_BIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp ult i32 %68, 10000
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ false, %62 ], [ %69, %67 ]
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = call i32 @udelay(i32 1)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @readb(i8* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %62

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 10000
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %51, %29
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @readb(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @writeb(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
