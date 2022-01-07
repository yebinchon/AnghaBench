; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mpc624.c_mpc624_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MPC624_GNMUXCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"MPC624: Warning, no data to aquire\0A\00", align 1
@MPC624_ADSCK = common dso_local global i32 0, align 4
@MPC624_ADC = common dso_local global i64 0, align 8
@MPC624_ADCS = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@MPC624_ADBUSY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MPC624: timeout (%dms)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@MPC624_ADSDI = common dso_local global i32 0, align 4
@MPC624_ADSDO = common dso_local global i32 0, align 4
@MPC624_EOC_BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"MPC624: EOC bit is set (data_in=%lu)!\00", align 1
@MPC624_DMY_BIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"MPC624: DMY bit is set (data_in=%lu)!\00", align 1
@MPC624_SGN_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @mpc624_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc624_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPC624_GNMUXCH, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %233

30:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %228, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %231

37:                                               ; preds = %31
  %38 = load i32, i32* @MPC624_ADSCK, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MPC624_ADC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %38, i64 %43)
  %45 = call i32 @udelay(i32 1)
  %46 = load i32, i32* @MPC624_ADCS, align 4
  %47 = load i32, i32* @MPC624_ADSCK, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MPC624_ADC, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 %48, i64 %53)
  %55 = call i32 @udelay(i32 1)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPC624_ADC, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i32 0, i64 %60)
  %62 = call i32 @udelay(i32 1)
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %85, %37
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TIMEOUT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MPC624_ADC, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inb(i64 %72)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @MPC624_ADBUSY, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = call i32 @udelay(i32 1000)
  br label %84

83:                                               ; preds = %67
  br label %88

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %63

88:                                               ; preds = %83, %63
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @TIMEOUT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @TIMEOUT, align 4
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %233

101:                                              ; preds = %88
  store i64 0, i64* %12, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %13, align 8
  %105 = call i32 @udelay(i32 1)
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %172, %101
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 32
  br i1 %108, label %109, label %175

109:                                              ; preds = %106
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MPC624_ADC, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outb(i32 0, i64 %114)
  %116 = call i32 @udelay(i32 1)
  %117 = load i64, i64* %13, align 8
  %118 = and i64 %117, -2147483648
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %109
  %121 = load i32, i32* @MPC624_ADSDI, align 4
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @MPC624_ADC, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outb(i32 %121, i64 %126)
  %128 = call i32 @udelay(i32 1)
  %129 = load i32, i32* @MPC624_ADSCK, align 4
  %130 = load i32, i32* @MPC624_ADSDI, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MPC624_ADC, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 %131, i64 %136)
  br label %153

138:                                              ; preds = %109
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MPC624_ADC, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 0, i64 %143)
  %145 = call i32 @udelay(i32 1)
  %146 = load i32, i32* @MPC624_ADSCK, align 4
  %147 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %148 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MPC624_ADC, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outb(i32 %146, i64 %151)
  br label %153

153:                                              ; preds = %138, %120
  %154 = call i32 @udelay(i32 1)
  %155 = load i64, i64* %12, align 8
  %156 = shl i64 %155, 1
  store i64 %156, i64* %12, align 8
  %157 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MPC624_ADC, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @inb(i64 %161)
  %163 = load i32, i32* @MPC624_ADSDO, align 4
  %164 = and i32 %162, %163
  %165 = ashr i32 %164, 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %12, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %12, align 8
  %169 = call i32 @udelay(i32 1)
  %170 = load i64, i64* %13, align 8
  %171 = shl i64 %170, 1
  store i64 %171, i64* %13, align 8
  br label %172

172:                                              ; preds = %153
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %106

175:                                              ; preds = %106
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @MPC624_EOC_BIT, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  %182 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @MPC624_DMY_BIT, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i64, i64* %12, align 8
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %189)
  br label %191

191:                                              ; preds = %188, %183
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* @MPC624_SGN_BIT, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load i64, i64* %12, align 8
  %198 = and i64 %197, 1073741823
  store i64 %198, i64* %12, align 8
  %199 = load i64, i64* %12, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  br label %227

205:                                              ; preds = %191
  %206 = load i64, i64* @MPC624_SGN_BIT, align 8
  %207 = load i64, i64* %12, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %12, align 8
  %209 = load i64, i64* %12, align 8
  %210 = xor i64 %209, -1
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %12, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %12, align 8
  %213 = load i64, i64* @MPC624_EOC_BIT, align 8
  %214 = load i64, i64* @MPC624_DMY_BIT, align 8
  %215 = or i64 %213, %214
  %216 = xor i64 %215, -1
  %217 = load i64, i64* %12, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %12, align 8
  %219 = load i64, i64* %12, align 8
  %220 = sub i64 536870912, %219
  store i64 %220, i64* %12, align 8
  %221 = load i64, i64* %12, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %9, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %205, %196
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %31

231:                                              ; preds = %31
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %231, %92, %28
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
