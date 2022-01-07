; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3120.c_i_APCI3120_InsnWriteAnalogOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3120.c_i_APCI3120_InsnWriteAnalogOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3120_RD_STATUS = common dso_local global i64 0, align 8
@APCI3120_ANALOG_OUTPUT_1 = common dso_local global i64 0, align 8
@APCI3120_ANALOG_OUTPUT_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_InsnWriteAnalogOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_RANGE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 3
  %30 = shl i32 %29, 14
  %31 = and i32 %30, 49152
  %32 = or i32 %31, 8192
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %35, 8191
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  br label %49

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 3
  %43 = shl i32 %42, 14
  %44 = and i32 %43, 49152
  %45 = or i32 %44, 8192
  %46 = or i32 %45, 8192
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %27
  br label %61

50:                                               ; preds = %4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 14
  %54 = and i32 %53, 49152
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %49
  br label %62

62:                                               ; preds = %73, %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @APCI3120_RD_STATUS, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @inw(i64 %67)
  %69 = trunc i64 %68 to i16
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 1
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %11, align 2
  br label %73

73:                                               ; preds = %62
  %74 = load i16, i16* %11, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %62, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp ule i32 %78, 3
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = trunc i32 %83 to i16
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @APCI3120_ANALOG_OUTPUT_1, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outw(i16 zeroext %84, i64 %89)
  br label %102

91:                                               ; preds = %77
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = trunc i32 %94 to i16
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @APCI3120_ANALOG_OUTPUT_2, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @outw(i16 zeroext %95, i64 %100)
  br label %102

102:                                              ; preds = %91, %80
  %103 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  ret i32 %105
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
