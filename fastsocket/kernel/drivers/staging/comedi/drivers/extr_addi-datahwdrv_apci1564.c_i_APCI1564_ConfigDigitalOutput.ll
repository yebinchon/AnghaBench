; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_ConfigDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_ConfigDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Not a valid Data !!! ,Data should be 1 or 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADDIDATA_DISABLE = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@ui_InterruptData = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ConfigDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = call i32 @comedi_error(%struct.comedi_device* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %15, %4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* @ADDIDATA_DISABLE, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* %10, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, -3
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @APCI1564_DIGITAL_OP_INTERRUPT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outl(i32 %63, i64 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* @APCI1564_DIGITAL_OP_INTERRUPT, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* @ui_InterruptData, align 4
  %80 = load i32, i32* @current, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %62, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
