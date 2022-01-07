; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ssi.c_i_APCI1710_InsnBitsSSIDigitalIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Ssi.c_i_APCI1710_InsnBitsSSIDigitalIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI1710_SSI_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Selected digital input error\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"IO type wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"The module is not a SSI module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsSSIDigitalIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %15 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CR_AREF(i32 %21)
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %11, align 1
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %15, align 1
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %129

31:                                               ; preds = %4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4294901760
  %42 = load i32, i32* @APCI1710_SSI_COUNTER, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %31
  %46 = load i8, i8* %15, align 1
  %47 = zext i8 %46 to i32
  switch i32 %47, label %123 [
    i32 128, label %48
    i32 129, label %59
    i32 131, label %70
    i32 130, label %104
  ]

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 16
  %54 = load i8, i8* %11, align 1
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 64, %55
  %57 = add nsw i32 %53, %56
  %58 = call i32 @outl(i32 1, i32 %57)
  br label %125

59:                                               ; preds = %45
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 16
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = mul nsw i32 64, %66
  %68 = add nsw i32 %64, %67
  %69 = call i32 @outl(i32 0, i32 %68)
  br label %125

70:                                               ; preds = %45
  %71 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @CR_CHAN(i32 %73)
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %12, align 1
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = bitcast i32* %77 to i8*
  store i8* %78, i8** %13, align 8
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sle i32 %80, 2
  br i1 %81, label %82, label %101

82:                                               ; preds = %70
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i8, i8* %11, align 1
  %88 = zext i8 %87 to i32
  %89 = mul nsw i32 64, %88
  %90 = add nsw i32 %86, %89
  %91 = call i32 @inl(i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = xor i32 %92, -1
  %94 = load i8, i8* %12, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 4, %95
  %97 = lshr i32 %93, %96
  %98 = and i32 %97, 1
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %13, align 8
  store i8 %99, i8* %100, align 1
  br label %103

101:                                              ; preds = %70
  %102 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %82
  br label %125

104:                                              ; preds = %45
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = bitcast i32* %106 to i8*
  store i8* %107, i8** %14, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = mul nsw i32 64, %113
  %115 = add nsw i32 %111, %114
  %116 = call i32 @inl(i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = xor i32 %117, -1
  %119 = lshr i32 %118, 4
  %120 = and i32 %119, 7
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %14, align 8
  store i8 %121, i8* %122, align 1
  br label %125

123:                                              ; preds = %45
  %124 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %104, %103, %59, %48
  br label %128

126:                                              ; preds = %31
  %127 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %125
  br label %131

129:                                              ; preds = %4
  %130 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %128
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
