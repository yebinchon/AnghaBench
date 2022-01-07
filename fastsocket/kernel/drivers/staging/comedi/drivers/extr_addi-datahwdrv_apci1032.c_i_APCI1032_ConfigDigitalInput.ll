; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1032.c_i_APCI1032_ConfigDigitalInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1032.c_i_APCI1032_ConfigDigitalInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4
@APCI1032_DIGITAL_IP_INTERRUPT_MODE1 = common dso_local global i64 0, align 8
@APCI1032_DIGITAL_IP_INTERRUPT_MODE2 = common dso_local global i64 0, align 8
@ADDIDATA_OR = common dso_local global i32 0, align 4
@APCI1032_DIGITAL_IP_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1032_ConfigDigitalInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @current, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @APCI1032_DIGITAL_IP_INTERRUPT_MODE1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outl(i32 %31, i64 %36)
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @APCI1032_DIGITAL_IP_INTERRUPT_MODE2, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outl(i32 %38, i64 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ADDIDATA_OR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %20
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @APCI1032_DIGITAL_IP_IRQ, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outl(i32 4, i64 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @APCI1032_DIGITAL_IP_IRQ, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @inl(i64 %61)
  store i32 %62, i32* %9, align 4
  br label %70

63:                                               ; preds = %20
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI1032_DIGITAL_IP_IRQ, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outl(i32 6, i64 %68)
  br label %70

70:                                               ; preds = %63, %50
  br label %96

71:                                               ; preds = %4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, -65536
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, -65536
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @APCI1032_DIGITAL_IP_INTERRUPT_MODE1, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outl(i32 %76, i64 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @APCI1032_DIGITAL_IP_INTERRUPT_MODE2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outl(i32 %83, i64 %88)
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @APCI1032_DIGITAL_IP_IRQ, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outl(i32 0, i64 %94)
  br label %96

96:                                               ; preds = %71, %70
  %97 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  ret i32 %99
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
