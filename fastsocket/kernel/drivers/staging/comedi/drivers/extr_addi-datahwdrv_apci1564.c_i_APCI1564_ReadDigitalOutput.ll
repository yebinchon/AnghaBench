; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_ReadDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_ReadDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_RW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\0ASpecified channel not supported \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_ReadDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inl(i64 %25)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = lshr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %92

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %89

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %83 [
    i32 2, label %42
    i32 4, label %52
    i32 8, label %62
    i32 16, label %72
    i32 31, label %82
  ]

42:                                               ; preds = %40
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 2, %47
  %49 = lshr i32 %44, %48
  %50 = and i32 %49, 3
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = mul i32 4, %57
  %59 = lshr i32 %54, %58
  %60 = and i32 %59, 15
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %88

62:                                               ; preds = %40
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 8, %67
  %69 = lshr i32 %64, %68
  %70 = and i32 %69, 255
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %88

72:                                               ; preds = %40
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = mul i32 16, %77
  %79 = lshr i32 %74, %78
  %80 = and i32 %79, 65535
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %88

82:                                               ; preds = %40
  br label %88

83:                                               ; preds = %40
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = call i32 @comedi_error(%struct.comedi_device* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %96

88:                                               ; preds = %82, %72, %62, %52, %42
  br label %91

89:                                               ; preds = %37
  %90 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %88
  br label %92

92:                                               ; preds = %91, %30
  %93 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %94 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
