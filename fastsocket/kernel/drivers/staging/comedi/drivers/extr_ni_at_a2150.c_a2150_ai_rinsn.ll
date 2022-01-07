; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@a2150_ai_rinsn.timeout = internal constant i32 100000, align 4
@a2150_ai_rinsn.filter_delay = internal constant i32 36, align 4
@FIFO_RESET_REG = common dso_local global i64 0, align 8
@AC0_BIT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AC1_BIT = common dso_local global i32 0, align 4
@CONFIG_REG = common dso_local global i64 0, align 8
@DMA_INTR_EN_BIT = common dso_local global i32 0, align 4
@DMA_EN_BIT = common dso_local global i32 0, align 4
@IRQ_DMA_CNTRL_REG = common dso_local global i64 0, align 8
@TRIGGER_REG = common dso_local global i64 0, align 8
@FIFO_START_REG = common dso_local global i64 0, align 8
@STATUS_REG = common dso_local global i64 0, align 8
@FNE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@FIFO_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @a2150_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FIFO_RESET_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i32 0, i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  %23 = call i64 @a2150_set_chanlist(%struct.comedi_device* %18, i32 %22, i32 1)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %182

26:                                               ; preds = %4
  %27 = load i32, i32* @AC0_BIT, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @AC1_BIT, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CONFIG_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i32 %41, i64 %46)
  %48 = load i32, i32* @DMA_INTR_EN_BIT, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @DMA_EN_BIT, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IRQ_DMA_CNTRL_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outw(i32 %59, i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TRIGGER_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outw(i32 0, i64 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FIFO_START_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 0, i64 %76)
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %116, %26
  %79 = load i32, i32* %11, align 4
  %80 = icmp ult i32 %79, 36
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %10, align 4
  %84 = icmp ult i32 %83, 100000
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STATUS_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inw(i64 %90)
  %92 = load i32, i32* @FNE_BIT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %101

96:                                               ; preds = %85
  %97 = call i32 @udelay(i32 1)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %82

101:                                              ; preds = %95, %82
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 100000
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = call i32 @comedi_error(%struct.comedi_device* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @ETIME, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %182

109:                                              ; preds = %101
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FIFO_DATA_REG, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @inw(i64 %114)
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %78

119:                                              ; preds = %78
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %171, %119
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i32, i32* %10, align 4
  %129 = icmp ult i32 %128, 100000
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @STATUS_REG, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @inw(i64 %135)
  %137 = load i32, i32* @FNE_BIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %146

141:                                              ; preds = %130
  %142 = call i32 @udelay(i32 1)
  br label %143

143:                                              ; preds = %141
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %127

146:                                              ; preds = %140, %127
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 100000
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = call i32 @comedi_error(%struct.comedi_device* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %152 = load i32, i32* @ETIME, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %5, align 4
  br label %182

154:                                              ; preds = %146
  %155 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %156 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @FIFO_DATA_REG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @inw(i64 %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %11, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %169, 32768
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %154
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %120

174:                                              ; preds = %120
  %175 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @FIFO_RESET_REG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outw(i32 0, i64 %179)
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %174, %149, %104, %25
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @a2150_set_chanlist(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
