; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_config_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i64, %struct.TYPE_20__*, i32, i32*, i64, i32, i32, i64, i32, %struct.TYPE_22__, i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@LPFC_LINK_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_INIT_MBX_CMDS = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_HBQ_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_CRP_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@LPFC_SLI3_DSS_ENABLED = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"0442 Adapter failed to init, mbxCmd x%x CONFIG_PORT, mbxStatus x%x Data: x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"3110 Port did not grant ASABT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"2850 Security Crypto Active. FIPS x%d (Spec Rev: x%d)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"2856 Config Port Security Crypto Error: x%x \00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"0443 Adapter did not grant BlockGuard\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_config_port(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @mempool_alloc(i32 %12, i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %432

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %188, %84, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %189

37:                                               ; preds = %35
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 11
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 11
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 14
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = call i32 @lpfc_sli_chipset_init(%struct.lpfc_hba* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  br label %189

62:                                               ; preds = %37
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 11
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 12
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 11
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = call i32 @lpfc_config_port_prep(%struct.lpfc_hba* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ERESTART, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %62
  %85 = load i32, i32* @LPFC_LINK_UNKNOWN, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 8
  br label %28

88:                                               ; preds = %62
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %189

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @LPFC_INIT_MBX_CMDS, align 4
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 13
  store i32 %94, i32* %96, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = call i32 @lpfc_config_port(%struct.lpfc_hba* %97, %struct.TYPE_16__* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = load i32, i32* @MBX_POLL, align 4
  %103 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %100, %struct.TYPE_16__* %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %105 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @LPFC_SLI3_CRP_ENABLED, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @LPFC_SLI3_DSS_ENABLED, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @MBX_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %93
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %123 = load i32, i32* @KERN_ERR, align 4
  %124 = load i32, i32* @LOG_INIT, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %134, i32 0)
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 11
  %138 = call i32 @spin_lock_irq(i32* %137)
  %139 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 12
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 11
  %148 = call i32 @spin_unlock_irq(i32* %147)
  %149 = load i32, i32* @ENXIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %8, align 4
  br label %188

151:                                              ; preds = %93
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 11
  %154 = call i32 @spin_lock_irq(i32* %153)
  %155 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 12
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %156
  store i32 %161, i32* %159, align 4
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 11
  %164 = call i32 @spin_unlock_irq(i32* %163)
  store i32 1, i32* %9, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %187

173:                                              ; preds = %151
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %173
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %184 = load i32, i32* @KERN_WARNING, align 4
  %185 = load i32, i32* @LOG_INIT, align 4
  %186 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %182, %173, %151
  br label %188

188:                                              ; preds = %187, %121
  br label %28

189:                                              ; preds = %91, %61, %35
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %8, align 4
  br label %425

195:                                              ; preds = %189
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %410

204:                                              ; preds = %195
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %204
  %214 = load i32, i32* @ENXIO, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %8, align 4
  br label %425

216:                                              ; preds = %204
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %264

221:                                              ; preds = %216
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 11
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %264

230:                                              ; preds = %221
  %231 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 10
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 3
  store i64 %242, i64* %244, align 8
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %249 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %248, i32 0, i32 10
  %250 = load i64, i64* %249, align 8
  %251 = icmp sgt i64 %247, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %230
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %254 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  br label %260

256:                                              ; preds = %230
  %257 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %258 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %257, i32 0, i32 10
  %259 = load i64, i64* %258, align 8
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i64 [ %255, %252 ], [ %259, %256 ]
  %262 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %263 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %262, i32 0, i32 10
  store i64 %261, i64* %263, align 8
  br label %267

264:                                              ; preds = %221, %216
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %266 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %265, i32 0, i32 3
  store i64 0, i64* %266, align 8
  br label %267

267:                                              ; preds = %264, %260
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 9
  store i32 0, i32* %269, align 4
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %271 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %270, i32 0, i32 8
  store i32 0, i32* %271, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 9
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %314

280:                                              ; preds = %267
  %281 = load i32, i32* @LPFC_SLI3_DSS_ENABLED, align 4
  %282 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %283 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %294 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %293, i32 0, i32 9
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %303 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 8
  %304 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %305 = load i32, i32* @KERN_INFO, align 4
  %306 = load i32, i32* @LOG_INIT, align 4
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %308 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %304, i32 %305, i32 %306, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %280, %267
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %314
  %324 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %325 = load i32, i32* @KERN_ERR, align 4
  %326 = load i32, i32* @LOG_INIT, align 4
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %324, i32 %325, i32 %326, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %333)
  br label %335

335:                                              ; preds = %323, %314
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %335
  %345 = load i32, i32* @LPFC_SLI3_HBQ_ENABLED, align 4
  %346 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %347 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %344, %335
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 4
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %350
  %360 = load i32, i32* @LPFC_SLI3_CRP_ENABLED, align 4
  %361 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %362 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %359, %350
  %366 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %367 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %366, i32 0, i32 4
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %374 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %373, i32 0, i32 6
  store i32* %372, i32** %374, align 8
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %376 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %375, i32 0, i32 4
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %383 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %382, i32 0, i32 5
  store i32 %381, i32* %383, align 8
  %384 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %385 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %384, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %409

388:                                              ; preds = %365
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %388
  %398 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %399 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %400 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  br label %408

403:                                              ; preds = %388
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %405 = load i32, i32* @KERN_ERR, align 4
  %406 = load i32, i32* @LOG_INIT, align 4
  %407 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %404, i32 %405, i32 %406, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %408

408:                                              ; preds = %403, %397
  br label %409

409:                                              ; preds = %408, %365
  br label %424

410:                                              ; preds = %195
  %411 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %412 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %411, i32 0, i32 6
  store i32* null, i32** %412, align 8
  %413 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %414 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %413, i32 0, i32 4
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %421 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %420, i32 0, i32 5
  store i32 %419, i32* %421, align 8
  %422 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %423 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %422, i32 0, i32 3
  store i64 0, i64* %423, align 8
  br label %424

424:                                              ; preds = %410, %409
  br label %425

425:                                              ; preds = %424, %213, %192
  %426 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %427 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %428 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @mempool_free(%struct.TYPE_16__* %426, i32 %429)
  %431 = load i32, i32* %8, align 4
  store i32 %431, i32* %3, align 4
  br label %432

432:                                              ; preds = %425, %18
  %433 = load i32, i32* %3, align 4
  ret i32 %433
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_chipset_init(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port_prep(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_config_port(%struct.lpfc_hba*, %struct.TYPE_16__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
