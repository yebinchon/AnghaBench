; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_Compute_and_setup_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_Compute_and_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"adl_pci9118 EDBG: BGN: Compute_and_setup_dma()\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"1 dmalen0=%d dmalen1=%d ai_data_len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"2 dmalen0=%d dmalen1=%d \0A\00", align 1
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"comedi%d: WAR: DMA0 buf too short, cann't support TRIG_WAKE_EOS (%d<%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"21 dmalen0=%d ai_n_realscanlen=%d useeoshandle=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"comedi%d: ERR: DMA0 buf len bug? (%d<4)\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"comedi%d: WAR: DMA1 buf too short, cann't support TRIG_WAKE_EOS (%d<%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"22 dmalen1=%d ai_n_realscanlen=%d useeoshandle=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"comedi%d: ERR: DMA1 buf len bug? (%d<4)\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"3 dmalen0=%d dmalen1=%d \0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"3.0 ai_n_realscanlen=%d ai_scans=%d \0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"3.1 dmalen0=%d dmalen1=%d \0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"3.2 dmalen0=%d dmalen1=%d \0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"4 dmalen0=%d dmalen1=%d \0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"5 dmalen0=%d dmalen1=%d \0A\00", align 1
@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@EN_A2P_TRANSFERS = common dso_local global i32 0, align 4
@AMCC_OP_REG_MWAR = common dso_local global i64 0, align 8
@AMCC_OP_REG_MWTC = common dso_local global i64 0, align 8
@AINT_WRITE_COMPL = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@RESET_A2P_FLAGS = common dso_local global i32 0, align 4
@A2P_HI_PRIORITY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"adl_pci9118 EDBG: END: Compute_and_setup_dma()\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @Compute_and_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Compute_and_setup_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = and i64 %32, -4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %1
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %44 to i64
  %46 = and i64 %45, -4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %112

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 1
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %78, 1
  %80 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75, i32 %79)
  br label %111

81:                                               ; preds = %58
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 1
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load i32, i32* %3, align 4
  %100 = add i32 %99, 2
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %81
  %102 = load i32, i32* %3, align 4
  %103 = icmp ult i32 %102, 4
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %108)
  store i32 4, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %101
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %48
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %173

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 %123, 1
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 1
  %141 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %136, i32 %140)
  br label %172

142:                                              ; preds = %119
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 1
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %150, i32 %153)
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %142
  %160 = load i32, i32* %4, align 4
  %161 = sub i32 %160, 2
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %142
  %163 = load i32, i32* %4, align 4
  %164 = icmp ult i32 %163, 4
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %168, i32 %169)
  store i32 4, i32* %4, align 4
  br label %171

171:                                              ; preds = %165, %162
  br label %172

172:                                              ; preds = %171, %126
  br label %173

173:                                              ; preds = %172, %112
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %174, i32 %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %298, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %3, align 4
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = shl i32 %188, 1
  %190 = udiv i32 %185, %189
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = shl i32 %193, 1
  %195 = mul i32 %190, %194
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %3, align 4
  %197 = zext i32 %196 to i64
  %198 = and i64 %197, -4
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %3, align 4
  %200 = load i32, i32* %3, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %183
  %203 = load i32, i32* %5, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %183
  %205 = load i32, i32* %4, align 4
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = shl i32 %209, 1
  %211 = udiv i32 %206, %210
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = shl i32 %214, 1
  %216 = mul i32 %211, %215
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %4, align 4
  %218 = zext i32 %217 to i64
  %219 = and i64 %218, -4
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %4, align 4
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %204
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %204
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %297, label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %3, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = shl i32 %234, 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %235, %238
  %240 = icmp ugt i32 %231, %239
  br i1 %240, label %241, label %264

241:                                              ; preds = %230
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %244, i32 %247)
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = shl i32 %251, 1
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %252, %255
  store i32 %256, i32* %3, align 4
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* %4, align 4
  %259 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i32, i32* %3, align 4
  %261 = zext i32 %260 to i64
  %262 = and i64 %261, -4
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %3, align 4
  br label %296

264:                                              ; preds = %230
  %265 = load i32, i32* %4, align 4
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = shl i32 %268, 1
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = mul nsw i32 %269, %272
  %274 = load i32, i32* %3, align 4
  %275 = sub i32 %273, %274
  %276 = icmp ugt i32 %265, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %264
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = shl i32 %280, 1
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %281, %284
  %286 = load i32, i32* %3, align 4
  %287 = sub i32 %285, %286
  store i32 %287, i32* %4, align 4
  br label %288

288:                                              ; preds = %277, %264
  %289 = load i32, i32* %3, align 4
  %290 = load i32, i32* %4, align 4
  %291 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load i32, i32* %4, align 4
  %293 = zext i32 %292 to i64
  %294 = and i64 %293, -4
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %288, %241
  br label %297

297:                                              ; preds = %296, %225
  br label %298

298:                                              ; preds = %297, %173
  %299 = load i32, i32* %3, align 4
  %300 = load i32, i32* %4, align 4
  %301 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %299, i32 %300)
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 11
  store i64 0, i64* %303, align 8
  %304 = load i32, i32* %3, align 4
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 6
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  store i32 %304, i32* %308, align 4
  %309 = load i32, i32* %4, align 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 6
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  store i32 %309, i32* %313, align 4
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* %4, align 4
  %316 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %314, i32 %315)
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 10
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %321 = add nsw i64 %319, %320
  %322 = call i32 @inl(i64 %321)
  %323 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %324 = xor i32 %323, -1
  %325 = and i32 %322, %324
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 10
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i32 @outl(i32 %325, i64 %330)
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 9
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 10
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @AMCC_OP_REG_MWAR, align 8
  %341 = add nsw i64 %339, %340
  %342 = call i32 @outl(i32 %336, i64 %341)
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 6
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 10
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @AMCC_OP_REG_MWTC, align 8
  %352 = add nsw i64 %350, %351
  %353 = call i32 @outl(i32 %347, i64 %352)
  %354 = load i32, i32* @AINT_WRITE_COMPL, align 4
  %355 = or i32 0, %354
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 10
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %360 = add nsw i64 %358, %359
  %361 = call i32 @outl(i32 %355, i64 %360)
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 10
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %366 = add nsw i64 %364, %365
  %367 = call i32 @inl(i64 %366)
  %368 = load i32, i32* @RESET_A2P_FLAGS, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* @A2P_HI_PRIORITY, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %373 = or i32 %371, %372
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 10
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %378 = add nsw i64 %376, %377
  %379 = call i32 @outl(i32 %373, i64 %378)
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 10
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %384 = add nsw i64 %382, %383
  %385 = call i32 @inl(i64 %384)
  %386 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %387 = or i32 %385, %386
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 10
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %392 = add nsw i64 %390, %391
  %393 = call i32 @outl(i32 %387, i64 %392)
  %394 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
