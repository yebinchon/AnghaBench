; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1dma.c_b1dma_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1dma.c_b1dma_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@AMCC_MCSR = common dso_local global i32 0, align 4
@AMCC_RXLEN = common dso_local global i32 0, align 4
@AMCC_TXLEN = common dso_local global i32 0, align 4
@AMCC_INTCSR = common dso_local global i32 0, align 4
@AMCC_RXPTR = common dso_local global i32 0, align 4
@AMCC_TXPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @b1dma_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b1dma_detect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @AMCC_MCSR, align 4
  %6 = call i32 @b1dma_writel(%struct.TYPE_5__* %4, i32 0, i32 %5)
  %7 = call i32 @mdelay(i32 10)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @AMCC_MCSR, align 4
  %10 = call i32 @b1dma_writel(%struct.TYPE_5__* %8, i32 251658240, i32 %9)
  %11 = call i32 @mdelay(i32 10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* @AMCC_MCSR, align 4
  %14 = call i32 @b1dma_writel(%struct.TYPE_5__* %12, i32 0, i32 %13)
  %15 = call i32 @mdelay(i32 42)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @AMCC_RXLEN, align 4
  %18 = call i32 @b1dma_writel(%struct.TYPE_5__* %16, i32 0, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load i32, i32* @AMCC_TXLEN, align 4
  %21 = call i32 @b1dma_writel(%struct.TYPE_5__* %19, i32 0, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AMCC_INTCSR, align 4
  %29 = call i32 @b1dma_writel(%struct.TYPE_5__* %24, i32 %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load i32, i32* @AMCC_MCSR, align 4
  %32 = call i32 @b1dma_readl(%struct.TYPE_5__* %30, i32 %31)
  %33 = icmp ne i32 %32, 230
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %122

35:                                               ; preds = %1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i32, i32* @AMCC_RXPTR, align 4
  %38 = call i32 @b1dma_writel(%struct.TYPE_5__* %36, i32 -1, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load i32, i32* @AMCC_TXPTR, align 4
  %41 = call i32 @b1dma_writel(%struct.TYPE_5__* %39, i32 -1, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = load i32, i32* @AMCC_RXPTR, align 4
  %44 = call i32 @b1dma_readl(%struct.TYPE_5__* %42, i32 %43)
  %45 = icmp ne i32 %44, -4
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i32, i32* @AMCC_TXPTR, align 4
  %49 = call i32 @b1dma_readl(%struct.TYPE_5__* %47, i32 %48)
  %50 = icmp ne i32 %49, -4
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %35
  store i32 2, i32* %2, align 4
  br label %122

52:                                               ; preds = %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = load i32, i32* @AMCC_RXPTR, align 4
  %55 = call i32 @b1dma_writel(%struct.TYPE_5__* %53, i32 0, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load i32, i32* @AMCC_TXPTR, align 4
  %58 = call i32 @b1dma_writel(%struct.TYPE_5__* %56, i32 0, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i32, i32* @AMCC_RXPTR, align 4
  %61 = call i32 @b1dma_readl(%struct.TYPE_5__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = load i32, i32* @AMCC_TXPTR, align 4
  %66 = call i32 @b1dma_readl(%struct.TYPE_5__* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %52
  store i32 3, i32* %2, align 4
  br label %122

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @t1outp(i32 %72, i32 16, i32 0)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @t1outp(i32 %76, i32 7, i32 0)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @t1outp(i32 %80, i32 2, i32 2)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @t1outp(i32 %84, i32 3, i32 2)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @t1inp(i32 %88, i32 2)
  %90 = and i32 %89, 254
  %91 = icmp ne i32 %90, 2
  br i1 %91, label %98, label %92

92:                                               ; preds = %69
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @t1inp(i32 %95, i32 3)
  %97 = icmp ne i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %69
  store i32 4, i32* %2, align 4
  br label %122

99:                                               ; preds = %92
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @t1outp(i32 %102, i32 2, i32 0)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @t1outp(i32 %106, i32 3, i32 0)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @t1inp(i32 %110, i32 2)
  %112 = and i32 %111, 254
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %99
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @t1inp(i32 %117, i32 3)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %99
  store i32 5, i32* %2, align 4
  br label %122

121:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %120, %98, %68, %51, %34
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @b1dma_writel(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @b1dma_readl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @t1outp(i32, i32, i32) #1

declare dso_local i32 @t1inp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
