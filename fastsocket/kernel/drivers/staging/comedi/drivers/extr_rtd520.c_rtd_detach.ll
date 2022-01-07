; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64, i64, i64, i64, i32*, i32, i32**, i32* }
%struct.comedi_device = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"comedi%d: rtd520: removing (%ld ints)\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"(int status 0x%x, overrun status 0x%x, fifo status 0x%x)...\0A\00", align 1
@ICS_PLIE = common dso_local global i32 0, align 4
@ICS_DMA0_E = common dso_local global i32 0, align 4
@ICS_DMA1_E = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"comedi%d: rtd520: removed.\0A\00", align 1
@DMA_CHAIN_COUNT = common dso_local global i32 0, align 4
@ICS_PIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @rtd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i64 [ %11, %8 ], [ 0, %12 ]
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = call i32 @RtdInterruptStatus(%struct.comedi_device* %25)
  %27 = and i32 65535, %26
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = call i32 @RtdInterruptOverrunStatus(%struct.comedi_device* %28)
  %30 = and i32 65535, %29
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = call i32 @RtdFifoStatus(%struct.comedi_device* %31)
  %33 = and i32 65535, %32
  %34 = xor i32 %33, 26214
  %35 = call i32 (i8*, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %24, %19, %13
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %126

39:                                               ; preds = %36
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = call i32 @RtdResetBoard(%struct.comedi_device* %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = call i32 @RtdInterruptMask(%struct.comedi_device* %47, i32 0)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %50 = call i32 @RtdInterruptClearMask(%struct.comedi_device* %49, i32 -1)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = call i32 @RtdInterruptClear(%struct.comedi_device* %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = call i32 @RtdPlxInterruptRead(%struct.comedi_device* %60)
  %62 = load i32, i32* @ICS_PLIE, align 4
  %63 = load i32, i32* @ICS_DMA0_E, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ICS_DMA1_E, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %61, %67
  %69 = call i32 @RtdPlxInterruptWrite(%struct.comedi_device* %59, i32 %68)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = call i32 @free_irq(i64 %72, %struct.comedi_device* %73)
  br label %75

75:                                               ; preds = %58, %53
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @iounmap(i64 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @iounmap(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @iounmap(i64 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @comedi_pci_disable(i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @pci_dev_put(i64 %123)
  br label %125

125:                                              ; preds = %120, %105
  br label %126

126:                                              ; preds = %125, %36
  %127 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @RtdInterruptStatus(%struct.comedi_device*) #1

declare dso_local i32 @RtdInterruptOverrunStatus(%struct.comedi_device*) #1

declare dso_local i32 @RtdFifoStatus(%struct.comedi_device*) #1

declare dso_local i32 @RtdResetBoard(%struct.comedi_device*) #1

declare dso_local i32 @RtdInterruptMask(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptClearMask(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdInterruptClear(%struct.comedi_device*) #1

declare dso_local i32 @RtdPlxInterruptWrite(%struct.comedi_device*, i32) #1

declare dso_local i32 @RtdPlxInterruptRead(%struct.comedi_device*) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
