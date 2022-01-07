; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@UQEN = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@SD = common dso_local global i32 0, align 4
@AREF_COMMON = common dso_local global i32 0, align 4
@CMEN = common dso_local global i32 0, align 4
@UNIPOLAR = common dso_local global i32 0, align 4
@UB = common dso_local global i32 0, align 4
@DAS1800_CONTROL_C = common dso_local global i64 0, align 8
@CVEN = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@DAS1800_CONTROL_A = common dso_local global i64 0, align 8
@FFEN = common dso_local global i32 0, align 4
@QRAM = common dso_local global i32 0, align 4
@DAS1800_SELECT = common dso_local global i64 0, align 8
@DAS1800_QRAM_ADDRESS = common dso_local global i64 0, align 8
@DAS1800_QRAM = common dso_local global i64 0, align 8
@ADC = common dso_local global i32 0, align 4
@DAS1800_FIFO = common dso_local global i64 0, align 8
@FNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@ETIME = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das1800_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1000, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_AREF(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @UQEN, align 4
  %25 = load i32, i32* %18, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @AREF_DIFF, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @SD, align 4
  %32 = load i32, i32* %18, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @AREF_COMMON, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @CMEN, align 4
  %40 = load i32, i32* %18, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CR_RANGE(i32 %45)
  %47 = load i32, i32* @UNIPOLAR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @UB, align 4
  %52 = load i32, i32* %18, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DAS1800_CONTROL_C, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i32 %55, i64 %60)
  %62 = load i32, i32* @CVEN, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DAS1800_STATUS, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 0, i64 %73)
  %75 = load i32, i32* @FFEN, align 4
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 %75, i64 %80)
  %82 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %83 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CR_CHAN(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %87 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @CR_RANGE(i32 %88)
  %90 = and i32 %89, 3
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %91, %93
  store i32 %94, i32* %15, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %19, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load i32, i32* @QRAM, align 4
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DAS1800_SELECT, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %99, i64 %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DAS1800_QRAM_ADDRESS, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 0, i64 %110)
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DAS1800_QRAM, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outw(i32 %112, i64 %117)
  %119 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %120 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DAS1800_QRAM_ADDRESS, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 0, i64 %123)
  %125 = load i32, i32* @ADC, align 4
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DAS1800_SELECT, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 %125, i64 %130)
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %201, %54
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %135 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %204

138:                                              ; preds = %132
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DAS1800_FIFO, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 0, i64 %143)
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %161, %138
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %145
  %150 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DAS1800_STATUS, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @inb(i64 %154)
  %156 = load i32, i32* @FNE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %164

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %145

164:                                              ; preds = %159, %145
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %170 = call i32 @comedi_error(%struct.comedi_device* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @ETIME, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %210

173:                                              ; preds = %164
  %174 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DAS1800_FIFO, align 8
  %178 = add nsw i64 %176, %177
  %179 = call signext i16 @inw(i64 %178)
  store i16 %179, i16* %17, align 2
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* @UB, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %173
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  %189 = shl i32 1, %188
  %190 = load i16, i16* %17, align 2
  %191 = sext i16 %190 to i32
  %192 = add nsw i32 %191, %189
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %17, align 2
  br label %194

194:                                              ; preds = %184, %173
  %195 = load i16, i16* %17, align 2
  %196 = sext i16 %195 to i32
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %196, i32* %200, align 4
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %132

204:                                              ; preds = %132
  %205 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %206 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %205, i32 0, i32 0
  %207 = load i64, i64* %19, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %204, %168
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
