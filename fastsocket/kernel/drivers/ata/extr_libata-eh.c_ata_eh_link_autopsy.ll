; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_link_autopsy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_link_autopsy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_device*, %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_device = type { i64, i32 }
%struct.ata_eh_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, %struct.ata_device*, i32, i32 }
%struct.ata_port = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ata_queued_cmd = type { i32, i32, %struct.ata_device*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_EHI_NO_AUTOPSY = common dso_local global i32 0, align 4
@SCR_ERROR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATA_ALL_DEVICES = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@AC_ERR_MEDIA = common dso_local global i32 0, align 4
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@ATA_QCFLAG_IO = common dso_local global i32 0, align 4
@ATA_QCFLAG_RETRY = common dso_local global i32 0, align 4
@ATA_EFLAG_IS_IO = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@ATA_EH_PERDEV_MASK = common dso_local global i32 0, align 4
@ATA_DFLAG_DUBIOUS_XFER = common dso_local global i32 0, align 4
@ATA_EFLAG_DUBIOUS_XFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ata_eh_link_autopsy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_eh_link_autopsy(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 2
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %3, align 8
  %15 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 1
  store %struct.ata_eh_context* %16, %struct.ata_eh_context** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %19 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATA_EHI_NO_AUTOPSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %378

26:                                               ; preds = %1
  %27 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %28 = load i32, i32* @SCR_ERROR, align 4
  %29 = call i32 @sata_scr_read(%struct.ata_link* %27, i32 %28, i32* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %35 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %40 = call i32 @ata_eh_analyze_serror(%struct.ata_link* %39)
  br label %66

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i32, i32* @ATA_ALL_DEVICES, align 4
  %48 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %49 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @ATA_EH_RESET, align 4
  %54 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %55 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @AC_ERR_OTHER, align 4
  %60 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %61 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %46, %41
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %68 = call i32 @ata_eh_analyze_ncq_error(%struct.ata_link* %67)
  %69 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %70 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AC_ERR_OTHER, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load i32, i32* @AC_ERR_OTHER, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %81 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %77, %66
  %86 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %87 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %229, %85
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %232

96:                                               ; preds = %92
  %97 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %97, i32 %98)
  store %struct.ata_queued_cmd* %99, %struct.ata_queued_cmd** %11, align 8
  %100 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %101 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 2
  %109 = load %struct.ata_device*, %struct.ata_device** %108, align 8
  %110 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %109)
  %111 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %112 = icmp ne %struct.ata_link* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106, %96
  br label %229

114:                                              ; preds = %106
  %115 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %116 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %120 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %124 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %125 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %124, i32 0, i32 3
  %126 = call i32 @ata_eh_analyze_tf(%struct.ata_queued_cmd* %123, i32* %125)
  %127 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %128 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 4
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %133 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %114
  %139 = load i32, i32* @AC_ERR_DEV, align 4
  %140 = load i32, i32* @AC_ERR_MEDIA, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @AC_ERR_INVALID, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %146 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %138, %114
  %150 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %151 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @AC_ERR_OTHER, align 4
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %149
  %158 = load i32, i32* @AC_ERR_OTHER, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %161 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %149
  %165 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %166 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load i32, i32* @AC_ERR_DEV, align 4
  %173 = load i32, i32* @AC_ERR_OTHER, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %177 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %171, %164
  %181 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %182 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %180
  %188 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %189 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AC_ERR_INVALID, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %187
  %195 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %196 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @AC_ERR_DEV, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %194, %180
  %201 = load i32, i32* @ATA_QCFLAG_RETRY, align 4
  %202 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %203 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %194, %187
  %207 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %208 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %207, i32 0, i32 2
  %209 = load %struct.ata_device*, %struct.ata_device** %208, align 8
  %210 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %211 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 4
  store %struct.ata_device* %209, %struct.ata_device** %212, align 8
  %213 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %214 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %6, align 4
  %218 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %219 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @ATA_QCFLAG_IO, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %206
  %225 = load i32, i32* @ATA_EFLAG_IS_IO, align 4
  %226 = load i32, i32* %7, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %224, %206
  br label %229

229:                                              ; preds = %228, %113
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %92

232:                                              ; preds = %92
  %233 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %234 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %232
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* @AC_ERR_HSM, align 4
  %242 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %243 = or i32 %241, %242
  %244 = and i32 %240, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %239, %232
  %247 = load i32, i32* @ATA_EH_RESET, align 4
  %248 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %249 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %247
  store i32 %252, i32* %250, align 4
  br label %280

253:                                              ; preds = %239
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @ATA_EFLAG_IS_IO, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %258, %253
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* @ATA_EFLAG_IS_IO, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %279, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @AC_ERR_DEV, align 4
  %269 = xor i32 %268, -1
  %270 = and i32 %267, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %266, %258
  %273 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %274 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %275 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %273
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %272, %266, %261
  br label %280

280:                                              ; preds = %279, %246
  %281 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %282 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 4
  %284 = load %struct.ata_device*, %struct.ata_device** %283, align 8
  %285 = icmp ne %struct.ata_device* %284, null
  br i1 %285, label %286, label %313

286:                                              ; preds = %280
  %287 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %288 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ATA_EH_PERDEV_MASK, align 4
  %292 = and i32 %290, %291
  %293 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %294 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %298 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 4
  %300 = load %struct.ata_device*, %struct.ata_device** %299, align 8
  %301 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = getelementptr inbounds i32, i32* %296, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %292
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* @ATA_EH_PERDEV_MASK, align 4
  %307 = xor i32 %306, -1
  %308 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %309 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, %307
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %286, %280
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %313
  %319 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %320 = call i32 @ata_is_host_link(%struct.ata_link* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %324 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %325 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %323
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %322, %318, %313
  %332 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %333 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 4
  %335 = load %struct.ata_device*, %struct.ata_device** %334, align 8
  store %struct.ata_device* %335, %struct.ata_device** %5, align 8
  %336 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %337 = icmp ne %struct.ata_device* %336, null
  br i1 %337, label %352, label %338

338:                                              ; preds = %331
  %339 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %340 = call i32 @ata_link_max_devices(%struct.ata_link* %339)
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %352

342:                                              ; preds = %338
  %343 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %344 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %343, i32 0, i32 0
  %345 = load %struct.ata_device*, %struct.ata_device** %344, align 8
  %346 = call i64 @ata_dev_enabled(%struct.ata_device* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %342
  %349 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %350 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %349, i32 0, i32 0
  %351 = load %struct.ata_device*, %struct.ata_device** %350, align 8
  store %struct.ata_device* %351, %struct.ata_device** %5, align 8
  br label %352

352:                                              ; preds = %348, %342, %338, %331
  %353 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %354 = icmp ne %struct.ata_device* %353, null
  br i1 %354, label %355, label %376

355:                                              ; preds = %352
  %356 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %357 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @ATA_DFLAG_DUBIOUS_XFER, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %355
  %363 = load i32, i32* @ATA_EFLAG_DUBIOUS_XFER, align 4
  %364 = load i32, i32* %7, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %7, align 4
  br label %366

366:                                              ; preds = %362, %355
  %367 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* %6, align 4
  %370 = call i32 @ata_eh_speed_down(%struct.ata_device* %367, i32 %368, i32 %369)
  %371 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %372 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %370
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %366, %352
  %377 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %378

378:                                              ; preds = %376, %25
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ata_eh_analyze_serror(%struct.ata_link*) #1

declare dso_local i32 @ata_eh_analyze_ncq_error(%struct.ata_link*) #1

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i32 @ata_eh_analyze_tf(%struct.ata_queued_cmd*, i32*) #1

declare dso_local i32 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i32 @ata_link_max_devices(%struct.ata_link*) #1

declare dso_local i64 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i32 @ata_eh_speed_down(%struct.ata_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
