; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_host_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_host_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_7__, %struct.nv_swncq_port_priv* }
%struct.TYPE_5__ = type { i32 (%struct.ata_port*)*, i32 (%struct.TYPE_7__*, i32, i32)*, i64 (%struct.TYPE_7__*, i32, i32*)* }
%struct.TYPE_7__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32, i32, i32 }
%struct.nv_swncq_port_priv = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ata_queued_cmd = type { i32 }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_HOTPLUG = common dso_local global i32 0, align 4
@SCR_ERROR = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Ata error. fis:0x%X\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_BACKOUT = common dso_local global i32 0, align 4
@ncq_saw_backout = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_SDBFIS = common dso_local global i32 0, align 4
@ncq_saw_sdb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"id 0x%x SWNCQ: qc_active 0x%X dhfis 0x%X dmafis 0x%X sactive 0x%X\0A\00", align 1
@NV_SWNCQ_IRQ_DHREGFIS = common dso_local global i32 0, align 4
@ncq_saw_d2h = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"illegal fis transaction\00", align 1
@AC_ERR_HSM = common dso_local global i32 0, align 4
@NV_SWNCQ_IRQ_DMASETUP = common dso_local global i32 0, align 4
@ncq_saw_dmas = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"send next command\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fis:0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, i32)* @nv_swncq_host_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_host_interrupt(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv_swncq_port_priv*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca %struct.ata_eh_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 4
  %13 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %12, align 8
  store %struct.nv_swncq_port_priv* %13, %struct.nv_swncq_port_priv** %5, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.ata_eh_info* %16, %struct.ata_eh_info** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %20, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = call i32 %21(%struct.ata_port* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nv_swncq_irq_clear(%struct.ata_port* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %256

30:                                               ; preds = %2
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %256

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NV_SWNCQ_IRQ_HOTPLUG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @nv_swncq_hotplug(%struct.ata_port* %44, i32 %45)
  br label %256

47:                                               ; preds = %38
  %48 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %49 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %256

53:                                               ; preds = %47
  %54 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64 (%struct.TYPE_7__*, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32*)** %57, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 3
  %61 = load i32, i32* @SCR_ERROR, align 4
  %62 = call i64 %58(%struct.TYPE_7__* %60, i32 %61, i32* %8)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %256

65:                                               ; preds = %53
  %66 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %67 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %69, align 8
  %71 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 3
  %73 = load i32, i32* @SCR_ERROR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 %70(%struct.TYPE_7__* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @ATA_ERR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %65
  %81 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %82 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %81)
  %83 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @AC_ERR_DEV, align 4
  %87 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %88 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %93 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @ATA_EH_RESET, align 4
  %97 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %98 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %102 = call i32 @ata_port_freeze(%struct.ata_port* %101)
  br label %256

103:                                              ; preds = %65
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @NV_SWNCQ_IRQ_BACKOUT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @ncq_saw_backout, align 4
  %110 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %111 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @NV_SWNCQ_IRQ_SDBFIS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %114
  %120 = load i32, i32* @ncq_saw_sdb, align 4
  %121 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %122 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %126 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %129 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %132 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %135 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %138 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @readl(i32 %139)
  %141 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %136, i32 %140)
  %142 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %143 = call i32 @nv_swncq_sdbfis(%struct.ata_port* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %119
  br label %250

147:                                              ; preds = %119
  br label %148

148:                                              ; preds = %147, %114
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @NV_SWNCQ_IRQ_DHREGFIS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %228

153:                                              ; preds = %148
  %154 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %155 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 1, %156
  %158 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %159 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @ncq_saw_d2h, align 4
  %163 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %164 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %168 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ncq_saw_sdb, align 4
  %171 = load i32, i32* @ncq_saw_backout, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %153
  %176 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %177 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %178 = load i32, i32* @AC_ERR_HSM, align 4
  %179 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %180 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @ATA_EH_RESET, align 4
  %184 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %185 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %250

188:                                              ; preds = %153
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @NV_SWNCQ_IRQ_DMASETUP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %227, label %193

193:                                              ; preds = %188
  %194 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %195 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ncq_saw_dmas, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %227, label %200

200:                                              ; preds = %193
  %201 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %202 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %204, align 8
  %206 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %207 = call i32 %205(%struct.ata_port* %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @ATA_BUSY, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %249

213:                                              ; preds = %200
  %214 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %215 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %221 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %222 = call %struct.ata_queued_cmd* @nv_swncq_qc_from_dq(%struct.ata_port* %221)
  store %struct.ata_queued_cmd* %222, %struct.ata_queued_cmd** %6, align 8
  %223 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %224 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %225 = call i32 @nv_swncq_issue_atacmd(%struct.ata_port* %223, %struct.ata_queued_cmd* %224)
  br label %226

226:                                              ; preds = %219, %213
  br label %227

227:                                              ; preds = %226, %193, %188
  br label %228

228:                                              ; preds = %227, %148
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @NV_SWNCQ_IRQ_DMASETUP, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %228
  %234 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %235 = call i32 @nv_swncq_tag(%struct.ata_port* %234)
  %236 = shl i32 1, %235
  %237 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %238 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* @ncq_saw_dmas, align 4
  %242 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %5, align 8
  %243 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %247 = call i32 @nv_swncq_dmafis(%struct.ata_port* %246)
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %233, %228
  br label %249

249:                                              ; preds = %248, %212
  br label %256

250:                                              ; preds = %175, %146
  %251 = load %struct.ata_eh_info*, %struct.ata_eh_info** %7, align 8
  %252 = load i32, i32* %4, align 4
  %253 = call i32 (%struct.ata_eh_info*, i8*, ...) @ata_ehi_push_desc(%struct.ata_eh_info* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  %254 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %255 = call i32 @ata_port_freeze(%struct.ata_port* %254)
  br label %256

256:                                              ; preds = %250, %249, %80, %64, %52, %43, %37, %29
  ret void
}

declare dso_local i32 @nv_swncq_irq_clear(%struct.ata_port*, i32) #1

declare dso_local i32 @nv_swncq_hotplug(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, ...) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @nv_swncq_sdbfis(%struct.ata_port*) #1

declare dso_local %struct.ata_queued_cmd* @nv_swncq_qc_from_dq(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_issue_atacmd(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @nv_swncq_tag(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_dmafis(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
