; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ReadMoreDigitalInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_i_APCI1564_ReadMoreDigitalInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1564_DIGITAL_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Not a valid Channel number !!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ui_InterruptStatus_1564 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ReadMoreDigitalInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @inl(i64 %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %71 [
    i32 2, label %34
    i32 4, label %43
    i32 8, label %52
    i32 16, label %61
    i32 31, label %70
  ]

34:                                               ; preds = %24
  store i32 3, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul i32 2, %37
  %39 = lshr i32 %36, %38
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %39, %40
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %76

43:                                               ; preds = %24
  store i32 15, i32* %11, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul i32 4, %46
  %48 = lshr i32 %45, %47
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %76

52:                                               ; preds = %24
  store i32 255, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul i32 8, %55
  %57 = lshr i32 %54, %56
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %57, %58
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %76

61:                                               ; preds = %24
  store i32 65535, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul i32 16, %64
  %66 = lshr i32 %63, %65
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %66, %67
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %76

70:                                               ; preds = %24
  br label %76

71:                                               ; preds = %24
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = call i32 @comedi_error(%struct.comedi_device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %90

76:                                               ; preds = %70, %61, %52, %43, %34
  br label %86

77:                                               ; preds = %4
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ui_InterruptStatus_1564, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %76
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %71
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
