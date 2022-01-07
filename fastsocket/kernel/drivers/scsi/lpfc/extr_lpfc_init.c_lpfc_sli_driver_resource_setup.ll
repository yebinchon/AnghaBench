; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_driver_resource_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_driver_resource_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i64, i32, i64, %struct.lpfc_sli, i32, %struct.TYPE_5__*, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring*, %struct.TYPE_8__ }
%struct.lpfc_sli_ring = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }

@lpfc_hb_timeout = common dso_local global i32 0, align 4
@lpfc_mbox_timeout = common dso_local global i32 0, align 4
@lpfc_poll_timeout = common dso_local global i32 0, align 4
@lpfc_fabric_block_timeout = common dso_local global i32 0, align 4
@lpfc_poll_eratt = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_HORNET = common dso_local global i64 0, align 8
@HBA_MENLO_SUPPORT = common dso_local global i32 0, align 4
@LPFC_DEFAULT_MENLO_SG_SEG_CNT = common dso_local global i32 0, align 4
@LPFC_SLI3_MAX_RING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpfc_vport_template = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@lpfc_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@LPFC_MAX_SG_SEG_CNT = common dso_local global i32 0, align 4
@LPFC_MAX_SG_SEG_CNT_DIF = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"9088 sg_tablesize:%d dmabuf_size:%d total_bde:%d\0A\00", align 1
@LPFC_MAX_VPI = common dso_local global i32 0, align 4
@BPL_ALIGN_SZ = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"2808 Requested number of SR-IOV virtual functions (%d) is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli_driver_resource_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_driver_resource_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 14
  %8 = call i32 @init_timer(%struct.TYPE_8__* %7)
  %9 = load i32, i32* @lpfc_hb_timeout, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 14
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = ptrtoint %struct.lpfc_hba* %13 to i64
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 14
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 8
  store %struct.lpfc_sli* %19, %struct.lpfc_sli** %4, align 8
  %20 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %20, i32 0, i32 1
  %22 = call i32 @init_timer(%struct.TYPE_8__* %21)
  %23 = load i32, i32* @lpfc_mbox_timeout, align 4
  %24 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = ptrtoint %struct.lpfc_hba* %27 to i64
  %29 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 13
  %34 = call i32 @init_timer(%struct.TYPE_8__* %33)
  %35 = load i32, i32* @lpfc_poll_timeout, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = ptrtoint %struct.lpfc_hba* %39 to i64
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 12
  %46 = call i32 @init_timer(%struct.TYPE_8__* %45)
  %47 = load i32, i32* @lpfc_fabric_block_timeout, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 12
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = ptrtoint %struct.lpfc_hba* %51 to i64
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 12
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 11
  %58 = call i32 @init_timer(%struct.TYPE_8__* %57)
  %59 = load i32, i32* @lpfc_poll_eratt, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 11
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %64 = ptrtoint %struct.lpfc_hba* %63 to i64
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 11
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i32, i32* @HA_ERATT, align 4
  %69 = load i32, i32* @HA_MBATT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @HA_LATT, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @HA_RXMASK, align 4
  %76 = load i32, i32* @LPFC_ELS_RING, align 4
  %77 = mul nsw i32 %76, 4
  %78 = shl i32 %75, %77
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = call i32 @lpfc_get_cfgparam(%struct.lpfc_hba* %83)
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 10
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI_DEVICE_ID_HORNET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %1
  %93 = load i32, i32* @HBA_MENLO_SUPPORT, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @LPFC_DEFAULT_MENLO_SG_SEG_CNT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i32, i32* @LPFC_DEFAULT_MENLO_SG_SEG_CNT, align 4
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %92
  br label %108

108:                                              ; preds = %107, %1
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %110, i32 0, i32 0
  %112 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %111, align 8
  %113 = icmp ne %struct.lpfc_sli_ring* %112, null
  br i1 %113, label %125, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @LPFC_SLI3_MAX_RING, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i64 @kzalloc(i32 %118, i32 %119)
  %121 = inttoptr i64 %120 to %struct.lpfc_sli_ring*
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %123, i32 0, i32 0
  store %struct.lpfc_sli_ring* %121, %struct.lpfc_sli_ring** %124, align 8
  br label %125

125:                                              ; preds = %114, %108
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %127, i32 0, i32 0
  %129 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %128, align 8
  %130 = icmp ne %struct.lpfc_sli_ring* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %240

134:                                              ; preds = %125
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lpfc_vport_template, i32 0, i32 0), align 4
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lpfc_template, i32 0, i32 0), align 4
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %134
  %146 = load i32, i32* @LPFC_MAX_SG_SEG_CNT, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = add i64 8, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LPFC_MAX_SG_SEG_CNT_DIF, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load i32, i32* @LPFC_MAX_SG_SEG_CNT_DIF, align 4
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %145
  %163 = load i32, i32* @LPFC_MAX_SG_SEG_CNT, align 4
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  br label %183

166:                                              ; preds = %134
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = add i64 8, %172
  %174 = trunc i64 %173 to i32
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 2
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %182 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %166, %162
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %185 = load i32, i32* @KERN_INFO, align 4
  %186 = load i32, i32* @LOG_INIT, align 4
  %187 = load i32, i32* @LOG_FCP, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %184, i32 %185, i32 %188, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %191, i32 %194, i32 %197)
  %199 = load i32, i32* @LPFC_MAX_VPI, align 4
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 8
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 5
  store i64 0, i64* %203, align 8
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %205 = call i32 @lpfc_sli_setup(%struct.lpfc_hba* %204)
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %207 = call i32 @lpfc_sli_queue_setup(%struct.lpfc_hba* %206)
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %209 = load i32, i32* @BPL_ALIGN_SZ, align 4
  %210 = call i64 @lpfc_mem_alloc(%struct.lpfc_hba* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %183
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %240

215:                                              ; preds = %183
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %217 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba* %221, i32 %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %220
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %230 = load i32, i32* @KERN_WARNING, align 4
  %231 = load i32, i32* @LOG_INIT, align 4
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %229, i32 %230, i32 %231, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 4
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %228, %220
  br label %239

239:                                              ; preds = %238, %215
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %212, %131
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @lpfc_get_cfgparam(%struct.lpfc_hba*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_sli_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_queue_setup(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_mem_alloc(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_probe_sriov_nr_virtfn(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
