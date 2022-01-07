; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tty_struct = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s irq:0x%04X, prev:0x%04X\00", align 1
@RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Could not read status from card, we should disable interface\0A\00", align 1
@CTRL_UL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CTRL_UL\00", align 1
@CTRL_DL = common dso_local global i32 0, align 4
@MDM_DL = common dso_local global i32 0, align 4
@PORT_MDM = common dso_local global i64 0, align 8
@MDM_DL1 = common dso_local global i32 0, align 4
@MDM_DL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"MDM_DL out of sync!\0A\00", align 1
@MDM_UL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"MDM_UL out of sync!\0A\00", align 1
@DIAG_DL = common dso_local global i32 0, align 4
@PORT_DIAG = common dso_local global i64 0, align 8
@DIAG_DL1 = common dso_local global i32 0, align 4
@DIAG_DL2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DIAG_DL out of sync!\0A\00", align 1
@DIAG_UL = common dso_local global i32 0, align 4
@APP1_DL = common dso_local global i32 0, align 4
@PORT_APP1 = common dso_local global i64 0, align 8
@APP1_UL = common dso_local global i32 0, align 4
@APP2_DL = common dso_local global i32 0, align 4
@PORT_APP2 = common dso_local global i64 0, align 8
@APP2_UL = common dso_local global i32 0, align 4
@NOZOMI_MAX_PORTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nozomi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nozomi*
  store %struct.nozomi* %11, %struct.nozomi** %6, align 8
  %12 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %13 = icmp ne %struct.nozomi* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %414

