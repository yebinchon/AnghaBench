; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_init_shared_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_init_shared_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, %struct.TYPE_15__*, %struct.mac_info, %struct.config_param, %struct.net_device* }
%struct.TYPE_15__ = type { i32 }
%struct.mac_info = type { i8*, i32, %struct.stat_block*, i8*, %struct.ring_info*, %struct.fifo_info*, i8* }
%struct.stat_block = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.ring_info = type { i32, i32, i32, %struct.buffAdd**, %struct.rx_block_info*, %struct.s2io_nic*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.buffAdd = type { i8*, i8*, i8*, i8* }
%struct.rx_block_info = type { i8*, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.fifo_info = type { i32, i32, %struct.TYPE_16__*, %struct.net_device*, i64, %struct.s2io_nic*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.config_param = type { i32, i32, i32, %struct.rx_ring_config*, %struct.tx_fifo_config* }
%struct.rx_ring_config = type { i32 }
%struct.tx_fifo_config = type { i32 }
%struct.net_device = type { i32 }
%struct.RxD_block = type { i64, i64 }

@MAX_AVAILABLE_TXDS = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Too many TxDs requested: %d, max supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Fifo %d: Invalid length (%d) - Valid lengths are 2 through 8192\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Malloc failed for list_info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"pci_alloc_consistent failed for TxDL\0A\00", align 1
@INIT_DBG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: Zero DMA address for TxDL. Virtual address %p\0A\00", align 1
@rxd_count = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"%s: Ring%d RxD count is not a multiple of RxDs per Block\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@RXD_MODE_1 = common dso_local global i64 0, align 8
@SIZE_OF_BLOCK = common dso_local global i32 0, align 4
@rxd_size = common dso_local global i32* null, align 8
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i64 0, align 8
@ALIGN_SIZE = common dso_local global i64 0, align 8
@BUF1_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: Ring Mem PHY: 0x%llx\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @init_shared_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_shared_mem(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.RxD_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffAdd*, align 8
  %18 = alloca %struct.config_param*, align 8
  %19 = alloca %struct.mac_info*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.tx_fifo_config*, align 8
  %22 = alloca %struct.tx_fifo_config*, align 8
  %23 = alloca %struct.fifo_info*, align 8
  %24 = alloca %struct.tx_fifo_config*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.fifo_info*, align 8
  %29 = alloca %struct.tx_fifo_config*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.fifo_info*, align 8
  %35 = alloca %struct.tx_fifo_config*, align 8
  %36 = alloca %struct.rx_ring_config*, align 8
  %37 = alloca %struct.ring_info*, align 8
  %38 = alloca %struct.rx_ring_config*, align 8
  %39 = alloca %struct.ring_info*, align 8
  %40 = alloca %struct.rx_block_info*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.rx_ring_config*, align 8
  %44 = alloca %struct.ring_info*, align 8
  %45 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store %struct.RxD_block* null, %struct.RxD_block** %9, align 8
  %46 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %47 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %46, i32 0, i32 4
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  store %struct.net_device* %48, %struct.net_device** %15, align 8
  %49 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %50 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %49, i32 0, i32 3
  store %struct.config_param* %50, %struct.config_param** %18, align 8
  %51 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %52 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %51, i32 0, i32 2
  store %struct.mac_info* %52, %struct.mac_info** %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %1
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.config_param*, %struct.config_param** %18, align 8
  %56 = getelementptr inbounds %struct.config_param, %struct.config_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.config_param*, %struct.config_param** %18, align 8
  %61 = getelementptr inbounds %struct.config_param, %struct.config_param* %60, i32 0, i32 4
  %62 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %62, i64 %64
  store %struct.tx_fifo_config* %65, %struct.tx_fifo_config** %21, align 8
  %66 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %21, align 8
  %67 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MAX_AVAILABLE_TXDS, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* @ERR_DBG, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @MAX_AVAILABLE_TXDS, align 4
  %82 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %969

85:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %112, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.config_param*, %struct.config_param** %18, align 8
  %89 = getelementptr inbounds %struct.config_param, %struct.config_param* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.config_param*, %struct.config_param** %18, align 8
  %94 = getelementptr inbounds %struct.config_param, %struct.config_param* %93, i32 0, i32 4
  %95 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %95, i64 %97
  store %struct.tx_fifo_config* %98, %struct.tx_fifo_config** %22, align 8
  %99 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %22, align 8
  %100 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load i32, i32* @ERR_DBG, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %105, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %969

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %86

115:                                              ; preds = %86
  %116 = load %struct.config_param*, %struct.config_param** %18, align 8
  %117 = getelementptr inbounds %struct.config_param, %struct.config_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %170, %115
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.config_param*, %struct.config_param** %18, align 8
  %128 = getelementptr inbounds %struct.config_param, %struct.config_param* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %173

131:                                              ; preds = %125
  %132 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %133 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %132, i32 0, i32 5
  %134 = load %struct.fifo_info*, %struct.fifo_info** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %134, i64 %136
  store %struct.fifo_info* %137, %struct.fifo_info** %23, align 8
  %138 = load %struct.config_param*, %struct.config_param** %18, align 8
  %139 = getelementptr inbounds %struct.config_param, %struct.config_param* %138, i32 0, i32 4
  %140 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %140, i64 %142
  store %struct.tx_fifo_config* %143, %struct.tx_fifo_config** %24, align 8
  %144 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %24, align 8
  %145 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %26, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call %struct.TYPE_16__* @kzalloc(i32 %151, i32 %152)
  %154 = load %struct.fifo_info*, %struct.fifo_info** %23, align 8
  %155 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %154, i32 0, i32 2
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %155, align 8
  %156 = load %struct.fifo_info*, %struct.fifo_info** %23, align 8
  %157 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %156, i32 0, i32 2
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = icmp ne %struct.TYPE_16__* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %131
  %161 = load i32, i32* @INFO_DBG, align 4
  %162 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %969

165:                                              ; preds = %131
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %20, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %20, align 8
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %125

173:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %334, %173
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.config_param*, %struct.config_param** %18, align 8
  %177 = getelementptr inbounds %struct.config_param, %struct.config_param* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %337

180:                                              ; preds = %174
  %181 = load %struct.config_param*, %struct.config_param** %18, align 8
  %182 = getelementptr inbounds %struct.config_param, %struct.config_param* %181, i32 0, i32 4
  %183 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %183, i64 %185
  %187 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @TXD_MEM_PAGE_CNT(i32 %188, i32 %189)
  store i32 %190, i32* %27, align 4
  %191 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %192 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %191, i32 0, i32 5
  %193 = load %struct.fifo_info*, %struct.fifo_info** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %193, i64 %195
  store %struct.fifo_info* %196, %struct.fifo_info** %28, align 8
  %197 = load %struct.config_param*, %struct.config_param** %18, align 8
  %198 = getelementptr inbounds %struct.config_param, %struct.config_param* %197, i32 0, i32 4
  %199 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %199, i64 %201
  store %struct.tx_fifo_config* %202, %struct.tx_fifo_config** %29, align 8
  %203 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %204 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %207 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %211 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %214 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %217 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 1
  %220 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %221 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %225 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %227 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %228 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %227, i32 0, i32 5
  store %struct.s2io_nic* %226, %struct.s2io_nic** %228, align 8
  %229 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %230 = add nsw i64 %229, 2
  %231 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %232 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %231, i32 0, i32 4
  store i64 %230, i64* %232, align 8
  %233 = load %struct.net_device*, %struct.net_device** %15, align 8
  %234 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %235 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %234, i32 0, i32 3
  store %struct.net_device* %233, %struct.net_device** %235, align 8
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %330, %180
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %333

240:                                              ; preds = %236
  store i32 0, i32* %30, align 4
  %241 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %242 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %241, i32 0, i32 1
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = load i32, i32* @PAGE_SIZE, align 4
  %245 = call i8* @pci_alloc_consistent(%struct.TYPE_15__* %243, i32 %244, i8** %31)
  store i8* %245, i8** %32, align 8
  %246 = load i8*, i8** %32, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %240
  %249 = load i32, i32* @INFO_DBG, align 4
  %250 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %249, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %2, align 4
  br label %969

253:                                              ; preds = %240
  %254 = load i8*, i8** %31, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %283, label %256

256:                                              ; preds = %253
  %257 = load i8*, i8** %32, align 8
  %258 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %259 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %258, i32 0, i32 6
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* @INIT_DBG, align 4
  %261 = load %struct.net_device*, %struct.net_device** %15, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i8*, i8** %32, align 8
  %265 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %260, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %263, i8* %264)
  %266 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %267 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %266, i32 0, i32 1
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %267, align 8
  %269 = load i32, i32* @PAGE_SIZE, align 4
  %270 = call i8* @pci_alloc_consistent(%struct.TYPE_15__* %268, i32 %269, i8** %31)
  store i8* %270, i8** %32, align 8
  %271 = load i8*, i8** %32, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %256
  %274 = load i32, i32* @INFO_DBG, align 4
  %275 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %274, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  br label %969

278:                                              ; preds = %256
  %279 = load i32, i32* @PAGE_SIZE, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %20, align 8
  %282 = add i64 %281, %280
  store i64 %282, i64* %20, align 8
  br label %283

283:                                              ; preds = %278, %253
  br label %284

284:                                              ; preds = %300, %283
  %285 = load i32, i32* %30, align 4
  %286 = load i32, i32* %14, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %329

288:                                              ; preds = %284
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %14, align 4
  %291 = mul nsw i32 %289, %290
  %292 = load i32, i32* %30, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %33, align 4
  %294 = load i32, i32* %33, align 4
  %295 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %296 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %288
  br label %329

300:                                              ; preds = %288
  %301 = load i8*, i8** %32, align 8
  %302 = load i32, i32* %30, align 4
  %303 = load i32, i32* %13, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr i8, i8* %301, i64 %305
  %307 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %308 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %307, i32 0, i32 2
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = load i32, i32* %33, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 1
  store i8* %306, i8** %313, align 8
  %314 = load i8*, i8** %31, align 8
  %315 = load i32, i32* %30, align 4
  %316 = load i32, i32* %13, align 4
  %317 = mul nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr i8, i8* %314, i64 %318
  %320 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %321 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %320, i32 0, i32 2
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %321, align 8
  %323 = load i32, i32* %33, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  store i8* %319, i8** %326, align 8
  %327 = load i32, i32* %30, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %30, align 4
  br label %284

329:                                              ; preds = %299, %284
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  br label %236

333:                                              ; preds = %236
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %10, align 4
  br label %174

337:                                              ; preds = %174
  store i32 0, i32* %10, align 4
  br label %338

338:                                              ; preds = %378, %337
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.config_param*, %struct.config_param** %18, align 8
  %341 = getelementptr inbounds %struct.config_param, %struct.config_param* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %381

344:                                              ; preds = %338
  %345 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %346 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %345, i32 0, i32 5
  %347 = load %struct.fifo_info*, %struct.fifo_info** %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %347, i64 %349
  store %struct.fifo_info* %350, %struct.fifo_info** %34, align 8
  %351 = load %struct.config_param*, %struct.config_param** %18, align 8
  %352 = getelementptr inbounds %struct.config_param, %struct.config_param* %351, i32 0, i32 4
  %353 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %353, i64 %355
  store %struct.tx_fifo_config* %356, %struct.tx_fifo_config** %35, align 8
  %357 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %35, align 8
  %358 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %4, align 4
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @GFP_KERNEL, align 4
  %362 = call i32 @kcalloc(i32 %360, i32 8, i32 %361)
  %363 = load %struct.fifo_info*, %struct.fifo_info** %34, align 8
  %364 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  %365 = load %struct.fifo_info*, %struct.fifo_info** %34, align 8
  %366 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %344
  %370 = load i32, i32* @ENOMEM, align 4
  %371 = sub nsw i32 0, %370
  store i32 %371, i32* %2, align 4
  br label %969

372:                                              ; preds = %344
  %373 = load i32, i32* %4, align 4
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 8
  %376 = load i64, i64* %20, align 8
  %377 = add i64 %376, %375
  store i64 %377, i64* %20, align 8
  br label %378

378:                                              ; preds = %372
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %338

381:                                              ; preds = %338
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %382

382:                                              ; preds = %449, %381
  %383 = load i32, i32* %10, align 4
  %384 = load %struct.config_param*, %struct.config_param** %18, align 8
  %385 = getelementptr inbounds %struct.config_param, %struct.config_param* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %452

388:                                              ; preds = %382
  %389 = load %struct.config_param*, %struct.config_param** %18, align 8
  %390 = getelementptr inbounds %struct.config_param, %struct.config_param* %389, i32 0, i32 3
  %391 = load %struct.rx_ring_config*, %struct.rx_ring_config** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %391, i64 %393
  store %struct.rx_ring_config* %394, %struct.rx_ring_config** %36, align 8
  %395 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %396 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %395, i32 0, i32 4
  %397 = load %struct.ring_info*, %struct.ring_info** %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %397, i64 %399
  store %struct.ring_info* %400, %struct.ring_info** %37, align 8
  %401 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %402 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** @rxd_count, align 8
  %405 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %406 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 1
  %411 = srem i32 %403, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %388
  %414 = load i32, i32* @ERR_DBG, align 4
  %415 = load %struct.net_device*, %struct.net_device** %15, align 8
  %416 = getelementptr inbounds %struct.net_device, %struct.net_device* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %10, align 4
  %419 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %414, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %417, i32 %418)
  %420 = load i32, i32* @FAILURE, align 4
  store i32 %420, i32* %2, align 4
  br label %969

421:                                              ; preds = %388
  %422 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %423 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %4, align 4
  %426 = add nsw i32 %425, %424
  store i32 %426, i32* %4, align 4
  %427 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %428 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32*, i32** @rxd_count, align 8
  %431 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %432 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  %437 = sdiv i32 %429, %436
  %438 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %439 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %441 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %444 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = sub nsw i32 %442, %445
  %447 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %448 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 4
  br label %449

449:                                              ; preds = %421
  %450 = load i32, i32* %10, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %10, align 4
  br label %382

452:                                              ; preds = %382
  %453 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %454 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @RXD_MODE_1, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %463

458:                                              ; preds = %452
  %459 = load i32, i32* %4, align 4
  %460 = sext i32 %459 to i64
  %461 = mul i64 %460, 4
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %4, align 4
  br label %468

463:                                              ; preds = %452
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = mul i64 %465, 4
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %4, align 4
  br label %468

468:                                              ; preds = %463, %458
  store i32 0, i32* %10, align 4
  br label %469

469:                                              ; preds = %710, %468
  %470 = load i32, i32* %10, align 4
  %471 = load %struct.config_param*, %struct.config_param** %18, align 8
  %472 = getelementptr inbounds %struct.config_param, %struct.config_param* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %713

475:                                              ; preds = %469
  %476 = load %struct.config_param*, %struct.config_param** %18, align 8
  %477 = getelementptr inbounds %struct.config_param, %struct.config_param* %476, i32 0, i32 3
  %478 = load %struct.rx_ring_config*, %struct.rx_ring_config** %477, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %478, i64 %480
  store %struct.rx_ring_config* %481, %struct.rx_ring_config** %38, align 8
  %482 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %483 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %482, i32 0, i32 4
  %484 = load %struct.ring_info*, %struct.ring_info** %483, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %484, i64 %486
  store %struct.ring_info* %487, %struct.ring_info** %39, align 8
  %488 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %489 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %488, i32 0, i32 7
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 2
  store i64 0, i64* %490, align 8
  %491 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %492 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %491, i32 0, i32 7
  %493 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %492, i32 0, i32 1
  store i64 0, i64* %493, align 8
  %494 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %495 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = sub nsw i32 %496, 1
  %498 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %499 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 0
  store i32 %497, i32* %500, align 8
  %501 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %502 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %501, i32 0, i32 6
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 2
  store i64 0, i64* %503, align 8
  %504 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %505 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %504, i32 0, i32 6
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 1
  store i64 0, i64* %506, align 8
  %507 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %508 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = sub nsw i32 %509, 1
  %511 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %512 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %511, i32 0, i32 6
  %513 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %512, i32 0, i32 0
  store i32 %510, i32* %513, align 8
  %514 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %515 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %516 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %515, i32 0, i32 5
  store %struct.s2io_nic* %514, %struct.s2io_nic** %516, align 8
  %517 = load i32, i32* %10, align 4
  %518 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %519 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %518, i32 0, i32 2
  store i32 %517, i32* %519, align 8
  %520 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %521 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = load i32*, i32** @rxd_count, align 8
  %524 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %525 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = add nsw i32 %528, 1
  %530 = sdiv i32 %522, %529
  store i32 %530, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %531

531:                                              ; preds = %651, %475
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* %12, align 4
  %534 = icmp slt i32 %532, %533
  br i1 %534, label %535, label %654

535:                                              ; preds = %531
  %536 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %537 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %536, i32 0, i32 4
  %538 = load %struct.rx_block_info*, %struct.rx_block_info** %537, align 8
  %539 = load i32, i32* %11, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %538, i64 %540
  store %struct.rx_block_info* %541, %struct.rx_block_info** %40, align 8
  %542 = load i32, i32* @SIZE_OF_BLOCK, align 4
  store i32 %542, i32* %4, align 4
  %543 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %544 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %543, i32 0, i32 1
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %544, align 8
  %546 = load i32, i32* %4, align 4
  %547 = call i8* @pci_alloc_consistent(%struct.TYPE_15__* %545, i32 %546, i8** %7)
  store i8* %547, i8** %5, align 8
  %548 = load i8*, i8** %5, align 8
  %549 = icmp eq i8* %548, null
  br i1 %549, label %550, label %556

550:                                              ; preds = %535
  %551 = load i8*, i8** %5, align 8
  %552 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %553 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %552, i32 0, i32 1
  store i8* %551, i8** %553, align 8
  %554 = load i32, i32* @ENOMEM, align 4
  %555 = sub nsw i32 0, %554
  store i32 %555, i32* %2, align 4
  br label %969

556:                                              ; preds = %535
  %557 = load i32, i32* %4, align 4
  %558 = sext i32 %557 to i64
  %559 = load i64, i64* %20, align 8
  %560 = add i64 %559, %558
  store i64 %560, i64* %20, align 8
  %561 = load i8*, i8** %5, align 8
  %562 = load i32, i32* %4, align 4
  %563 = call i32 @memset(i8* %561, i32 0, i32 %562)
  %564 = load i32*, i32** @rxd_count, align 8
  %565 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %566 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = getelementptr inbounds i32, i32* %564, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = sext i32 %569 to i64
  %571 = mul i64 4, %570
  %572 = trunc i64 %571 to i32
  store i32 %572, i32* %4, align 4
  %573 = load i8*, i8** %5, align 8
  %574 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %575 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %574, i32 0, i32 1
  store i8* %573, i8** %575, align 8
  %576 = load i8*, i8** %7, align 8
  %577 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %578 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %577, i32 0, i32 0
  store i8* %576, i8** %578, align 8
  %579 = load i32, i32* %4, align 4
  %580 = load i32, i32* @GFP_KERNEL, align 4
  %581 = call i8* @kmalloc(i32 %579, i32 %580)
  %582 = bitcast i8* %581 to %struct.TYPE_13__*
  %583 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %584 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %583, i32 0, i32 2
  store %struct.TYPE_13__* %582, %struct.TYPE_13__** %584, align 8
  %585 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %586 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %585, i32 0, i32 2
  %587 = load %struct.TYPE_13__*, %struct.TYPE_13__** %586, align 8
  %588 = icmp ne %struct.TYPE_13__* %587, null
  br i1 %588, label %592, label %589

589:                                              ; preds = %556
  %590 = load i32, i32* @ENOMEM, align 4
  %591 = sub nsw i32 0, %590
  store i32 %591, i32* %2, align 4
  br label %969

592:                                              ; preds = %556
  %593 = load i32, i32* %4, align 4
  %594 = sext i32 %593 to i64
  %595 = load i64, i64* %20, align 8
  %596 = add i64 %595, %594
  store i64 %596, i64* %20, align 8
  store i32 0, i32* %41, align 4
  br label %597

597:                                              ; preds = %647, %592
  %598 = load i32, i32* %41, align 4
  %599 = load i32*, i32** @rxd_count, align 8
  %600 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %601 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = getelementptr inbounds i32, i32* %599, i64 %602
  %604 = load i32, i32* %603, align 4
  %605 = icmp slt i32 %598, %604
  br i1 %605, label %606, label %650

606:                                              ; preds = %597
  %607 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %608 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %607, i32 0, i32 1
  %609 = load i8*, i8** %608, align 8
  %610 = load i32*, i32** @rxd_size, align 8
  %611 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %612 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %611, i32 0, i32 0
  %613 = load i64, i64* %612, align 8
  %614 = getelementptr inbounds i32, i32* %610, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* %41, align 4
  %617 = mul nsw i32 %615, %616
  %618 = sext i32 %617 to i64
  %619 = getelementptr i8, i8* %609, i64 %618
  %620 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %621 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %620, i32 0, i32 2
  %622 = load %struct.TYPE_13__*, %struct.TYPE_13__** %621, align 8
  %623 = load i32, i32* %41, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %622, i64 %624
  %626 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %625, i32 0, i32 1
  store i8* %619, i8** %626, align 8
  %627 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %628 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %627, i32 0, i32 0
  %629 = load i8*, i8** %628, align 8
  %630 = load i32*, i32** @rxd_size, align 8
  %631 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %632 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %631, i32 0, i32 0
  %633 = load i64, i64* %632, align 8
  %634 = getelementptr inbounds i32, i32* %630, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %41, align 4
  %637 = mul nsw i32 %635, %636
  %638 = sext i32 %637 to i64
  %639 = getelementptr i8, i8* %629, i64 %638
  %640 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %641 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %640, i32 0, i32 2
  %642 = load %struct.TYPE_13__*, %struct.TYPE_13__** %641, align 8
  %643 = load i32, i32* %41, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %642, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %645, i32 0, i32 0
  store i8* %639, i8** %646, align 8
  br label %647

647:                                              ; preds = %606
  %648 = load i32, i32* %41, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %41, align 4
  br label %597

650:                                              ; preds = %597
  br label %651

651:                                              ; preds = %650
  %652 = load i32, i32* %11, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %11, align 4
  br label %531

654:                                              ; preds = %531
  store i32 0, i32* %11, align 4
  br label %655

655:                                              ; preds = %706, %654
  %656 = load i32, i32* %11, align 4
  %657 = load i32, i32* %12, align 4
  %658 = icmp slt i32 %656, %657
  br i1 %658, label %659, label %709

659:                                              ; preds = %655
  %660 = load i32, i32* %11, align 4
  %661 = add nsw i32 %660, 1
  %662 = load i32, i32* %12, align 4
  %663 = srem i32 %661, %662
  store i32 %663, i32* %42, align 4
  %664 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %665 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %664, i32 0, i32 4
  %666 = load %struct.rx_block_info*, %struct.rx_block_info** %665, align 8
  %667 = load i32, i32* %11, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %666, i64 %668
  %670 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %669, i32 0, i32 1
  %671 = load i8*, i8** %670, align 8
  store i8* %671, i8** %5, align 8
  %672 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %673 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %672, i32 0, i32 4
  %674 = load %struct.rx_block_info*, %struct.rx_block_info** %673, align 8
  %675 = load i32, i32* %42, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %674, i64 %676
  %678 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %677, i32 0, i32 1
  %679 = load i8*, i8** %678, align 8
  store i8* %679, i8** %6, align 8
  %680 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %681 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %680, i32 0, i32 4
  %682 = load %struct.rx_block_info*, %struct.rx_block_info** %681, align 8
  %683 = load i32, i32* %11, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %682, i64 %684
  %686 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %685, i32 0, i32 0
  %687 = load i8*, i8** %686, align 8
  store i8* %687, i8** %7, align 8
  %688 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %689 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %688, i32 0, i32 4
  %690 = load %struct.rx_block_info*, %struct.rx_block_info** %689, align 8
  %691 = load i32, i32* %42, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %690, i64 %692
  %694 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %693, i32 0, i32 0
  %695 = load i8*, i8** %694, align 8
  store i8* %695, i8** %8, align 8
  %696 = load i8*, i8** %5, align 8
  %697 = bitcast i8* %696 to %struct.RxD_block*
  store %struct.RxD_block* %697, %struct.RxD_block** %9, align 8
  %698 = load i8*, i8** %6, align 8
  %699 = ptrtoint i8* %698 to i64
  %700 = load %struct.RxD_block*, %struct.RxD_block** %9, align 8
  %701 = getelementptr inbounds %struct.RxD_block, %struct.RxD_block* %700, i32 0, i32 0
  store i64 %699, i64* %701, align 8
  %702 = load i8*, i8** %8, align 8
  %703 = ptrtoint i8* %702 to i64
  %704 = load %struct.RxD_block*, %struct.RxD_block** %9, align 8
  %705 = getelementptr inbounds %struct.RxD_block, %struct.RxD_block* %704, i32 0, i32 1
  store i64 %703, i64* %705, align 8
  br label %706

706:                                              ; preds = %659
  %707 = load i32, i32* %11, align 4
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %11, align 4
  br label %655

709:                                              ; preds = %655
  br label %710

710:                                              ; preds = %709
  %711 = load i32, i32* %10, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %10, align 4
  br label %469

713:                                              ; preds = %469
  %714 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %715 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* @RXD_MODE_3B, align 8
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %719, label %916

719:                                              ; preds = %713
  store i32 0, i32* %10, align 4
  br label %720

720:                                              ; preds = %912, %719
  %721 = load i32, i32* %10, align 4
  %722 = load %struct.config_param*, %struct.config_param** %18, align 8
  %723 = getelementptr inbounds %struct.config_param, %struct.config_param* %722, i32 0, i32 2
  %724 = load i32, i32* %723, align 8
  %725 = icmp slt i32 %721, %724
  br i1 %725, label %726, label %915

726:                                              ; preds = %720
  %727 = load %struct.config_param*, %struct.config_param** %18, align 8
  %728 = getelementptr inbounds %struct.config_param, %struct.config_param* %727, i32 0, i32 3
  %729 = load %struct.rx_ring_config*, %struct.rx_ring_config** %728, align 8
  %730 = load i32, i32* %10, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %729, i64 %731
  store %struct.rx_ring_config* %732, %struct.rx_ring_config** %43, align 8
  %733 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %734 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %733, i32 0, i32 4
  %735 = load %struct.ring_info*, %struct.ring_info** %734, align 8
  %736 = load i32, i32* %10, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %735, i64 %737
  store %struct.ring_info* %738, %struct.ring_info** %44, align 8
  %739 = load %struct.rx_ring_config*, %struct.rx_ring_config** %43, align 8
  %740 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 4
  %742 = load i32*, i32** @rxd_count, align 8
  %743 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %744 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %743, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = getelementptr inbounds i32, i32* %742, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = add nsw i32 %747, 1
  %749 = sdiv i32 %741, %748
  store i32 %749, i32* %12, align 4
  %750 = load i32, i32* %12, align 4
  %751 = sext i32 %750 to i64
  %752 = mul i64 8, %751
  %753 = trunc i64 %752 to i32
  store i32 %753, i32* %4, align 4
  %754 = load i32, i32* %4, align 4
  %755 = load i32, i32* @GFP_KERNEL, align 4
  %756 = call i8* @kmalloc(i32 %754, i32 %755)
  %757 = bitcast i8* %756 to %struct.buffAdd**
  %758 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %759 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %758, i32 0, i32 3
  store %struct.buffAdd** %757, %struct.buffAdd*** %759, align 8
  %760 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %761 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %760, i32 0, i32 3
  %762 = load %struct.buffAdd**, %struct.buffAdd*** %761, align 8
  %763 = icmp ne %struct.buffAdd** %762, null
  br i1 %763, label %767, label %764

764:                                              ; preds = %726
  %765 = load i32, i32* @ENOMEM, align 4
  %766 = sub nsw i32 0, %765
  store i32 %766, i32* %2, align 4
  br label %969

767:                                              ; preds = %726
  %768 = load i32, i32* %4, align 4
  %769 = sext i32 %768 to i64
  %770 = load i64, i64* %20, align 8
  %771 = add i64 %770, %769
  store i64 %771, i64* %20, align 8
  store i32 0, i32* %11, align 4
  br label %772

772:                                              ; preds = %908, %767
  %773 = load i32, i32* %11, align 4
  %774 = load i32, i32* %12, align 4
  %775 = icmp slt i32 %773, %774
  br i1 %775, label %776, label %911

776:                                              ; preds = %772
  store i32 0, i32* %45, align 4
  %777 = load i32*, i32** @rxd_count, align 8
  %778 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %779 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %778, i32 0, i32 0
  %780 = load i64, i64* %779, align 8
  %781 = getelementptr inbounds i32, i32* %777, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = add nsw i32 %782, 1
  %784 = sext i32 %783 to i64
  %785 = mul i64 32, %784
  %786 = trunc i64 %785 to i32
  store i32 %786, i32* %4, align 4
  %787 = load i32, i32* %4, align 4
  %788 = load i32, i32* @GFP_KERNEL, align 4
  %789 = call i8* @kmalloc(i32 %787, i32 %788)
  %790 = bitcast i8* %789 to %struct.buffAdd*
  %791 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %792 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %791, i32 0, i32 3
  %793 = load %struct.buffAdd**, %struct.buffAdd*** %792, align 8
  %794 = load i32, i32* %11, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %793, i64 %795
  store %struct.buffAdd* %790, %struct.buffAdd** %796, align 8
  %797 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %798 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %797, i32 0, i32 3
  %799 = load %struct.buffAdd**, %struct.buffAdd*** %798, align 8
  %800 = load i32, i32* %11, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %799, i64 %801
  %803 = load %struct.buffAdd*, %struct.buffAdd** %802, align 8
  %804 = icmp ne %struct.buffAdd* %803, null
  br i1 %804, label %808, label %805

805:                                              ; preds = %776
  %806 = load i32, i32* @ENOMEM, align 4
  %807 = sub nsw i32 0, %806
  store i32 %807, i32* %2, align 4
  br label %969

808:                                              ; preds = %776
  %809 = load i32, i32* %4, align 4
  %810 = sext i32 %809 to i64
  %811 = load i64, i64* %20, align 8
  %812 = add i64 %811, %810
  store i64 %812, i64* %20, align 8
  br label %813

813:                                              ; preds = %885, %808
  %814 = load i32, i32* %45, align 4
  %815 = load i32*, i32** @rxd_count, align 8
  %816 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %817 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %816, i32 0, i32 0
  %818 = load i64, i64* %817, align 8
  %819 = getelementptr inbounds i32, i32* %815, i64 %818
  %820 = load i32, i32* %819, align 4
  %821 = icmp ne i32 %814, %820
  br i1 %821, label %822, label %907

822:                                              ; preds = %813
  %823 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %824 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %823, i32 0, i32 3
  %825 = load %struct.buffAdd**, %struct.buffAdd*** %824, align 8
  %826 = load i32, i32* %11, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %825, i64 %827
  %829 = load %struct.buffAdd*, %struct.buffAdd** %828, align 8
  %830 = load i32, i32* %45, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %829, i64 %831
  store %struct.buffAdd* %832, %struct.buffAdd** %17, align 8
  %833 = load i64, i64* @BUF0_LEN, align 8
  %834 = load i64, i64* @ALIGN_SIZE, align 8
  %835 = add i64 %833, %834
  %836 = trunc i64 %835 to i32
  store i32 %836, i32* %4, align 4
  %837 = load i32, i32* %4, align 4
  %838 = load i32, i32* @GFP_KERNEL, align 4
  %839 = call i8* @kmalloc(i32 %837, i32 %838)
  %840 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %841 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %840, i32 0, i32 3
  store i8* %839, i8** %841, align 8
  %842 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %843 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %842, i32 0, i32 3
  %844 = load i8*, i8** %843, align 8
  %845 = icmp ne i8* %844, null
  br i1 %845, label %849, label %846

846:                                              ; preds = %822
  %847 = load i32, i32* @ENOMEM, align 4
  %848 = sub nsw i32 0, %847
  store i32 %848, i32* %2, align 4
  br label %969

849:                                              ; preds = %822
  %850 = load i32, i32* %4, align 4
  %851 = sext i32 %850 to i64
  %852 = load i64, i64* %20, align 8
  %853 = add i64 %852, %851
  store i64 %853, i64* %20, align 8
  %854 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %855 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %854, i32 0, i32 3
  %856 = load i8*, i8** %855, align 8
  %857 = ptrtoint i8* %856 to i64
  store i64 %857, i64* %16, align 8
  %858 = load i64, i64* @ALIGN_SIZE, align 8
  %859 = load i64, i64* %16, align 8
  %860 = add i64 %859, %858
  store i64 %860, i64* %16, align 8
  %861 = load i64, i64* @ALIGN_SIZE, align 8
  %862 = xor i64 %861, -1
  %863 = load i64, i64* %16, align 8
  %864 = and i64 %863, %862
  store i64 %864, i64* %16, align 8
  %865 = load i64, i64* %16, align 8
  %866 = inttoptr i64 %865 to i8*
  %867 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %868 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %867, i32 0, i32 2
  store i8* %866, i8** %868, align 8
  %869 = load i64, i64* @BUF1_LEN, align 8
  %870 = load i64, i64* @ALIGN_SIZE, align 8
  %871 = add i64 %869, %870
  %872 = trunc i64 %871 to i32
  store i32 %872, i32* %4, align 4
  %873 = load i32, i32* %4, align 4
  %874 = load i32, i32* @GFP_KERNEL, align 4
  %875 = call i8* @kmalloc(i32 %873, i32 %874)
  %876 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %877 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %876, i32 0, i32 1
  store i8* %875, i8** %877, align 8
  %878 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %879 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %878, i32 0, i32 1
  %880 = load i8*, i8** %879, align 8
  %881 = icmp ne i8* %880, null
  br i1 %881, label %885, label %882

882:                                              ; preds = %849
  %883 = load i32, i32* @ENOMEM, align 4
  %884 = sub nsw i32 0, %883
  store i32 %884, i32* %2, align 4
  br label %969

885:                                              ; preds = %849
  %886 = load i32, i32* %4, align 4
  %887 = sext i32 %886 to i64
  %888 = load i64, i64* %20, align 8
  %889 = add i64 %888, %887
  store i64 %889, i64* %20, align 8
  %890 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %891 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %890, i32 0, i32 1
  %892 = load i8*, i8** %891, align 8
  %893 = ptrtoint i8* %892 to i64
  store i64 %893, i64* %16, align 8
  %894 = load i64, i64* @ALIGN_SIZE, align 8
  %895 = load i64, i64* %16, align 8
  %896 = add i64 %895, %894
  store i64 %896, i64* %16, align 8
  %897 = load i64, i64* @ALIGN_SIZE, align 8
  %898 = xor i64 %897, -1
  %899 = load i64, i64* %16, align 8
  %900 = and i64 %899, %898
  store i64 %900, i64* %16, align 8
  %901 = load i64, i64* %16, align 8
  %902 = inttoptr i64 %901 to i8*
  %903 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %904 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %903, i32 0, i32 0
  store i8* %902, i8** %904, align 8
  %905 = load i32, i32* %45, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %45, align 4
  br label %813

907:                                              ; preds = %813
  br label %908

908:                                              ; preds = %907
  %909 = load i32, i32* %11, align 4
  %910 = add nsw i32 %909, 1
  store i32 %910, i32* %11, align 4
  br label %772

911:                                              ; preds = %772
  br label %912

912:                                              ; preds = %911
  %913 = load i32, i32* %10, align 4
  %914 = add nsw i32 %913, 1
  store i32 %914, i32* %10, align 4
  br label %720

915:                                              ; preds = %720
  br label %916

916:                                              ; preds = %915, %713
  store i32 8, i32* %4, align 4
  %917 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %918 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %917, i32 0, i32 1
  %919 = load %struct.TYPE_15__*, %struct.TYPE_15__** %918, align 8
  %920 = load i32, i32* %4, align 4
  %921 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %922 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %921, i32 0, i32 0
  %923 = call i8* @pci_alloc_consistent(%struct.TYPE_15__* %919, i32 %920, i8** %922)
  %924 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %925 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %924, i32 0, i32 3
  store i8* %923, i8** %925, align 8
  %926 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %927 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %926, i32 0, i32 3
  %928 = load i8*, i8** %927, align 8
  %929 = icmp ne i8* %928, null
  br i1 %929, label %933, label %930

930:                                              ; preds = %916
  %931 = load i32, i32* @ENOMEM, align 4
  %932 = sub nsw i32 0, %931
  store i32 %932, i32* %2, align 4
  br label %969

933:                                              ; preds = %916
  %934 = load i32, i32* %4, align 4
  %935 = sext i32 %934 to i64
  %936 = load i64, i64* %20, align 8
  %937 = add i64 %936, %935
  store i64 %937, i64* %20, align 8
  %938 = load i32, i32* %4, align 4
  %939 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %940 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %939, i32 0, i32 1
  store i32 %938, i32* %940, align 8
  %941 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %942 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %941, i32 0, i32 3
  %943 = load i8*, i8** %942, align 8
  store i8* %943, i8** %5, align 8
  %944 = load i8*, i8** %5, align 8
  %945 = bitcast i8* %944 to %struct.stat_block*
  %946 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %947 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %946, i32 0, i32 2
  store %struct.stat_block* %945, %struct.stat_block** %947, align 8
  %948 = load i8*, i8** %5, align 8
  %949 = load i32, i32* %4, align 4
  %950 = call i32 @memset(i8* %948, i32 0, i32 %949)
  %951 = load i32, i32* @INIT_DBG, align 4
  %952 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %953 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %952, i32 0, i32 1
  %954 = load %struct.TYPE_15__*, %struct.TYPE_15__** %953, align 8
  %955 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %954, i32 0, i32 0
  %956 = call i32 @dev_name(i32* %955)
  %957 = load i8*, i8** %7, align 8
  %958 = ptrtoint i8* %957 to i64
  %959 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %951, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %956, i64 %958)
  %960 = load i64, i64* %20, align 8
  %961 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %962 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %961, i32 0, i32 2
  %963 = load %struct.stat_block*, %struct.stat_block** %962, align 8
  %964 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %963, i32 0, i32 0
  %965 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %964, i32 0, i32 0
  %966 = load i64, i64* %965, align 8
  %967 = add i64 %966, %960
  store i64 %967, i64* %965, align 8
  %968 = load i32, i32* @SUCCESS, align 4
  store i32 %968, i32* %2, align 4
  br label %969

969:                                              ; preds = %933, %930, %882, %846, %805, %764, %589, %550, %413, %369, %273, %248, %160, %104, %78
  %970 = load i32, i32* %2, align 4
  ret i32 %970
}

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @kzalloc(i32, i32) #1

declare dso_local i32 @TXD_MEM_PAGE_CNT(i32, i32) #1

declare dso_local i8* @pci_alloc_consistent(%struct.TYPE_15__*, i32, i8**) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
