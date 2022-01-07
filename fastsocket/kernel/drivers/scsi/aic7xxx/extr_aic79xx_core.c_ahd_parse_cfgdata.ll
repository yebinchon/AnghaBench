; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_parse_cfgdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_parse_cfgdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32, i32 }
%struct.seeprom_config = type { i32, i32, i32*, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ahd_transinfo }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ahd_transinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@CFMAXTARG = common dso_local global i32 0, align 4
@CFSCSIID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: unable to allocate ahd_tmode_tstate.  Failing attach\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CFDISC = common dso_local global i32 0, align 4
@CFPACKETIZED = common dso_local global i32 0, align 4
@CFXFER = common dso_local global i32 0, align 4
@CFXFER_ASYNC = common dso_local global i32 0, align 4
@AHD_PERIOD_10MHz = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@AHD_ASYNC_XFER_PERIOD = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RD_STRM = common dso_local global i32 0, align 4
@MSG_EXT_PPR_WR_FLOW = common dso_local global i32 0, align 4
@MSG_EXT_PPR_HOLD_MCS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@AHD_RTI = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@CFQAS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@CFWIDEB = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_SPCHK_ENB_A = common dso_local global i32 0, align 4
@CFSPARITY = common dso_local global i32 0, align 4
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@CFRESETB = common dso_local global i32 0, align 4
@AHD_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@CFEXTEND = common dso_local global i32 0, align 4
@AHD_BIOS_ENABLED = common dso_local global i32 0, align 4
@CFBIOSSTATE = common dso_local global i32 0, align 4
@CFBS_ENABLED = common dso_local global i32 0, align 4
@AHD_STPWLEVEL_A = common dso_local global i32 0, align 4
@CFSTPWLEVEL = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@AHD_SYNCRATE_160 = common dso_local global i32 0, align 4
@AHD_SYNCRATE_DT = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_parse_cfgdata(%struct.ahd_softc* %0, %struct.seeprom_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.seeprom_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahd_devinfo, align 4
  %9 = alloca %struct.ahd_initiator_tinfo*, align 8
  %10 = alloca %struct.ahd_transinfo*, align 8
  %11 = alloca %struct.ahd_tmode_tstate*, align 8
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.seeprom_config* %1, %struct.seeprom_config** %5, align 8
  %13 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %14 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CFMAXTARG, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %19 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CFSCSIID, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @ahd_alloc_tstate(%struct.ahd_softc* %25, i32 %28, i8 signext 65)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %33 = call i8* @ahd_name(%struct.ahd_softc* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %365

36:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %265, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %268

41:                                               ; preds = %37
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %42, i8 signext 65, i32 %45, i32 %46, %struct.ahd_tmode_tstate** %11)
  store %struct.ahd_initiator_tinfo* %47, %struct.ahd_initiator_tinfo** %9, align 8
  %48 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %49 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %48, i32 0, i32 2
  store %struct.ahd_transinfo* %49, %struct.ahd_transinfo** %10, align 8
  %50 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %51 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %51, i32 0, i32 0
  store i32 4, i32* %52, align 4
  %53 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %54 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %54, i32 0, i32 1
  store i32 4, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 1, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %12, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %67 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %12, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %77 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CFDISC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %41
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %89 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %113

102:                                              ; preds = %41
  %103 = load i32, i32* @CFPACKETIZED, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %106 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %104
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %102, %86
  %114 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %115 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %114, i32 0, i32 2
  store i32 0, i32* %115, align 4
  %116 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %117 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CFXFER, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %126 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %128 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CFXFER_ASYNC, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %113
  %133 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %134 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AHD_PERIOD_10MHz, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %140 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %141 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i32, i32* @MAX_OFFSET, align 4
  %146 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %147 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  br label %154

148:                                              ; preds = %113
  %149 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %150 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %149, i32 0, i32 4
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* @AHD_ASYNC_XFER_PERIOD, align 4
  %152 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %153 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %148, %144
  %155 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %156 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @CFPACKETIZED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %154
  %166 = load i32, i32* @MSG_EXT_PPR_RD_STRM, align 4
  %167 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @MSG_EXT_PPR_HOLD_MCS, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %174 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %178 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @AHD_RTI, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %165
  %184 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %185 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %186 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %165
  br label %190

190:                                              ; preds = %189, %154
  %191 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %192 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @CFQAS, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %190
  %202 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %203 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %204 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %190
  %208 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %209 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @CFWIDEB, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %207
  %219 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %220 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %221 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  br label %226

222:                                              ; preds = %207
  %223 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %224 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %225 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = load i32, i32* %12, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %230 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %234 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  store i32 2, i32* %235, align 4
  %236 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %237 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  store i32 2, i32* %238, align 4
  %239 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %240 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  store i32 2, i32* %241, align 4
  %242 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %243 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  store i32 2, i32* %244, align 4
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %246 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %250 = load i32, i32* @ROLE_INITIATOR, align 4
  %251 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %8, i32 %247, i32 %248, i32 %249, i8 signext 65, i32 %250)
  %252 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %253 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %254 = load i32, i32* @AHD_TRANS_CUR, align 4
  %255 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @TRUE, align 4
  %258 = call i32 @ahd_set_width(%struct.ahd_softc* %252, %struct.ahd_devinfo* %8, i32 %253, i32 %256, i32 %257)
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %260 = load i32, i32* @AHD_TRANS_CUR, align 4
  %261 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @TRUE, align 4
  %264 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %259, %struct.ahd_devinfo* %8, i32 0, i32 0, i32 0, i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %226
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %6, align 4
  br label %37

268:                                              ; preds = %37
  %269 = load i32, i32* @AHD_SPCHK_ENB_A, align 4
  %270 = xor i32 %269, -1
  %271 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %272 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %276 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CFSPARITY, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %268
  %282 = load i32, i32* @AHD_SPCHK_ENB_A, align 4
  %283 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %284 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  br label %287

287:                                              ; preds = %281, %268
  %288 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %291 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, %289
  store i32 %293, i32* %291, align 4
  %294 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %295 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @CFRESETB, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %287
  %301 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %302 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %303 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %300, %287
  %307 = load i32, i32* @AHD_EXTENDED_TRANS_A, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %310 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %314 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CFEXTEND, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %306
  %320 = load i32, i32* @AHD_EXTENDED_TRANS_A, align 4
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %322 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %319, %306
  %326 = load i32, i32* @AHD_BIOS_ENABLED, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %329 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 4
  %332 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %333 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @CFBIOSSTATE, align 4
  %336 = and i32 %334, %335
  %337 = load i32, i32* @CFBS_ENABLED, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %325
  %340 = load i32, i32* @AHD_BIOS_ENABLED, align 4
  %341 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %342 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  br label %345

345:                                              ; preds = %339, %325
  %346 = load i32, i32* @AHD_STPWLEVEL_A, align 4
  %347 = xor i32 %346, -1
  %348 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %349 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, %347
  store i32 %351, i32* %349, align 4
  %352 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %353 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @CFSTPWLEVEL, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %345
  %359 = load i32, i32* @AHD_STPWLEVEL_A, align 4
  %360 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %361 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %358, %345
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %364, %31
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32* @ahd_alloc_tstate(%struct.ahd_softc*, i32, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