16:                                               ; preds = %2
  %17 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %18 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %21 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @readw(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %409

27:                                               ; preds = %16
  %28 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %29 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %409

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @interrupt2str(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %41 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DBG4(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %36
  %49 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %50 = call i32 @nozomi_read_config_table(%struct.nozomi* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %48
  %57 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %58 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %60 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %63 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @writew(i32 %61, i32 %64)
  %66 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %67 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %66, i32 0, i32 6
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %77

71:                                               ; preds = %48
  %72 = load i32, i32* @RESET, align 4
  %73 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %74 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @writew(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %56
  br label %372

78:                                               ; preds = %36
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CTRL_UL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = call i32 @DBG1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @CTRL_UL, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %88 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %92 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %95 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @writew(i32 %93, i32 %96)
  %98 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %99 = call i64 @send_flow_control(%struct.nozomi* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %83
  %102 = load i32, i32* @CTRL_UL, align 4
  %103 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %104 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @writew(i32 %102, i32 %105)
  %107 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %108 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CTRL_UL, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %113 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %115 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %118 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @writew(i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %101, %83
  br label %122

122:                                              ; preds = %121, %78
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @CTRL_DL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %129 = call i32 @receive_flow_control(%struct.nozomi* %128)
  %130 = load i32, i32* @CTRL_DL, align 4
  %131 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %132 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @writew(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %127, %122
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @MDM_DL, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %142 = load i64, i64* @PORT_MDM, align 8
  %143 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %144 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i64, i64* @PORT_MDM, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @MDM_DL1, align 4
  %151 = load i32, i32* @MDM_DL2, align 4
  %152 = call i32 @handle_data_dl(%struct.nozomi* %141, i64 %142, i32* %148, i32 %149, i32 %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %140
  %155 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %156 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %155, i32 0, i32 6
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %372

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %135
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @MDM_UL, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %168 = load i64, i64* @PORT_MDM, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @handle_data_ul(%struct.nozomi* %167, i64 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %174 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %173, i32 0, i32 6
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = call i32 @dev_err(i32* %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %372

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %178, %161
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @DIAG_DL, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %205

184:                                              ; preds = %179
  %185 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %186 = load i64, i64* @PORT_DIAG, align 8
  %187 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %188 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %187, i32 0, i32 2
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i64, i64* @PORT_DIAG, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @DIAG_DL1, align 4
  %195 = load i32, i32* @DIAG_DL2, align 4
  %196 = call i32 @handle_data_dl(%struct.nozomi* %185, i64 %186, i32* %192, i32 %193, i32 %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %184
  %199 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %200 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %199, i32 0, i32 6
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = call i32 @dev_err(i32* %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %372

204:                                              ; preds = %184
  br label %205

205:                                              ; preds = %204, %179
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @DIAG_UL, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %205
  %211 = load i32, i32* @DIAG_UL, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %214 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %218 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %221 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @writew(i32 %219, i32 %222)
  %224 = load i64, i64* @PORT_DIAG, align 8
  %225 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %226 = call i64 @send_data(i64 %224, %struct.nozomi* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %210
  %229 = load i32, i32* @DIAG_UL, align 4
  %230 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %231 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @writew(i32 %229, i32 %232)
  %234 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %235 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @DIAG_UL, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %240 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %242 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %245 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @writew(i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %228, %210
  br label %249

249:                                              ; preds = %248, %205
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* @APP1_DL, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  %255 = load i64, i64* @PORT_APP1, align 8
  %256 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %257 = call i64 @receive_data(i64 %255, %struct.nozomi* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load i32, i32* @APP1_DL, align 4
  %261 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %262 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @writew(i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %259, %254
  br label %266

266:                                              ; preds = %265, %249
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @APP1_UL, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %310

271:                                              ; preds = %266
  %272 = load i32, i32* @APP1_UL, align 4
  %273 = xor i32 %272, -1
  %274 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %275 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = and i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %279 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %282 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @writew(i32 %280, i32 %283)
  %285 = load i64, i64* @PORT_APP1, align 8
  %286 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %287 = call i64 @send_data(i64 %285, %struct.nozomi* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %309

289:                                              ; preds = %271
  %290 = load i32, i32* @APP1_UL, align 4
  %291 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %292 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @writew(i32 %290, i32 %293)
  %295 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %296 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @APP1_UL, align 4
  %299 = or i32 %297, %298
  %300 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %301 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %303 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %306 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @writew(i32 %304, i32 %307)
  br label %309

309:                                              ; preds = %289, %271
  br label %310

310:                                              ; preds = %309, %266
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @APP2_DL, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %310
  %316 = load i64, i64* @PORT_APP2, align 8
  %317 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %318 = call i64 @receive_data(i64 %316, %struct.nozomi* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %315
  %321 = load i32, i32* @APP2_DL, align 4
  %322 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %323 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @writew(i32 %321, i32 %324)
  br label %326

326:                                              ; preds = %320, %315
  br label %327

327:                                              ; preds = %326, %310
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* @APP2_UL, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %371

332:                                              ; preds = %327
  %333 = load i32, i32* @APP2_UL, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %336 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %340 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %343 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @writew(i32 %341, i32 %344)
  %346 = load i64, i64* @PORT_APP2, align 8
  %347 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %348 = call i64 @send_data(i64 %346, %struct.nozomi* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %370

350:                                              ; preds = %332
  %351 = load i32, i32* @APP2_UL, align 4
  %352 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %353 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @writew(i32 %351, i32 %354)
  %356 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %357 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @APP2_UL, align 4
  %360 = or i32 %358, %359
  %361 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %362 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 8
  %363 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %364 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %367 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @writew(i32 %365, i32 %368)
  br label %370

370:                                              ; preds = %350, %332
  br label %371

371:                                              ; preds = %370, %327
  br label %372

372:                                              ; preds = %371, %198, %172, %154, %77
  %373 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %374 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %373, i32 0, i32 1
  %375 = call i32 @spin_unlock(i32* %374)
  store i32 0, i32* %7, align 4
  br label %376

376:                                              ; preds = %404, %372
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* @NOZOMI_MAX_PORTS, align 4
  %379 = icmp ult i32 %377, %378
  br i1 %379, label %380, label %407

380:                                              ; preds = %376
  %381 = load i32, i32* %7, align 4
  %382 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %383 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %382, i32 0, i32 3
  %384 = call i64 @test_and_clear_bit(i32 %381, i32* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %403

386:                                              ; preds = %380
  %387 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %388 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %387, i32 0, i32 2
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = load i32, i32* %7, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = call %struct.tty_struct* @tty_port_tty_get(i32* %393)
  store %struct.tty_struct* %394, %struct.tty_struct** %9, align 8
  %395 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %396 = icmp ne %struct.tty_struct* %395, null
  br i1 %396, label %397, label %400

397:                                              ; preds = %386
  %398 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %399 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %398)
  br label %400

400:                                              ; preds = %397, %386
  %401 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %402 = call i32 @tty_kref_put(%struct.tty_struct* %401)
  br label %403

403:                                              ; preds = %400, %380
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %7, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %7, align 4
  br label %376

407:                                              ; preds = %376
  %408 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %408, i32* %3, align 4
  br label %414

409:                                              ; preds = %35, %26
  %410 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %411 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %410, i32 0, i32 1
  %412 = call i32 @spin_unlock(i32* %411)
  %413 = load i32, i32* @IRQ_NONE, align 4
  store i32 %413, i32* %3, align 4
  br label %414

414:                                              ; preds = %409, %407, %14
  %415 = load i32, i32* %3, align 4
  ret i32 %415
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @DBG4(i8*, i32, i32, i32) #1

declare dso_local i32 @interrupt2str(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nozomi_read_config_table(%struct.nozomi*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @DBG1(i8*) #1

declare dso_local i64 @send_flow_control(%struct.nozomi*) #1

declare dso_local i32 @receive_flow_control(%struct.nozomi*) #1

declare dso_local i32 @handle_data_dl(%struct.nozomi*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @handle_data_ul(%struct.nozomi*, i64, i32) #1

declare dso_local i64 @send_data(i64, %struct.nozomi*) #1

declare dso_local i64 @receive_data(i64, %struct.nozomi*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
