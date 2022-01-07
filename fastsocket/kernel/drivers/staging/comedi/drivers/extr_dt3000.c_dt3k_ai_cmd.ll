; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt3k_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"dt3k_ai_cmd:\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DPR_ADC_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"param[0]=0x%04x\0A\00", align 1
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"param[1]=0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"param[2]=0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"param[3]=0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"param[4]=0x%04x\0A\00", align 1
@DT3000_AD_RETRIG_INTERNAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"param[5]=0x%04x\0A\00", align 1
@AREF_DIFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"param[6]=0x%04x\0A\00", align 1
@AI_FIFO_DEPTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"param[7]=0x%04x\0A\00", align 1
@SUBS_AI = common dso_local global i32 0, align 4
@DPR_SubSys = common dso_local global i64 0, align 8
@CMD_CONFIG = common dso_local global i32 0, align 4
@DT3000_ADFULL = common dso_local global i32 0, align 4
@DT3000_ADSWERR = common dso_local global i32 0, align 4
@DT3000_ADHWERR = common dso_local global i32 0, align 4
@DPR_Int_Mask = common dso_local global i64 0, align 8
@debug_n_ints = common dso_local global i64 0, align 8
@CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt3k_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3k_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %5, align 8
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %55, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_CHAN(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CR_RANGE(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %42, 6
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DPR_ADC_buffer, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @writew(i32 %45, i64 %53)
  br label %55

55:                                               ; preds = %25
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CR_AREF(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @DPR_Params(i32 0)
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writew(i32 %67, i64 %72)
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TRIG_TIMER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %58
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 6
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @dt3k_ns_to_timer(i32 50, i32* %85, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = lshr i32 %92, 16
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @DPR_Params(i32 1)
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writew(i32 %93, i64 %98)
  %100 = load i32, i32* %10, align 4
  %101 = lshr i32 %100, 16
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 65535
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @DPR_Params(i32 2)
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writew(i32 %104, i64 %109)
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 65535
  %113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %115

114:                                              ; preds = %58
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TRIG_TIMER, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %115
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 5
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @dt3k_ns_to_timer(i32 100, i32* %123, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = lshr i32 %130, 16
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @DPR_Params(i32 3)
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writew(i32 %131, i64 %136)
  %138 = load i32, i32* %11, align 4
  %139 = lshr i32 %138, 16
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, 65535
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @DPR_Params(i32 4)
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writew(i32 %142, i64 %147)
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, 65535
  %151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %153

152:                                              ; preds = %115
  br label %153

153:                                              ; preds = %152, %121
  %154 = load i32, i32* @DT3000_AD_RETRIG_INTERNAL, align 4
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @DPR_Params(i32 5)
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writew(i32 %155, i64 %160)
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @AREF_DIFF, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @DPR_Params(i32 6)
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writew(i32 %167, i64 %172)
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @AREF_DIFF, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @AI_FIFO_DEPTH, align 4
  %180 = sdiv i32 %179, 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @DPR_Params(i32 7)
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writew(i32 %180, i64 %185)
  %187 = load i32, i32* @AI_FIFO_DEPTH, align 4
  %188 = sdiv i32 %187, 2
  %189 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @SUBS_AI, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DPR_SubSys, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writew(i32 %190, i64 %195)
  %197 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %198 = load i32, i32* @CMD_CONFIG, align 4
  %199 = call i32 @dt3k_send_cmd(%struct.comedi_device* %197, i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* @DT3000_ADFULL, align 4
  %201 = load i32, i32* @DT3000_ADSWERR, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @DT3000_ADHWERR, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @DPR_Int_Mask, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writew(i32 %204, i64 %209)
  store i64 0, i64* @debug_n_ints, align 8
  %211 = load i32, i32* @SUBS_AI, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @DPR_SubSys, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writew(i32 %211, i64 %216)
  %218 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %219 = load i32, i32* @CMD_START, align 4
  %220 = call i32 @dt3k_send_cmd(%struct.comedi_device* %218, i32 %219)
  store i32 %220, i32* %12, align 4
  ret i32 0
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i64 @DPR_Params(i32) #1

declare dso_local i32 @dt3k_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @dt3k_send_cmd(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
