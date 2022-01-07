; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci2016.c_i_APCI2016_BitsDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci2016.c_i_APCI2016_BitsDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Invalid Channel Numbers !!!, Channel Numbers must be between 0 and 15\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid Data[0] value !!!, Data[0] should be 0 or 1\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2016_DIGITAL_OP_RW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\0ASpecified channel not supported \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2016_BitsDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %16 = load i32, i32* %11, align 4
  %17 = icmp ult i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ugt i32 %19, 15
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = call i32 @comedi_error(%struct.comedi_device* %22, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %110

26:                                               ; preds = %18
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = call i32 @comedi_error(%struct.comedi_device* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %110

41:                                               ; preds = %31, %26
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @APCI2016_DIGITAL_OP_RW, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inw(i64 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = lshr i32 %56, %57
  %59 = and i32 %58, 1
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %106

61:                                               ; preds = %41
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %103

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %97 [
    i32 2, label %66
    i32 4, label %76
    i32 8, label %86
    i32 15, label %96
  ]

66:                                               ; preds = %64
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = mul i32 2, %71
  %73 = lshr i32 %68, %72
  %74 = and i32 %73, 3
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %102

76:                                               ; preds = %64
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 4, %81
  %83 = lshr i32 %78, %82
  %84 = and i32 %83, 15
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %102

86:                                               ; preds = %64
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = mul i32 8, %91
  %93 = lshr i32 %88, %92
  %94 = and i32 %93, 255
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %102

96:                                               ; preds = %64
  br label %102

97:                                               ; preds = %64
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = call i32 @comedi_error(%struct.comedi_device* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %110

102:                                              ; preds = %96, %86, %76, %66
  br label %105

103:                                              ; preds = %61
  %104 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %102
  br label %106

106:                                              ; preds = %105, %54
  %107 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %108 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %97, %36, %21
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
