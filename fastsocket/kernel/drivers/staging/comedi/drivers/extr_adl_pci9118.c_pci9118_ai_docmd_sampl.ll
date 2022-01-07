; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_docmd_sampl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_docmd_sampl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"adl_pci9118 EDBG: BGN: pci9118_ai_docmd_sampl(%d,) [%d]\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AdControl_TmrTr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"pci9118_ai_docmd_sampl() mode 2 bug!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AdControl_ExtM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"pci9118_ai_docmd_sampl() mode 4 bug!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"pci9118_ai_docmd_sampl() mode number bug!\0A\00", align 1
@interrupt_pci9118_ai_onesample = common dso_local global i32 0, align 4
@EXTTRG_AI = common dso_local global i32 0, align 4
@Int_Timer = common dso_local global i32 0, align 4
@AdControl_Int = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@START_AI_EXT = common dso_local global i32 0, align 4
@START_AI_INT = common dso_local global i32 0, align 4
@PCI9118_INTCTRL = common dso_local global i64 0, align 8
@PCI9118_ADFUNC = common dso_local global i64 0, align 8
@AdControl_SoftG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"adl_pci9118 EDBG: END: pci9118_ai_docmd_sampl()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_docmd_sampl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_docmd_sampl(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %38 [
    i32 1, label %16
    i32 2, label %22
    i32 3, label %27
    i32 4, label %33
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @AdControl_TmrTr, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_error(%struct.comedi_device* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %150

27:                                               ; preds = %2
  %28 = load i32, i32* @AdControl_ExtM, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i32 @comedi_error(%struct.comedi_device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %150

38:                                               ; preds = %2
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = call i32 @comedi_error(%struct.comedi_device* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %150

43:                                               ; preds = %27, %16
  %44 = load i32, i32* @interrupt_pci9118_ai_onesample, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = load i32, i32* @EXTTRG_AI, align 4
  %54 = call i32 @pci9118_exttrg_add(%struct.comedi_device* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %71

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @Int_Timer, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* @AdControl_Int, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @inl(i64 %81)
  %83 = or i32 %82, 7936
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outl(i32 %83, i64 %88)
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @START_AI_EXT, align 4
  %94 = load i32, i32* @START_AI_INT, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %148, label %98

98:                                               ; preds = %71
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PCI9118_INTCTRL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outl(i32 %101, i64 %106)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI9118_ADFUNC, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outl(i32 %110, i64 %115)
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 3
  br i1 %120, label %121, label %138

121:                                              ; preds = %98
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @start_pacer(%struct.comedi_device* %122, i32 %125, i32 %128, i32 %131)
  %133 = load i32, i32* @AdControl_SoftG, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %121, %98
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PCI9118_INTCTRL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outl(i32 %141, i64 %146)
  br label %148

148:                                              ; preds = %138, %71
  %149 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %38, %33, %22
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pci9118_exttrg_add(%struct.comedi_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
