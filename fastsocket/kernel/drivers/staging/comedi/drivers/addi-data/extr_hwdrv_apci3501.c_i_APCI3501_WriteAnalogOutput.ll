; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3501.c_i_APCI3501_WriteAnalogOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3501.c_i_APCI3501_WriteAnalogOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@MODE1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0AIn WriteAnalogOutput :: Not Valid Data\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\0AIn WriteAnalogOutput :: Not Valid Channel\0A\00", align 1
@APCI3501_ANALOG_OUTPUT = common dso_local global i64 0, align 8
@APCI3501_AO_PROG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3501_WriteAnalogOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MODE1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  store i32 -2147483648, i32* %11, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %28, 16384
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22
  %31 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  br label %44

33:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ugt i32 %39, 8192
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %48, 7
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44
  %51 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @inl(i64 %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %62, %52
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inl(i64 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %59

72:                                               ; preds = %59
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = zext i32 %80 to i64
  %82 = and i64 %81, 2147483392
  %83 = trunc i64 %82 to i32
  %84 = or i32 %77, %83
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* @APCI3501_AO_PROG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outl(i32 %87, i64 %94)
  br label %96

96:                                               ; preds = %75, %72
  %97 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  ret i32 %99
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
