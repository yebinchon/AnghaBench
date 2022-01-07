; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_ConfigDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_ConfigDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Not a valid Data !!! ,Data should be 1 or 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4
@ADDIDATA_DISABLE = common dso_local global i32 0, align 4
@APCI2032_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@ui_InterruptData = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2032_ConfigDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %11 = load i32, i32* @current, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = call i32 @comedi_error(%struct.comedi_device* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %18, %4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @ADDIDATA_DISABLE, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, 2
  store i32 %61, i32* %10, align 4
  br label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, -3
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI2032_DIGITAL_OP_INTERRUPT, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outl(i32 %66, i64 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @APCI2032_DIGITAL_OP_INTERRUPT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @inl(i64 %77)
  store i32 %78, i32* @ui_InterruptData, align 4
  %79 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %65, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
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
