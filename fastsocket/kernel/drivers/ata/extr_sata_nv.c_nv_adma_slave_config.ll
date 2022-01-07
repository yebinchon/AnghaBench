; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_adma_slave_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_adma_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i64, i32 }
%struct.ata_port = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_9__, %struct.nv_adma_port_priv* }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_12__** }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.nv_adma_port_priv* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.scsi_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.nv_adma_port_priv = type { i32, i32 }
%struct.pci_dev = type { i32 }

@ATA_MAX_DEVICES = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_DMA_BOUNDARY = common dso_local global i64 0, align 8
@LIBATA_MAX_PRD = common dso_local global i32 0, align 4
@NV_ADMA_DMA_BOUNDARY = common dso_local global i64 0, align 8
@NV_ADMA_SGTBL_TOTAL_LEN = common dso_local global i16 0, align 2
@NV_MCP_SATA_CFG_20 = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT1_PWB_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_EN = common dso_local global i32 0, align 4
@NV_MCP_SATA_CFG_20_PORT0_PWB_EN = common dso_local global i32 0, align 4
@NV_ADMA_ATAPI_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ATA_DMA_MASK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"DMA mask 0x%llX, segment boundary 0x%lX, hw segs %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @nv_adma_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_slave_config(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.nv_adma_port_priv*, align 8
  %6 = alloca %struct.nv_adma_port_priv*, align 8
  %7 = alloca %struct.nv_adma_port_priv*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ata_port* @ata_shost_to_port(i32 %21)
  store %struct.ata_port* %22, %struct.ata_port** %4, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 4
  %25 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %24, align 8
  store %struct.nv_adma_port_priv* %25, %struct.nv_adma_port_priv** %5, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = call %struct.pci_dev* @to_pci_dev(%struct.TYPE_14__* %30)
  store %struct.pci_dev* %31, %struct.pci_dev** %10, align 8
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = call i32 @ata_scsi_slave_config(%struct.scsi_device* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATA_MAX_DEVICES, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %39, %1
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %2, align 4
  br label %265

51:                                               ; preds = %44
  %52 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @spin_lock_irqsave(i32 %54, i64 %55)
  %57 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %58 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %51
  %70 = load i64, i64* @ATA_DMA_BOUNDARY, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i32, i32* @LIBATA_MAX_PRD, align 4
  %72 = sub nsw i32 %71, 1
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %13, align 2
  store i32 0, i32* %15, align 4
  %74 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %75 = call i32 @nv_adma_register_mode(%struct.ata_port* %74)
  br label %79

76:                                               ; preds = %51
  %77 = load i64, i64* @NV_ADMA_DMA_BOUNDARY, align 8
  store i64 %77, i64* %11, align 8
  %78 = load i16, i16* @NV_ADMA_SGTBL_TOTAL_LEN, align 2
  store i16 %78, i16* %13, align 2
  store i32 1, i32* %15, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %81 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %82 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %81, i32* %16)
  %83 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %84 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_EN, align 4
  %89 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT1_PWB_EN, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %18, align 4
  br label %95

91:                                               ; preds = %79
  %92 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_EN, align 4
  %93 = load i32, i32* @NV_MCP_SATA_CFG_20_PORT0_PWB_EN, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %18, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %105 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %118

108:                                              ; preds = %95
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %18, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %114 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %115 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %98
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %124 = load i32, i32* @NV_MCP_SATA_CFG_20, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @pci_write_config_dword(%struct.pci_dev* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %129 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %132, i64 0
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %135, align 8
  store %struct.nv_adma_port_priv* %136, %struct.nv_adma_port_priv** %6, align 8
  %137 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %138 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %137, i32 0, i32 2
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %141, i64 1
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %144, align 8
  store %struct.nv_adma_port_priv* %145, %struct.nv_adma_port_priv** %7, align 8
  %146 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %147 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %146, i32 0, i32 2
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %150, i64 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load %struct.scsi_device*, %struct.scsi_device** %157, align 8
  store %struct.scsi_device* %158, %struct.scsi_device** %8, align 8
  %159 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %160 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %159, i32 0, i32 2
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %163, i64 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.scsi_device*, %struct.scsi_device** %170, align 8
  store %struct.scsi_device* %171, %struct.scsi_device** %9, align 8
  %172 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %6, align 8
  %173 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %127
  %179 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %7, align 8
  %180 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @NV_ADMA_ATAPI_SETUP_COMPLETE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %178, %127
  %186 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %187 = icmp ne %struct.scsi_device* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %190 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ATA_DMA_MASK, align 4
  %193 = call i32 @blk_queue_bounce_limit(i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %188, %185
  %195 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %196 = icmp ne %struct.scsi_device* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %199 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ATA_DMA_MASK, align 4
  %202 = call i32 @blk_queue_bounce_limit(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %197, %194
  %204 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %205 = load i32, i32* @ATA_DMA_MASK, align 4
  %206 = call i32 @pci_set_dma_mask(%struct.pci_dev* %204, i32 %205)
  br label %235

207:                                              ; preds = %178
  %208 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %209 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %210 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @pci_set_dma_mask(%struct.pci_dev* %208, i32 %211)
  %213 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %214 = icmp ne %struct.scsi_device* %213, null
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %217 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %220 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @blk_queue_bounce_limit(i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %215, %207
  %224 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %225 = icmp ne %struct.scsi_device* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %228 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %5, align 8
  %231 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @blk_queue_bounce_limit(i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %226, %223
  br label %235

235:                                              ; preds = %234, %203
  %236 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %237 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = call i32 @blk_queue_segment_boundary(i32 %238, i64 %239)
  %241 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %242 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i16, i16* %13, align 2
  %245 = call i32 @blk_queue_max_segments(i32 %243, i16 zeroext %244)
  %246 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %247 = load i32, i32* @KERN_INFO, align 4
  %248 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %249 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %248, i32 0, i32 2
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load i16, i16* %13, align 2
  %258 = call i32 @ata_port_printk(%struct.ata_port* %246, i32 %247, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %255, i64 %256, i16 zeroext %257)
  %259 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %260 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i64, i64* %12, align 8
  %263 = call i32 @spin_unlock_irqrestore(i32 %261, i64 %262)
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %235, %49
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.TYPE_14__*) #1

declare dso_local i32 @ata_scsi_slave_config(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @nv_adma_register_mode(%struct.ata_port*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(i32, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @blk_queue_segment_boundary(i32, i64) #1

declare dso_local i32 @blk_queue_max_segments(i32, i16 zeroext) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i64, i64, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
