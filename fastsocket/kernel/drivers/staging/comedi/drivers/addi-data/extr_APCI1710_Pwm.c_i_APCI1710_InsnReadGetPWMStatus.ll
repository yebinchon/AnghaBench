; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_InsnReadGetPWMStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_InsnReadGetPWMStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI1710_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PWM not enabled \0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"PWM not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Tor PWM selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"The module is not a PWM module\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadGetPWMStatus(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CR_AREF(i32 %20)
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %11, align 1
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CR_CHAN(i32 %25)
  %27 = trunc i64 %26 to i8
  store i8 %27, i8* %12, align 1
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %13, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %14, align 8
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %102

37:                                               ; preds = %4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 4294901760
  %48 = load i32, i32* @APCI1710_PWM, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %37
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 12
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = mul nsw i32 20, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 64, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = call i32 @inl(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 16
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = lshr i32 %80, 7
  %82 = and i32 %81, 1
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %13, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i32, i32* %10, align 4
  %86 = lshr i32 %85, 6
  %87 = and i32 %86, 1
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %14, align 8
  store i8 %88, i8* %89, align 1
  br label %92

90:                                               ; preds = %75
  %91 = call i32 @DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %79
  br label %95

93:                                               ; preds = %55
  %94 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %92
  br label %98

96:                                               ; preds = %51
  %97 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %95
  br label %101

99:                                               ; preds = %37
  %100 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %98
  br label %104

102:                                              ; preds = %4
  %103 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
