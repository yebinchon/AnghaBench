; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@CONTROL1 = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DAS800_CONTROL1 = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@DAS800_MSB = common dso_local global i64 0, align 8
@DAS800_STATUS = common dso_local global i64 0, align 8
@BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@DAS800_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das800_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1000, i32* %16, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = call i32 @disable_das800(%struct.comedi_device* %18)
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 1
  %26 = load i64, i64* %17, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* @CONTROL1, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DAS800_GAIN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %28, i64 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DAS800_CONTROL1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1
  %48 = load i64, i64* %17, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CR_RANGE(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %58, label %64

58:                                               ; preds = %4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 7
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %58, %4
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, 15
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DAS800_GAIN, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 %67, i64 %72)
  %74 = call i32 @udelay(i32 5)
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %159, %64
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %162

81:                                               ; preds = %75
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DAS800_MSB, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb_p(i32 0, i64 %86)
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %104, %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DAS800_STATUS, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @inb(i64 %97)
  %99 = load i32, i32* @BUSY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %92
  br label %107

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %88

107:                                              ; preds = %102, %88
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = call i32 @comedi_error(%struct.comedi_device* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @ETIME, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %164

116:                                              ; preds = %107
  %117 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %118 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DAS800_LSB, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @inb(i64 %121)
  store i32 %122, i32* %14, align 4
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DAS800_MSB, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inb(i64 %127)
  store i32 %128, i32* %15, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %133, label %149

133:                                              ; preds = %116
  %134 = load i32, i32* %14, align 4
  %135 = ashr i32 %134, 4
  %136 = and i32 %135, 255
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  %142 = shl i32 %141, 4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %158

149:                                              ; preds = %116
  %150 = load i32, i32* %15, align 4
  %151 = shl i32 %150, 8
  %152 = load i32, i32* %14, align 4
  %153 = or i32 %151, %152
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %133
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %75

162:                                              ; preds = %75
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %111
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @disable_das800(%struct.comedi_device*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
