; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS16_INTE = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@PACING_MASK = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DAS16_CONTROL = common dso_local global i64 0, align 8
@DAS16_MUX = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@das16_pg_none = common dso_local global i64 0, align 8
@das16_gainlists = common dso_local global i32** null, align 8
@DAS16_GAIN = common dso_local global i64 0, align 8
@DAS16_TRIG = common dso_local global i64 0, align 8
@DAS16_TIMEOUT = common dso_local global i32 0, align 4
@DAS16_STATUS = common dso_local global i64 0, align 8
@BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"das16: timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@DAS16_AI_MSB = common dso_local global i64 0, align 8
@DAS16_AI_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %16 = load i32, i32* @DAS16_INTE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @DMA_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* @PACING_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAS16_CONTROL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %30, i64 %35)
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CR_CHAN(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %42 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CR_CHAN(i32 %43)
  %45 = shl i32 %44, 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DAS16_MUX, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 %48, i64 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @das16_pg_none, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %4
  %61 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CR_RANGE(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32**, i32*** @das16_gainlists, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DAS16_GAIN, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %60, %4
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %160, %81
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %82
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DAS16_TRIG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb_p(i32 0, i64 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %111, %88
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @DAS16_TIMEOUT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DAS16_STATUS, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @inb(i64 %104)
  %106 = load i32, i32* @BUSY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  br label %114

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %95

114:                                              ; preds = %109, %95
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @DAS16_TIMEOUT, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* @ETIME, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %165

122:                                              ; preds = %114
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DAS16_AI_MSB, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inb(i64 %127)
  store i32 %128, i32* %14, align 4
  %129 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DAS16_AI_LSB, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @inb(i64 %133)
  store i32 %134, i32* %15, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 12
  br i1 %138, label %139, label %150

139:                                              ; preds = %122
  %140 = load i32, i32* %15, align 4
  %141 = ashr i32 %140, 4
  %142 = and i32 %141, 15
  %143 = load i32, i32* %14, align 4
  %144 = shl i32 %143, 4
  %145 = or i32 %142, %144
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %159

150:                                              ; preds = %122
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %14, align 4
  %153 = shl i32 %152, 8
  %154 = or i32 %151, %153
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %150, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %82

163:                                              ; preds = %82
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %118
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
