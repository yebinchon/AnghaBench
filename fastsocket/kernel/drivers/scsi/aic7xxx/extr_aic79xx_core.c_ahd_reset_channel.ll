; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reset_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, %struct.ahd_tmode_tstate**, i32* }
%struct.ahd_tmode_tstate = type { %struct.ahd_tmode_lstate** }
%struct.ahd_tmode_lstate = type { i32 }
%struct.ahd_devinfo = type { i32 }

@AHD_BUS_RESET_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: bus reset still active\0A\00", align 1
@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i64 0, align 8
@SCSISEQ0 = common dso_local global i32 0, align 4
@SCSISEQ1 = common dso_local global i32 0, align 4
@DFFSTAT = common dso_local global i32 0, align 4
@CURRFIFO = common dso_local global i64 0, align 8
@CURRFIFO_1 = common dso_local global i64 0, align 8
@DFCNTRL = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i64 0, align 8
@HDMAEN = common dso_local global i64 0, align 8
@HDMAENACK = common dso_local global i64 0, align 8
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@ENSCSIRST = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i64 0, align 8
@SCSISEQ_TEMPLATE = common dso_local global i32 0, align 4
@ENSELI = common dso_local global i64 0, align 8
@ENRSELI = common dso_local global i64 0, align 8
@ENAUTOATNP = common dso_local global i64 0, align 8
@AHD_WIDE = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AC_BUS_RESET = common dso_local global i32 0, align 4
@AHD_NUM_LUNS = common dso_local global i64 0, align 8
@AHD_TARGETROLE = common dso_local global i32 0, align 4
@EVENT_TYPE_BUS_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_reset_channel(%struct.ahd_softc* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahd_devinfo, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ahd_devinfo, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AHD_BUS_RESET_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %25 = call i8* @ahd_name(%struct.ahd_softc* %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 0, i32* %4, align 4
  br label %227

27:                                               ; preds = %3
  %28 = load i32, i32* @AHD_BUS_RESET_ACTIVE, align 4
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %36 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %37 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %38 = load i8, i8* %6, align 1
  %39 = load i32, i32* @ROLE_UNKNOWN, align 4
  %40 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %8, i64 %35, i64 %36, i32 %37, i8 signext %38, i32 %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %42 = call i32 @ahd_pause(%struct.ahd_softc* %41)
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %44 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %43)
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %46 = call i32 @ahd_run_qoutfifo(%struct.ahd_softc* %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %48 = load i64, i64* @AHD_MODE_SCSI, align 8
  %49 = load i64, i64* @AHD_MODE_SCSI, align 8
  %50 = call i32 @ahd_set_modes(%struct.ahd_softc* %47, i64 %48, i64 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %52 = load i32, i32* @SCSISEQ0, align 4
  %53 = call i32 @ahd_outb(%struct.ahd_softc* %51, i32 %52, i64 0)
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %55 = load i32, i32* @SCSISEQ1, align 4
  %56 = call i32 @ahd_outb(%struct.ahd_softc* %54, i32 %55, i64 0)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %58 = load i32, i32* @DFFSTAT, align 4
  %59 = call i64 @ahd_inb(%struct.ahd_softc* %57, i32 %58)
  %60 = load i64, i64* @CURRFIFO, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %13, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @CURRFIFO_1, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %27
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %66

66:                                               ; preds = %65, %27
  br label %67

67:                                               ; preds = %104, %66
  %68 = load i64, i64* @CURRFIFO_1, align 8
  %69 = load i64, i64* %14, align 8
  %70 = xor i64 %69, %68
  store i64 %70, i64* %14, align 8
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @ahd_set_modes(%struct.ahd_softc* %71, i64 %72, i64 %73)
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %76 = load i32, i32* @DFCNTRL, align 4
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %78 = load i32, i32* @DFCNTRL, align 4
  %79 = call i64 @ahd_inb(%struct.ahd_softc* %77, i32 %78)
  %80 = load i64, i64* @SCSIEN, align 8
  %81 = load i64, i64* @HDMAEN, align 8
  %82 = or i64 %80, %81
  %83 = xor i64 %82, -1
  %84 = and i64 %79, %83
  %85 = call i32 @ahd_outb(%struct.ahd_softc* %75, i32 %76, i64 %84)
  br label %86

86:                                               ; preds = %93, %67
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %88 = load i32, i32* @DFCNTRL, align 4
  %89 = call i64 @ahd_inb(%struct.ahd_softc* %87, i32 %88)
  %90 = load i64, i64* @HDMAENACK, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 @ahd_delay(i32 10)
  br label %86

95:                                               ; preds = %86
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %97 = load i64, i64* @AHD_MODE_SCSI, align 8
  %98 = load i64, i64* @AHD_MODE_SCSI, align 8
  %99 = call i32 @ahd_set_modes(%struct.ahd_softc* %96, i64 %97, i64 %98)
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %101 = load i32, i32* @DFFSTAT, align 4
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @ahd_outb(%struct.ahd_softc* %100, i32 %101, i64 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %67, label %108

108:                                              ; preds = %104
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %110 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %109)
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %112 = load i32, i32* @SIMODE1, align 4
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %114 = load i32, i32* @SIMODE1, align 4
  %115 = call i64 @ahd_inb(%struct.ahd_softc* %113, i32 %114)
  %116 = load i64, i64* @ENBUSFREE, align 8
  %117 = load i64, i64* @ENSCSIRST, align 8
  %118 = or i64 %116, %117
  %119 = xor i64 %118, -1
  %120 = and i64 %115, %119
  %121 = call i32 @ahd_outb(%struct.ahd_softc* %111, i32 %112, i64 %120)
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %126 = call i32 @ahd_reset_current_bus(%struct.ahd_softc* %125)
  br label %127

127:                                              ; preds = %124, %108
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %129 = call i32 @ahd_clear_intstat(%struct.ahd_softc* %128)
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %131 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %132 = load i8, i8* %6, align 1
  %133 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %134 = load i32, i32* @SCB_LIST_NULL, align 4
  %135 = load i32, i32* @ROLE_UNKNOWN, align 4
  %136 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %137 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %130, i64 %131, i8 signext %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %139 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %138, i32 0)
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %141 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %140, i32 1)
  %142 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %143 = load i32, i32* @CLRSINT1, align 4
  %144 = load i64, i64* @CLRSCSIRSTI, align 8
  %145 = call i32 @ahd_outb(%struct.ahd_softc* %142, i32 %143, i64 %144)
  %146 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %147 = load i32, i32* @SIMODE1, align 4
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %149 = load i32, i32* @SIMODE1, align 4
  %150 = call i64 @ahd_inb(%struct.ahd_softc* %148, i32 %149)
  %151 = load i64, i64* @ENSCSIRST, align 8
  %152 = or i64 %150, %151
  %153 = call i32 @ahd_outb(%struct.ahd_softc* %146, i32 %147, i64 %152)
  %154 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %155 = load i32, i32* @SCSISEQ_TEMPLATE, align 4
  %156 = call i64 @ahd_inb(%struct.ahd_softc* %154, i32 %155)
  store i64 %156, i64* %15, align 8
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %158 = load i32, i32* @SCSISEQ1, align 4
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* @ENSELI, align 8
  %161 = load i64, i64* @ENRSELI, align 8
  %162 = or i64 %160, %161
  %163 = load i64, i64* @ENAUTOATNP, align 8
  %164 = or i64 %162, %163
  %165 = and i64 %159, %164
  %166 = call i32 @ahd_outb(%struct.ahd_softc* %157, i32 %158, i64 %165)
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %168 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AHD_WIDE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 15, i32 7
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %176

176:                                              ; preds = %213, %127
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp ule i64 %177, %178
  br i1 %179, label %180, label %216

180:                                              ; preds = %176
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %182 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %181, i32 0, i32 2
  %183 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %183, i64 %184
  %186 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %185, align 8
  %187 = icmp eq %struct.ahd_tmode_tstate* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %213

189:                                              ; preds = %180
  store i64 0, i64* %9, align 8
  br label %190

190:                                              ; preds = %209, %189
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp ule i64 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %198 = load i32, i32* @ROLE_UNKNOWN, align 4
  %199 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %16, i64 %195, i64 %196, i32 %197, i8 signext 65, i32 %198)
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %201 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %202 = load i32, i32* @AHD_TRANS_CUR, align 4
  %203 = load i32, i32* @TRUE, align 4
  %204 = call i32 @ahd_set_width(%struct.ahd_softc* %200, %struct.ahd_devinfo* %16, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %206 = load i32, i32* @AHD_TRANS_CUR, align 4
  %207 = load i32, i32* @TRUE, align 4
  %208 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %205, %struct.ahd_devinfo* %16, i32 0, i32 0, i32 0, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %194
  %210 = load i64, i64* %9, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %9, align 8
  br label %190

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212, %188
  %214 = load i64, i64* %10, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %10, align 8
  br label %176

216:                                              ; preds = %176
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %218 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %8, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %221 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %222 = load i32, i32* @AC_BUS_RESET, align 4
  %223 = call i32 @ahd_send_async(%struct.ahd_softc* %217, i32 %219, i64 %220, i32 %221, i32 %222)
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %225 = call i32 @ahd_restart(%struct.ahd_softc* %224)
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %216, %23
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i64, i64, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_critical_section(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_run_qoutfifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i64, i64) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @ahd_clear_msg_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_current_bus(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_intstat(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i64, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_clear_fifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i64, i32, i32) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
