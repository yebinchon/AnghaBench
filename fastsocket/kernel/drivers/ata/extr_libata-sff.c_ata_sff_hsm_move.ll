; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_hsm_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_hsm_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ata%u: protocol %d task_state %d (dev_stat 0x%X)\0A\00", align 1
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ST_FIRST: !(DRQ|ERR|DF)\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@ATA_HORKAGE_STUCK_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ST_FIRST: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@ATA_PROT_PIO = common dso_local global i32 0, align 4
@ATAPI_PROT_PIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"ST-ATAPI: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@ATA_HORKAGE_DIAGNOSTIC = common dso_local global i32 0, align 4
@AC_ERR_NODEV_HINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"ST-ATA: DRQ=0 without device error, dev_stat 0x%X\00", align 1
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"ST-ATA: BUSY|DRQ persists on ERR|DF, dev_stat 0x%X\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"ata%u: dev %u command complete, drv_stat 0x%x\0A\00", align 1
@HSM_ST_IDLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_hsm_move(%struct.ata_port* %0, %struct.ata_queued_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_eh_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ata_eh_info* %14, %struct.ata_eh_info** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %26 = call i32 @ata_hsm_ok_in_wq(%struct.ata_port* %24, %struct.ata_queued_cmd* %25)
  %27 = icmp ne i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  br label %30

30:                                               ; preds = %328, %315, %297, %243, %193, %172, %161, %102, %82, %4
  %31 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, i32, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %371 [
    i32 129, label %46
    i32 131, label %149
    i32 128, label %320
    i32 130, label %363
  ]

46:                                               ; preds = %30
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ATA_DRQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @unlikely(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ATA_ERR, align 4
  %63 = load i32, i32* @ATA_DF, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = call i32 @likely(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @AC_ERR_DEV, align 4
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %82

74:                                               ; preds = %60
  %75 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %76 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @AC_ERR_HSM, align 4
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %84 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %83, i32 0, i32 0
  store i32 130, i32* %84, align 4
  br label %30

85:                                               ; preds = %46
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @ATA_ERR, align 4
  %88 = load i32, i32* @ATA_DF, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = call i32 @unlikely(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %85
  %94 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %95 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ATA_HORKAGE_STUCK_ERR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %93
  %103 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @AC_ERR_HSM, align 4
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %112 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %111, i32 0, i32 0
  store i32 130, i32* %112, align 4
  br label %30

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %119 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @spin_lock_irqsave(i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %117, %114
  %124 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATA_PROT_PIO, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %132 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %131, i32 0, i32 0
  store i32 131, i32* %132, align 4
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %134 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %133)
  br label %139

135:                                              ; preds = %123
  %136 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %137 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %138 = call i32 @atapi_send_cdb(%struct.ata_port* %136, %struct.ata_queued_cmd* %137)
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %144 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32 %145, i64 %146)
  br label %148

148:                                              ; preds = %142, %139
  br label %373

149:                                              ; preds = %30
  %150 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %151 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ATAPI_PROT_PIO, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %149
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ATA_DRQ, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %163 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %162, i32 0, i32 0
  store i32 128, i32* %163, align 4
  br label %30

164:                                              ; preds = %156
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @ATA_ERR, align 4
  %167 = load i32, i32* @ATA_DF, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = call i32 @unlikely(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %173, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @AC_ERR_HSM, align 4
  %177 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %178 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %182 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %181, i32 0, i32 0
  store i32 130, i32* %182, align 4
  br label %30

183:                                              ; preds = %164
  %184 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %185 = call i32 @atapi_pio_bytes(%struct.ata_queued_cmd* %184)
  %186 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %187 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 130
  %190 = zext i1 %189 to i32
  %191 = call i32 @unlikely(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %30

194:                                              ; preds = %183
  br label %319

195:                                              ; preds = %149
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @ATA_DRQ, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @unlikely(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %246

203:                                              ; preds = %195
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @ATA_ERR, align 4
  %206 = load i32, i32* @ATA_DF, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = call i32 @likely(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %203
  %212 = load i32, i32* @AC_ERR_DEV, align 4
  %213 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %214 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %218 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %217, i32 0, i32 2
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ATA_HORKAGE_DIAGNOSTIC, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %211
  %226 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %227 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %228 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %211
  br label %243

232:                                              ; preds = %203
  %233 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %233, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @AC_ERR_HSM, align 4
  %237 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %240 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %232, %231
  %244 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %245 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %244, i32 0, i32 0
  store i32 130, i32* %245, align 4
  br label %30

246:                                              ; preds = %195
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @ATA_ERR, align 4
  %249 = load i32, i32* @ATA_DF, align 4
  %250 = or i32 %248, %249
  %251 = and i32 %247, %250
  %252 = call i32 @unlikely(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %300

254:                                              ; preds = %246
  %255 = load i32, i32* @AC_ERR_DEV, align 4
  %256 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %257 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %261 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %254
  %268 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %269 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %268)
  %270 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %271 = call i32 @ata_wait_idle(%struct.ata_port* %270)
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %267, %254
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* @ATA_BUSY, align 4
  %275 = load i32, i32* @ATA_DRQ, align 4
  %276 = or i32 %274, %275
  %277 = and i32 %273, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %272
  %280 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %280, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @AC_ERR_HSM, align 4
  %284 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %285 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %279, %272
  %289 = load i32, i32* %7, align 4
  %290 = icmp eq i32 %289, 127
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load i32, i32* @AC_ERR_NODEV_HINT, align 4
  %293 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %294 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %291, %288
  %298 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %299 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %298, i32 0, i32 0
  store i32 130, i32* %299, align 4
  br label %30

300:                                              ; preds = %246
  %301 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %302 = call i32 @ata_pio_sectors(%struct.ata_queued_cmd* %301)
  %303 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %304 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 128
  br i1 %306, label %307, label %318

307:                                              ; preds = %300
  %308 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %309 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %307
  %316 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %317 = call i32 @ata_wait_idle(%struct.ata_port* %316)
  store i32 %317, i32* %7, align 4
  br label %30

318:                                              ; preds = %307, %300
  br label %319

319:                                              ; preds = %318, %194
  store i32 1, i32* %11, align 4
  br label %373

320:                                              ; preds = %30
  %321 = load i32, i32* %7, align 4
  %322 = call i32 @ata_ok(i32 %321)
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = call i32 @unlikely(i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %320
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @__ac_err_mask(i32 %329)
  %331 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %332 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %336 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %335, i32 0, i32 0
  store i32 130, i32* %336, align 4
  br label %30

337:                                              ; preds = %320
  %338 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %339 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %342 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %341, i32 0, i32 2
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %7, align 4
  %347 = call i32 (i8*, i32, i32, i32, ...) @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %340, i32 %345, i32 %346)
  %348 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %349 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @AC_ERR_DEV, align 4
  %352 = load i32, i32* @AC_ERR_HSM, align 4
  %353 = or i32 %351, %352
  %354 = and i32 %350, %353
  %355 = call i32 @WARN_ON_ONCE(i32 %354)
  %356 = load i8*, i8** @HSM_ST_IDLE, align 8
  %357 = ptrtoint i8* %356 to i32
  %358 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %359 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  %360 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd* %360, i32 %361)
  store i32 0, i32* %11, align 4
  br label %373

363:                                              ; preds = %30
  %364 = load i8*, i8** @HSM_ST_IDLE, align 8
  %365 = ptrtoint i8* %364 to i32
  %366 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %367 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 4
  %368 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd* %368, i32 %369)
  store i32 0, i32* %11, align 4
  br label %373

371:                                              ; preds = %30
  store i32 0, i32* %11, align 4
  %372 = call i32 (...) @BUG()
  br label %373

373:                                              ; preds = %371, %363, %337, %319, %148
  %374 = load i32, i32* %11, align 4
  ret i32 %374
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ata_hsm_ok_in_wq(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_pio_sectors(%struct.ata_queued_cmd*) #1

declare dso_local i32 @atapi_send_cdb(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @atapi_pio_bytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @ata_ok(i32) #1

declare dso_local i32 @__ac_err_mask(i32) #1

declare dso_local i32 @ata_hsm_qc_complete(%struct.ata_queued_cmd*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
