; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ConfigDigitalInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ConfigDigitalInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_IP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_INTERRUPT_MODE1 = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_INTERRUPT_MODE2 = common dso_local global i64 0, align 8
@ADDIDATA_OR = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_IP_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ConfigDigitalInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @current, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 %32, i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outl(i32 %43, i64 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ADDIDATA_OR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %17
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 4, i64 %64)
  br label %75

66:                                               ; preds = %17
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outl(i32 6, i64 %73)
  br label %75

75:                                               ; preds = %66, %57
  br label %101

76:                                               ; preds = %4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE1, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outl(i32 0, i64 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_MODE2, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outl(i32 0, i64 %91)
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outl(i32 0, i64 %99)
  br label %101

101:                                              ; preds = %76, %75
  %102 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  ret i32 %104
}

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
