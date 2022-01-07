; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32*, i32, i32*, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i32, i32, i32, i32 }

@nc_dsps = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@nc_sdid = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"I#%d\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No MSG OUT phase after selection with ATN\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No MSG IN phase after reselection\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No IDENTIFY after reselection\0A\00", align 1
@M_RESET = common dso_local global i32 0, align 4
@M_ABORT = common dso_local global i32 0, align 4
@M_ABORT_TAG = common dso_local global i32 0, align 4
@M_NOOP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"message %x sent on bad reselection\0A\00", align 1
@M_PARITY = common dso_local global i32 0, align 4
@M_ID_ERROR = common dso_local global i32 0, align 4
@XE_PARITY_ERR = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_EXT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"M_REJECT to send for \00", align 1
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@XE_BAD_PHASE = common dso_local global i32 0, align 4
@DEBUG_POINTER = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"M_REJECT received (%x:%x).\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"WEIRD message received\00", align 1
@msg_weird = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_int_sir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_sir(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %9 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %10 = load i32, i32* @nc_dsps, align 4
  %11 = call i32 @INB(%struct.sym_hcb* %9, i32 %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %14 = load i32, i32* @nc_dsa, align 4
  %15 = call i32 @INL(%struct.sym_hcb* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %16, i32 %17)
  store %struct.sym_ccb* %18, %struct.sym_ccb** %5, align 8
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %20 = load i32, i32* @nc_sdid, align 4
  %21 = call i32 @INB(%struct.sym_hcb* %19, i32 %20)
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %25 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %24, i32 0, i32 3
  %26 = load %struct.sym_tcb*, %struct.sym_tcb** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %26, i64 %27
  store %struct.sym_tcb* %28, %struct.sym_tcb** %7, align 8
  %29 = load i32, i32* @DEBUG_FLAGS, align 4
  %30 = load i32, i32* @DEBUG_TINY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i64, i64* %3, align 8
  switch i64 %37, label %386 [
    i64 147, label %38
    i64 132, label %42
    i64 128, label %42
    i64 150, label %42
    i64 131, label %46
    i64 133, label %52
    i64 134, label %58
    i64 135, label %64
    i64 137, label %70
    i64 136, label %76
    i64 138, label %82
    i64 144, label %104
    i64 148, label %151
    i64 139, label %160
    i64 129, label %170
    i64 130, label %184
    i64 146, label %198
    i64 149, label %219
    i64 143, label %233
    i64 142, label %365
    i64 141, label %376
    i64 140, label %381
  ]

38:                                               ; preds = %36
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %40 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %41 = call i32 @sym_complete_error(%struct.sym_hcb* %39, %struct.sym_ccb* %40)
  br label %402

42:                                               ; preds = %36, %36, %36
  %43 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @sym_sir_task_recovery(%struct.sym_hcb* %43, i64 %44)
  br label %402

46:                                               ; preds = %36
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %49 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %47, i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %401

52:                                               ; preds = %36
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %55 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %53, i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %401

58:                                               ; preds = %36
  %59 = load i32, i32* @KERN_WARNING, align 4
  %60 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %61 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %59, i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %401

64:                                               ; preds = %36
  %65 = load i32, i32* @M_RESET, align 4
  %66 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %67 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  br label %387

70:                                               ; preds = %36
  %71 = load i32, i32* @M_ABORT, align 4
  %72 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %73 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  br label %387

76:                                               ; preds = %36
  %77 = load i32, i32* @M_ABORT_TAG, align 4
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %79 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  br label %387

82:                                               ; preds = %36
  %83 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %84 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %89 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @M_NOOP, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %93 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @KERN_WARNING, align 4
  %97 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %98 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %101 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i32, i8*, ...) @scmd_printk(i32 %96, i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %387

104:                                              ; preds = %36
  %105 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %106 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %111 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** @M_NOOP, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %115 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %119 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @M_PARITY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %104
  %124 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %125 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @M_ID_ERROR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %150

129:                                              ; preds = %123, %104
  %130 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %131 = icmp ne %struct.sym_ccb* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = load i32, i32* @XE_PARITY_ERR, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %136 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %140 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %145 = load i32, i32* @HF_PRT, align 4
  %146 = load i32, i32* @HF_EXT_ERR, align 4
  %147 = call i32 @OUTOFFB(%struct.sym_hcb* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %132
  br label %149

149:                                              ; preds = %148, %129
  br label %150

150:                                              ; preds = %149, %123
  br label %387

151:                                              ; preds = %36
  %152 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %153 = icmp ne %struct.sym_ccb* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  br label %387

155:                                              ; preds = %151
  %156 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %157 = load i64, i64* %3, align 8
  %158 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %159 = call i32 @sym_sir_bad_scsi_status(%struct.sym_hcb* %156, i64 %157, %struct.sym_ccb* %158)
  br label %402

160:                                              ; preds = %36
  %161 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %162 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %163 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @sym_print_msg(%struct.sym_ccb* %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %164)
  %166 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %167 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 155, i32* %169, align 4
  br label %387

170:                                              ; preds = %36
  %171 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %172 = icmp ne %struct.sym_ccb* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %175 = load i32, i32* @HF_PRT, align 4
  %176 = load i32, i32* @HF_EXT_ERR, align 4
  %177 = call i32 @OUTONB(%struct.sym_hcb* %174, i32 %175, i32 %176)
  %178 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %179 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %180 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %173, %170
  br label %387

184:                                              ; preds = %36
  %185 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %186 = icmp ne %struct.sym_ccb* %185, null
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %189 = load i32, i32* @HF_PRT, align 4
  %190 = load i32, i32* @HF_EXT_ERR, align 4
  %191 = call i32 @OUTONB(%struct.sym_hcb* %188, i32 %189, i32 %190)
  %192 = load i32, i32* @XE_SODL_UNRUN, align 4
  %193 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %194 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %187, %184
  br label %387

198:                                              ; preds = %36
  %199 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %200 = icmp ne %struct.sym_ccb* %199, null
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %203 = load i32, i32* @HF_PRT, align 4
  %204 = load i32, i32* @HF_EXT_ERR, align 4
  %205 = call i32 @OUTONB(%struct.sym_hcb* %202, i32 %203, i32 %204)
  %206 = load i32, i32* @XE_EXTRA_DATA, align 4
  %207 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %208 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %212 = load i32, i32* @nc_scratcha, align 4
  %213 = call i32 @INL(%struct.sym_hcb* %211, i32 %212)
  %214 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %215 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %201, %198
  br label %387

219:                                              ; preds = %36
  %220 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %221 = icmp ne %struct.sym_ccb* %220, null
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %224 = load i32, i32* @HF_PRT, align 4
  %225 = load i32, i32* @HF_EXT_ERR, align 4
  %226 = call i32 @OUTONB(%struct.sym_hcb* %223, i32 %224, i32 %225)
  %227 = load i32, i32* @XE_BAD_PHASE, align 4
  %228 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %229 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %222, %219
  br label %387

233:                                              ; preds = %36
  %234 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %235 = icmp ne %struct.sym_ccb* %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  br label %401

237:                                              ; preds = %233
  %238 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %239 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  switch i32 %242, label %364 [
    i32 157, label %243
    i32 156, label %308
    i32 155, label %338
  ]

243:                                              ; preds = %237
  %244 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %245 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  switch i32 %248, label %307 [
    i32 154, label %249
    i32 152, label %292
    i32 153, label %297
    i32 151, label %302
  ]

249:                                              ; preds = %243
  %250 = load i32, i32* @DEBUG_FLAGS, align 4
  %251 = load i32, i32* @DEBUG_POINTER, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %256 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %257 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @sym_print_msg(%struct.sym_ccb* %255, i8* null, i32* %258)
  br label %260

260:                                              ; preds = %254, %249
  %261 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %262 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = shl i32 %265, 24
  %267 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %268 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 4
  %271 = load i32, i32* %270, align 4
  %272 = shl i32 %271, 16
  %273 = add nsw i32 %266, %272
  %274 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %275 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 5
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 8
  %280 = add nsw i32 %273, %279
  %281 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %282 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 6
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %280, %285
  store i32 %286, i32* %8, align 4
  %287 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %288 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %289 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @sym_modify_dp(%struct.sym_hcb* %287, %struct.sym_tcb* %288, %struct.sym_ccb* %289, i32 %290)
  br label %402

292:                                              ; preds = %243
  %293 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %294 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %295 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %296 = call i32 @sym_sync_nego(%struct.sym_hcb* %293, %struct.sym_tcb* %294, %struct.sym_ccb* %295)
  br label %402

297:                                              ; preds = %243
  %298 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %299 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %300 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %301 = call i32 @sym_ppr_nego(%struct.sym_hcb* %298, %struct.sym_tcb* %299, %struct.sym_ccb* %300)
  br label %402

302:                                              ; preds = %243
  %303 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %304 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %305 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %306 = call i32 @sym_wide_nego(%struct.sym_hcb* %303, %struct.sym_tcb* %304, %struct.sym_ccb* %305)
  br label %402

307:                                              ; preds = %243
  br label %389

308:                                              ; preds = %237
  %309 = load i32, i32* @DEBUG_FLAGS, align 4
  %310 = load i32, i32* @DEBUG_POINTER, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %315 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %316 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @sym_print_msg(%struct.sym_ccb* %314, i8* null, i32* %317)
  br label %319

319:                                              ; preds = %313, %308
  %320 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %321 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @HF_SENSE, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %319
  %327 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %328 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %329 = load i32, i32* @clrack, align 4
  %330 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %328, i32 %329)
  %331 = call i32 @OUTL_DSP(%struct.sym_hcb* %327, i32 %330)
  br label %337

332:                                              ; preds = %319
  %333 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %334 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %335 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %336 = call i32 @sym_modify_dp(%struct.sym_hcb* %333, %struct.sym_tcb* %334, %struct.sym_ccb* %335, i32 -1)
  br label %337

337:                                              ; preds = %332, %326
  br label %402

338:                                              ; preds = %237
  %339 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %340 = load i32, i32* @HS_PRT, align 4
  %341 = call i32 @INB(%struct.sym_hcb* %339, i32 %340)
  %342 = load i32, i32* @HS_NEGOTIATE, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %346 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %347 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %348 = call i32 @sym_nego_rejected(%struct.sym_hcb* %345, %struct.sym_tcb* %346, %struct.sym_ccb* %347)
  br label %363

349:                                              ; preds = %338
  %350 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %351 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %354 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @scr_to_cpu(i32 %355)
  %357 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %358 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @sym_print_addr(i32 %352, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %356, i32 %361)
  br label %363

363:                                              ; preds = %349, %344
  br label %395

364:                                              ; preds = %237
  br label %389

365:                                              ; preds = %36
  %366 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %367 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %368 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %367, i32 0, i32 2
  %369 = load i32*, i32** %368, align 8
  %370 = call i32 @sym_print_msg(%struct.sym_ccb* %366, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %369)
  %371 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %372 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %373 = load i32, i32* @msg_weird, align 4
  %374 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %372, i32 %373)
  %375 = call i32 @OUTL_DSP(%struct.sym_hcb* %371, i32 %374)
  br label %402

376:                                              ; preds = %36
  %377 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %378 = load i32, i32* @HS_PRT, align 4
  %379 = load i32, i32* @HS_BUSY, align 4
  %380 = call i32 @OUTB(%struct.sym_hcb* %377, i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %36, %376
  %382 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %383 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %384 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %385 = call i32 @sym_nego_default(%struct.sym_hcb* %382, %struct.sym_tcb* %383, %struct.sym_ccb* %384)
  br label %387

386:                                              ; preds = %36
  br label %387

387:                                              ; preds = %386, %381, %232, %218, %197, %183, %160, %154, %150, %82, %76, %70, %64
  %388 = call i32 (...) @OUTONB_STD()
  br label %402

389:                                              ; preds = %364, %307
  %390 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %391 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %392 = load i32, i32* @msg_bad, align 4
  %393 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %391, i32 %392)
  %394 = call i32 @OUTL_DSP(%struct.sym_hcb* %390, i32 %393)
  br label %402

395:                                              ; preds = %363
  %396 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %397 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %398 = load i32, i32* @clrack, align 4
  %399 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %397, i32 %398)
  %400 = call i32 @OUTL_DSP(%struct.sym_hcb* %396, i32 %399)
  br label %402

401:                                              ; preds = %236, %58, %52, %46
  br label %402

402:                                              ; preds = %401, %395, %389, %387, %365, %337, %302, %297, %292, %260, %155, %42, %38
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @sym_complete_error(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_sir_task_recovery(%struct.sym_hcb*, i64) #1

declare dso_local i32 @scmd_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @OUTOFFB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_sir_bad_scsi_status(%struct.sym_hcb*, i64, %struct.sym_ccb*) #1

declare dso_local i32 @sym_print_msg(%struct.sym_ccb*, i8*, i32*) #1

declare dso_local i32 @OUTONB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_modify_dp(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @sym_sync_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_ppr_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_wide_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_nego_rejected(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_print_addr(i32, i8*, i32, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_nego_default(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @OUTONB_STD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
