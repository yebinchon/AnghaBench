; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rti800.c_rti800_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rti800.c_rti800_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@RTI800_ADCHI = common dso_local global i64 0, align 8
@RTI800_CLRFLAGS = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@RTI800_MUXGAIN = common dso_local global i64 0, align 8
@gaindelay = common dso_local global i32* null, align 8
@RTI800_CONVERT = common dso_local global i64 0, align 8
@RTI800_TIMEOUT = common dso_local global i32 0, align 4
@RTI800_CSR = common dso_local global i64 0, align 8
@RTI800_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rti800: a/d overrun\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RTI800_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rti800: timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@RTI800_ADCLO = common dso_local global i64 0, align 8
@adc_2comp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rti800_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rti800_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_RANGE(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTI800_ADCHI, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RTI800_CLRFLAGS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 0, i64 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 %37, 5
  %39 = or i32 %36, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RTI800_MUXGAIN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %51, i64 %56)
  %58 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %45
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** @gaindelay, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp uge i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i32*, i32** @gaindelay, align 8
  %70 = load i32, i32* %14, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @udelay(i32 %73)
  br label %75

75:                                               ; preds = %62, %45
  br label %76

76:                                               ; preds = %75, %4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %171, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %174

83:                                               ; preds = %77
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RTI800_CONVERT, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outb(i32 0, i64 %88)
  %90 = load i32, i32* @RTI800_TIMEOUT, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %123, %83
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %91
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RTI800_CSR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @inb(i64 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @RTI800_OVERRUN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RTI800_CLRFLAGS, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 0, i64 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %176

115:                                              ; preds = %94
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @RTI800_DONE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %126

121:                                              ; preds = %115
  %122 = call i32 @udelay(i32 1)
  br label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %11, align 4
  br label %91

126:                                              ; preds = %120, %91
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @ETIME, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %176

133:                                              ; preds = %126
  %134 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %135 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RTI800_ADCLO, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @inb(i64 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTI800_ADCHI, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @inb(i64 %148)
  %150 = and i32 15, %149
  %151 = shl i32 %150, 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @adc_2comp, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %133
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = xor i32 %168, 2048
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %163, %133
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %77

174:                                              ; preds = %77
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %174, %129, %105
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
