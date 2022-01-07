; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_amb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_amb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i16, i32, i32, i8*, %struct.atm_qos, i32 }
%struct.atm_qos = type { i64, %struct.atm_trafprm, %struct.atm_trafprm }
%struct.atm_trafprm = type { i32, i64 }
%struct.TYPE_19__ = type { i32, %struct.atm_vcc**, %struct.TYPE_24__*, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i8 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_18__ = type { i8, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_27__ }
%struct.TYPE_25__ = type { i8*, i8*, i8* }
%struct.TYPE_23__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i8*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_VCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"amb_open %x %x\00", align 1
@NUM_VPI_BITS = common dso_local global i32 0, align 4
@NUM_VCI_BITS = common dso_local global i32 0, align 4
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"VPI/VCI out of range: %hd/%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATM_AAL5 = common dso_local global i64 0, align 8
@DBG_QOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"AAL not supported\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TX:\00", align 1
@ATM_NONE = common dso_local global i32 0, align 4
@TX_UBR = common dso_local global i8 0, align 1
@TX_FRAME_NOTCAP = common dso_local global i8 0, align 1
@round_down = common dso_local global i32 0, align 4
@round_up = common dso_local global i32 0, align 4
@TX_UBR_CAPPED = common dso_local global i8 0, align 1
@TX_FRAME_CAPPED = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"request for non-UBR denied\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"tx_rate_bits=%hx, tx_vc_bits=%hx\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RX:\00", align 1
@NUM_RX_POOLS = common dso_local global i8 0, align 1
@DBG_POOL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"chose pool %hu (max_sdu %u <= %u)\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"no pool suitable for VC (RX max_sdu %d is too large)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"out of memory!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@SRB_MODIFY_VC_RATE = common dso_local global i8 0, align 1
@SRB_RATE_SHIFT = common dso_local global i8 0, align 1
@SRB_MODIFY_VC_FLAGS = common dso_local global i8 0, align 1
@SRB_POOL_SHIFT = common dso_local global i8 0, align 1
@SRB_FLAGS_SHIFT = common dso_local global i8 0, align 1
@SRB_OPEN_VC = common dso_local global i8 0, align 1
@rx_lats = common dso_local global i64 0, align 8
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_VCI_UNSPEC = common dso_local global i32 0, align 4
@ATM_VPI_UNSPEC = common dso_local global i16 0, align 2
@KERN_WARNING = common dso_local global i32 0, align 4
@pcr = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @amb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amb_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_qos*, align 8
  %6 = alloca %struct.atm_trafprm*, align 8
  %7 = alloca %struct.atm_trafprm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__, align 8
  %19 = alloca %struct.TYPE_29__, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store i8 -1, i8* %8, align 1
  store i8 -1, i8* %9, align 1
  store i8 -1, i8* %10, align 1
  %20 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %21 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_19__* @AMB_DEV(i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %11, align 8
  store i8 -1, i8* %13, align 1
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %25 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  store i16 %26, i16* %14, align 2
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @DBG_FLOW, align 4
  %31 = load i32, i32* @DBG_VCC, align 4
  %32 = or i32 %30, %31
  %33 = load i16, i16* %14, align 2
  %34 = sext i16 %33 to i32
  %35 = load i32, i32* %15, align 4
  %36 = call i32 (i32, i8*, ...) @PRINTD(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i16, i16* %14, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp sle i32 0, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %1
  %41 = load i16, i16* %14, align 2
  %42 = sext i16 %41 to i32
  %43 = load i32, i32* @NUM_VPI_BITS, align 4
  %44 = shl i32 1, %43
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = icmp sle i32 0, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @NUM_VCI_BITS, align 4
  %52 = shl i32 1, %51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %49, %46, %40, %1
  %55 = load i32, i32* @DBG_WARN, align 4
  %56 = load i32, i32* @DBG_VCC, align 4
  %57 = or i32 %55, %56
  %58 = load i16, i16* %14, align 2
  %59 = sext i16 %58 to i32
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i32, i8*, ...) @PRINTD(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %511

64:                                               ; preds = %49
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 4
  store %struct.atm_qos* %66, %struct.atm_qos** %5, align 8
  %67 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %68 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ATM_AAL5, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* @DBG_QOS, align 4
  %74 = call i32 (i32, i8*, ...) @PRINTD(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %511

77:                                               ; preds = %64
  %78 = load i32, i32* @DBG_QOS, align 4
  %79 = call i32 (i32, i8*, ...) @PRINTD(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %81 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %80, i32 0, i32 2
  store %struct.atm_trafprm* %81, %struct.atm_trafprm** %6, align 8
  %82 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %83 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ATM_NONE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %77
  %88 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %89 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %121 [
    i32 128, label %91
  ]

91:                                               ; preds = %87
  %92 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %93 = call i8* @atm_pcr_goal(%struct.atm_trafprm* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  store i8 0, i8* %8, align 1
  %98 = load i8, i8* @TX_UBR, align 1
  store i8 %98, i8* %9, align 1
  %99 = load i8, i8* @TX_FRAME_NOTCAP, align 1
  store i8 %99, i8* %10, align 1
  br label %120

100:                                              ; preds = %91
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @round_down, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @round_up, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @make_rate(i32 %110, i32 %111, i8* %8, i32* null)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %511

117:                                              ; preds = %109
  %118 = load i8, i8* @TX_UBR_CAPPED, align 1
  store i8 %118, i8* %9, align 1
  %119 = load i8, i8* @TX_FRAME_CAPPED, align 1
  store i8 %119, i8* %10, align 1
  br label %120

120:                                              ; preds = %117, %97
  br label %126

121:                                              ; preds = %87
  %122 = load i32, i32* @DBG_QOS, align 4
  %123 = call i32 (i32, i8*, ...) @PRINTD(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %511

126:                                              ; preds = %120
  %127 = load i32, i32* @DBG_QOS, align 4
  %128 = load i8, i8* %8, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %9, align 1
  %131 = zext i8 %130 to i32
  %132 = call i32 (i32, i8*, ...) @PRINTD(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %126, %77
  %134 = load i32, i32* @DBG_QOS, align 4
  %135 = call i32 (i32, i8*, ...) @PRINTD(i32 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %137 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %136, i32 0, i32 1
  store %struct.atm_trafprm* %137, %struct.atm_trafprm** %7, align 8
  %138 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %139 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ATM_NONE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %220

144:                                              ; preds = %133
  store i8 0, i8* %13, align 1
  br label %145

145:                                              ; preds = %186, %144
  %146 = load i8, i8* %13, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @NUM_RX_POOLS, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %145
  %152 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %153 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %157, align 8
  %159 = load i8, i8* %13, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ule i32 %155, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %151
  %166 = load i32, i32* @DBG_VCC, align 4
  %167 = load i32, i32* @DBG_QOS, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @DBG_POOL, align 4
  %170 = or i32 %168, %169
  %171 = load i8, i8* %13, align 1
  %172 = zext i8 %171 to i32
  %173 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %174 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %177, align 8
  %179 = load i8, i8* %13, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @PRINTD(i32 %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %172, i64 %175, i32 %183)
  br label %189

185:                                              ; preds = %151
  br label %186

186:                                              ; preds = %185
  %187 = load i8, i8* %13, align 1
  %188 = add i8 %187, 1
  store i8 %188, i8* %13, align 1
  br label %145

189:                                              ; preds = %165, %145
  %190 = load i8, i8* %13, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, i8* @NUM_RX_POOLS, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %189
  %196 = load i32, i32* @DBG_WARN, align 4
  %197 = load i32, i32* @DBG_VCC, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @DBG_QOS, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @DBG_POOL, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %204 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i32, i8*, ...) @PRINTD(i32 %202, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i64 %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %511

209:                                              ; preds = %189
  %210 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %211 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %214 [
    i32 128, label %213
  ]

213:                                              ; preds = %209
  br label %219

214:                                              ; preds = %209
  %215 = load i32, i32* @DBG_QOS, align 4
  %216 = call i32 (i32, i8*, ...) @PRINTD(i32 %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %511

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %143
  %221 = load i32, i32* @GFP_KERNEL, align 4
  %222 = call %struct.TYPE_18__* @kmalloc(i32 2, i32 %221)
  store %struct.TYPE_18__* %222, %struct.TYPE_18__** %12, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %224 = icmp ne %struct.TYPE_18__* %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* @KERN_ERR, align 4
  %227 = call i32 @PRINTK(i32 %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %511

230:                                              ; preds = %220
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %232 = bitcast %struct.TYPE_18__* %231 to i8*
  %233 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %234 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* @ATM_VF_ADDR, align 4
  %236 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %237 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %236, i32 0, i32 2
  %238 = call i32 @set_bit(i32 %235, i32* %237)
  %239 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %240 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @ATM_NONE, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %376

244:                                              ; preds = %230
  %245 = load i8, i8* %10, align 1
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  store i8 %245, i8* %247, align 1
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = call i32 @mutex_lock(i32* %249)
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load %struct.atm_vcc**, %struct.atm_vcc*** %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %253, i64 %255
  %257 = load %struct.atm_vcc*, %struct.atm_vcc** %256, align 8
  %258 = icmp ne %struct.atm_vcc* %257, null
  br i1 %258, label %259, label %328

259:                                              ; preds = %244
  %260 = load i8, i8* @SRB_MODIFY_VC_RATE, align 1
  %261 = call i8* @cpu_to_be32(i8 zeroext %260)
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store i8* %261, i8** %262, align 8
  %263 = load i32, i32* %15, align 4
  %264 = trunc i32 %263 to i8
  %265 = call i8* @cpu_to_be32(i8 zeroext %264)
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 1
  store i8* %265, i8** %268, align 8
  %269 = load i8, i8* %8, align 1
  %270 = zext i8 %269 to i32
  %271 = load i8, i8* @SRB_RATE_SHIFT, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %270, %272
  %274 = trunc i32 %273 to i8
  %275 = call i8* @cpu_to_be32(i8 zeroext %274)
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 0
  store i8* %275, i8** %278, align 8
  br label %279

279:                                              ; preds = %283, %259
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %281 = call i64 @command_do(%struct.TYPE_19__* %280, %struct.TYPE_29__* %18)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = call i32 (...) @schedule()
  br label %279

285:                                              ; preds = %279
  %286 = load i8, i8* @SRB_MODIFY_VC_FLAGS, align 1
  %287 = call i8* @cpu_to_be32(i8 zeroext %286)
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store i8* %287, i8** %288, align 8
  %289 = load i32, i32* %15, align 4
  %290 = trunc i32 %289 to i8
  %291 = call i8* @cpu_to_be32(i8 zeroext %290)
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 1
  store i8* %291, i8** %294, align 8
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 1
  %297 = load %struct.atm_vcc**, %struct.atm_vcc*** %296, align 8
  %298 = load i32, i32* %15, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %297, i64 %299
  %301 = load %struct.atm_vcc*, %struct.atm_vcc** %300, align 8
  %302 = call %struct.TYPE_20__* @AMB_VCC(%struct.atm_vcc* %301)
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 0
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = load i8, i8* @SRB_POOL_SHIFT, align 1
  %308 = zext i8 %307 to i32
  %309 = shl i32 %306, %308
  %310 = load i8, i8* %9, align 1
  %311 = zext i8 %310 to i32
  %312 = load i8, i8* @SRB_FLAGS_SHIFT, align 1
  %313 = zext i8 %312 to i32
  %314 = shl i32 %311, %313
  %315 = or i32 %309, %314
  %316 = trunc i32 %315 to i8
  %317 = call i8* @cpu_to_be32(i8 zeroext %316)
  %318 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  store i8* %317, i8** %320, align 8
  br label %321

321:                                              ; preds = %325, %285
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %323 = call i64 @command_do(%struct.TYPE_19__* %322, %struct.TYPE_29__* %18)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = call i32 (...) @schedule()
  br label %321

327:                                              ; preds = %321
  br label %365

328:                                              ; preds = %244
  %329 = load i8, i8* @SRB_OPEN_VC, align 1
  %330 = call i8* @cpu_to_be32(i8 zeroext %329)
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store i8* %330, i8** %331, align 8
  %332 = load i32, i32* %15, align 4
  %333 = trunc i32 %332 to i8
  %334 = call i8* @cpu_to_be32(i8 zeroext %333)
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 2
  store i8* %334, i8** %337, align 8
  %338 = load i8, i8* %9, align 1
  %339 = zext i8 %338 to i32
  %340 = load i8, i8* @SRB_FLAGS_SHIFT, align 1
  %341 = zext i8 %340 to i32
  %342 = shl i32 %339, %341
  %343 = trunc i32 %342 to i8
  %344 = call i8* @cpu_to_be32(i8 zeroext %343)
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 1
  store i8* %344, i8** %347, align 8
  %348 = load i8, i8* %8, align 1
  %349 = zext i8 %348 to i32
  %350 = load i8, i8* @SRB_RATE_SHIFT, align 1
  %351 = zext i8 %350 to i32
  %352 = shl i32 %349, %351
  %353 = trunc i32 %352 to i8
  %354 = call i8* @cpu_to_be32(i8 zeroext %353)
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 0
  store i8* %354, i8** %357, align 8
  br label %358

358:                                              ; preds = %362, %328
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %360 = call i64 @command_do(%struct.TYPE_19__* %359, %struct.TYPE_29__* %18)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = call i32 (...) @schedule()
  br label %358

364:                                              ; preds = %358
  br label %365

365:                                              ; preds = %364, %327
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %367, align 8
  %369 = load i32, i32* %15, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 0
  store i32 1, i32* %372, align 4
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = call i32 @mutex_unlock(i32* %374)
  br label %376

376:                                              ; preds = %365, %230
  %377 = load %struct.atm_trafprm*, %struct.atm_trafprm** %7, align 8
  %378 = getelementptr inbounds %struct.atm_trafprm, %struct.atm_trafprm* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @ATM_NONE, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %506

382:                                              ; preds = %376
  %383 = load i8, i8* %13, align 1
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 0
  store i8 %383, i8* %386, align 1
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  %389 = call i32 @mutex_lock(i32* %388)
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 3
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %391, align 8
  %393 = load i8, i8* %13, align 1
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %408, label %399

399:                                              ; preds = %382
  %400 = load i64, i64* @rx_lats, align 8
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %402, align 8
  %404 = load i8, i8* %13, align 1
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 1
  store i64 %400, i64* %407, align 8
  br label %408

408:                                              ; preds = %399, %382
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 3
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %410, align 8
  %412 = load i8, i8* %13, align 1
  %413 = zext i8 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %416, 1
  store i64 %417, i64* %415, align 8
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %419 = load i8, i8* %13, align 1
  %420 = load i32, i32* @GFP_KERNEL, align 4
  %421 = call i32 @fill_rx_pool(%struct.TYPE_19__* %418, i8 zeroext %419, i32 %420)
  %422 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 2
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %423, align 8
  %425 = load i32, i32* %15, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %464

431:                                              ; preds = %408
  %432 = load i8, i8* @SRB_MODIFY_VC_FLAGS, align 1
  %433 = call i8* @cpu_to_be32(i8 zeroext %432)
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  store i8* %433, i8** %434, align 8
  %435 = load i32, i32* %15, align 4
  %436 = trunc i32 %435 to i8
  %437 = call i8* @cpu_to_be32(i8 zeroext %436)
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 1
  store i8* %437, i8** %440, align 8
  %441 = load i8, i8* %13, align 1
  %442 = zext i8 %441 to i32
  %443 = load i8, i8* @SRB_POOL_SHIFT, align 1
  %444 = zext i8 %443 to i32
  %445 = shl i32 %442, %444
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %447, align 8
  %449 = load i32, i32* %15, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 1
  %453 = load i8, i8* %452, align 4
  %454 = zext i8 %453 to i32
  %455 = load i8, i8* @SRB_FLAGS_SHIFT, align 1
  %456 = zext i8 %455 to i32
  %457 = shl i32 %454, %456
  %458 = or i32 %445, %457
  %459 = trunc i32 %458 to i8
  %460 = call i8* @cpu_to_be32(i8 zeroext %459)
  %461 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %462, i32 0, i32 0
  store i8* %460, i8** %463, align 8
  br label %488

464:                                              ; preds = %408
  %465 = load i8, i8* @SRB_OPEN_VC, align 1
  %466 = call i8* @cpu_to_be32(i8 zeroext %465)
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  store i8* %466, i8** %467, align 8
  %468 = load i32, i32* %15, align 4
  %469 = trunc i32 %468 to i8
  %470 = call i8* @cpu_to_be32(i8 zeroext %469)
  %471 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 2
  store i8* %470, i8** %473, align 8
  %474 = load i8, i8* %13, align 1
  %475 = zext i8 %474 to i32
  %476 = load i8, i8* @SRB_POOL_SHIFT, align 1
  %477 = zext i8 %476 to i32
  %478 = shl i32 %475, %477
  %479 = trunc i32 %478 to i8
  %480 = call i8* @cpu_to_be32(i8 zeroext %479)
  %481 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 1
  store i8* %480, i8** %483, align 8
  %484 = call i8* @cpu_to_be32(i8 zeroext 0)
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %486, i32 0, i32 0
  store i8* %484, i8** %487, align 8
  br label %488

488:                                              ; preds = %464, %431
  br label %489

489:                                              ; preds = %493, %488
  %490 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %491 = call i64 @command_do(%struct.TYPE_19__* %490, %struct.TYPE_29__* %19)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %489
  %494 = call i32 (...) @schedule()
  br label %489

495:                                              ; preds = %489
  %496 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %497 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 1
  %499 = load %struct.atm_vcc**, %struct.atm_vcc*** %498, align 8
  %500 = load i32, i32* %15, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %499, i64 %501
  store %struct.atm_vcc* %496, %struct.atm_vcc** %502, align 8
  %503 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %504 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %503, i32 0, i32 0
  %505 = call i32 @mutex_unlock(i32* %504)
  br label %506

506:                                              ; preds = %495, %376
  %507 = load i32, i32* @ATM_VF_READY, align 4
  %508 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %509 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %508, i32 0, i32 2
  %510 = call i32 @set_bit(i32 %507, i32* %509)
  store i32 0, i32* %2, align 4
  br label %511

511:                                              ; preds = %506, %225, %214, %195, %121, %115, %72, %54
  %512 = load i32, i32* %2, align 4
  ret i32 %512
}

declare dso_local %struct.TYPE_19__* @AMB_DEV(i32) #1

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i8* @atm_pcr_goal(%struct.atm_trafprm*) #1

declare dso_local i32 @make_rate(i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @kmalloc(i32, i32) #1

declare dso_local i32 @PRINTK(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be32(i8 zeroext) #1

declare dso_local i64 @command_do(%struct.TYPE_19__*, %struct.TYPE_29__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local %struct.TYPE_20__* @AMB_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fill_rx_pool(%struct.TYPE_19__*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
