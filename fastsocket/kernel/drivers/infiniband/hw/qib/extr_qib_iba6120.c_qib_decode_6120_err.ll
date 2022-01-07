; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_decode_6120_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_decode_6120_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@QLOGIC_IB_E_PKTERRS = common dso_local global i32 0, align 4
@RcvICRCErr = common dso_local global i32 0, align 4
@RcvVCRCErr = common dso_local global i32 0, align 4
@RcvEBPErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CRC \00", align 1
@RcvHdrLenErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rhdrlen \00", align 1
@RcvBadTidErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rbadtid \00", align 1
@RcvBadVersionErr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"rbadversion \00", align 1
@RcvHdrErr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"rhdr \00", align 1
@RcvLongPktLenErr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"rlongpktlen \00", align 1
@RcvMaxPktLenErr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"rmaxpktlen \00", align 1
@RcvMinPktLenErr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"rminpktlen \00", align 1
@SendMinPktLenErr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"sminpktlen \00", align 1
@RcvFormatErr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"rformaterr \00", align 1
@RcvUnsupportedVLErr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"runsupvl \00", align 1
@RcvUnexpectedCharErr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"runexpchar \00", align 1
@RcvIBFlowErr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ribflow \00", align 1
@SendUnderRunErr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"sunderrun \00", align 1
@SendPioArmLaunchErr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"spioarmlaunch \00", align 1
@SendUnexpectedPktNumErr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"sunexperrpktnum \00", align 1
@SendDroppedSmpPktErr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"sdroppedsmppkt \00", align 1
@SendMaxPktLenErr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"smaxpktlen \00", align 1
@SendUnsupportedVLErr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"sunsupVL \00", align 1
@InvalidAddrErr = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"invalidaddr \00", align 1
@RcvEgrFullErr = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"rcvegrfull \00", align 1
@RcvHdrFullErr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"rcvhdrfull \00", align 1
@IBStatusChanged = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"ibcstatuschg \00", align 1
@RcvIBLostLinkErr = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"riblostlink \00", align 1
@HardwareErr = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"hardware \00", align 1
@ResetNegated = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"reset \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i8*, i64, i32)* @qib_decode_6120_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_decode_6120_err(%struct.qib_devdata* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @QLOGIC_IB_E_PKTERRS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @QLOGIC_IB_E_PKTERRS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RcvICRCErr, align 4
  %25 = call i32 @ERR_MASK(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RcvVCRCErr, align 4
  %31 = call i32 @ERR_MASK(i32 %30)
  %32 = load i32, i32* @RcvEBPErr, align 4
  %33 = call i32 @ERR_MASK(i32 %32)
  %34 = or i32 %31, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @strlcat(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %37, %28, %22
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %297

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RcvHdrLenErr, align 4
  %49 = call i32 @ERR_MASK(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @strlcat(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RcvBadTidErr, align 4
  %59 = call i32 @ERR_MASK(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @strlcat(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @RcvBadVersionErr, align 4
  %69 = call i32 @ERR_MASK(i32 %68)
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @strlcat(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @RcvHdrErr, align 4
  %79 = call i32 @ERR_MASK(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @strlcat(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @RcvLongPktLenErr, align 4
  %89 = call i32 @ERR_MASK(i32 %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @strlcat(i8* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @RcvMaxPktLenErr, align 4
  %99 = call i32 @ERR_MASK(i32 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @strlcat(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @RcvMinPktLenErr, align 4
  %109 = call i32 @ERR_MASK(i32 %108)
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @strlcat(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SendMinPktLenErr, align 4
  %119 = call i32 @ERR_MASK(i32 %118)
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i8*, i8** %6, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @strlcat(i8* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @RcvFormatErr, align 4
  %129 = call i32 @ERR_MASK(i32 %128)
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @strlcat(i8* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @RcvUnsupportedVLErr, align 4
  %139 = call i32 @ERR_MASK(i32 %138)
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @strlcat(i8* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %142, %136
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @RcvUnexpectedCharErr, align 4
  %149 = call i32 @ERR_MASK(i32 %148)
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i8*, i8** %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @strlcat(i8* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @RcvIBFlowErr, align 4
  %159 = call i32 @ERR_MASK(i32 %158)
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i8*, i8** %6, align 8
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @strlcat(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %162, %156
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @SendUnderRunErr, align 4
  %169 = call i32 @ERR_MASK(i32 %168)
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i8*, i8** %6, align 8
  %174 = load i64, i64* %7, align 8
  %175 = call i32 @strlcat(i8* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %172, %166
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @SendPioArmLaunchErr, align 4
  %179 = call i32 @ERR_MASK(i32 %178)
  %180 = and i32 %177, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i8*, i8** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = call i32 @strlcat(i8* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64 %184)
  br label %186

186:                                              ; preds = %182, %176
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @SendUnexpectedPktNumErr, align 4
  %189 = call i32 @ERR_MASK(i32 %188)
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i8*, i8** %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @strlcat(i8* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %194)
  br label %196

196:                                              ; preds = %192, %186
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @SendDroppedSmpPktErr, align 4
  %199 = call i32 @ERR_MASK(i32 %198)
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i8*, i8** %6, align 8
  %204 = load i64, i64* %7, align 8
  %205 = call i32 @strlcat(i8* %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @SendMaxPktLenErr, align 4
  %209 = call i32 @ERR_MASK(i32 %208)
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i8*, i8** %6, align 8
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @strlcat(i8* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 %214)
  br label %216

216:                                              ; preds = %212, %206
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @SendUnsupportedVLErr, align 4
  %219 = call i32 @ERR_MASK(i32 %218)
  %220 = and i32 %217, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i8*, i8** %6, align 8
  %224 = load i64, i64* %7, align 8
  %225 = call i32 @strlcat(i8* %223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 %224)
  br label %226

226:                                              ; preds = %222, %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @InvalidAddrErr, align 4
  %229 = call i32 @ERR_MASK(i32 %228)
  %230 = and i32 %227, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i8*, i8** %6, align 8
  %234 = load i64, i64* %7, align 8
  %235 = call i32 @strlcat(i8* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i64 %234)
  br label %236

236:                                              ; preds = %232, %226
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @RcvEgrFullErr, align 4
  %239 = call i32 @ERR_MASK(i32 %238)
  %240 = and i32 %237, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load i8*, i8** %6, align 8
  %244 = load i64, i64* %7, align 8
  %245 = call i32 @strlcat(i8* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 %244)
  br label %246

246:                                              ; preds = %242, %236
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @RcvHdrFullErr, align 4
  %249 = call i32 @ERR_MASK(i32 %248)
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load i8*, i8** %6, align 8
  %254 = load i64, i64* %7, align 8
  %255 = call i32 @strlcat(i8* %253, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 %254)
  br label %256

256:                                              ; preds = %252, %246
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @IBStatusChanged, align 4
  %259 = call i32 @ERR_MASK(i32 %258)
  %260 = and i32 %257, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load i8*, i8** %6, align 8
  %264 = load i64, i64* %7, align 8
  %265 = call i32 @strlcat(i8* %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i64 %264)
  br label %266

266:                                              ; preds = %262, %256
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @RcvIBLostLinkErr, align 4
  %269 = call i32 @ERR_MASK(i32 %268)
  %270 = and i32 %267, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load i8*, i8** %6, align 8
  %274 = load i64, i64* %7, align 8
  %275 = call i32 @strlcat(i8* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i64 %274)
  br label %276

276:                                              ; preds = %272, %266
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* @HardwareErr, align 4
  %279 = call i32 @ERR_MASK(i32 %278)
  %280 = and i32 %277, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load i8*, i8** %6, align 8
  %284 = load i64, i64* %7, align 8
  %285 = call i32 @strlcat(i8* %283, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i64 %284)
  br label %286

286:                                              ; preds = %282, %276
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @ResetNegated, align 4
  %289 = call i32 @ERR_MASK(i32 %288)
  %290 = and i32 %287, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %286
  %293 = load i8*, i8** %6, align 8
  %294 = load i64, i64* %7, align 8
  %295 = call i32 @strlcat(i8* %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 %294)
  br label %296

296:                                              ; preds = %292, %286
  br label %297

297:                                              ; preds = %296, %44
  %298 = load i32, i32* %9, align 4
  ret i32 %298
}

declare dso_local i32 @ERR_MASK(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
