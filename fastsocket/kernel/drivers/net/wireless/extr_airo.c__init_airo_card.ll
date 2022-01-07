; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c__init_airo_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c__init_airo_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i16, i32, i8*, %struct.airo_info*, i32, %struct.TYPE_7__*, i32*, i32* }
%struct.airo_info = type { i32, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, %struct.net_device*, i32*, i32, i32, %struct.net_device*, i32, %struct.TYPE_7__, i32, i32, i32*, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ether_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't alloc_etherdev\00", align 1
@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Found an MPI350 card\00", align 1
@FLAG_MPI = common dso_local global i32 0, align 4
@mpi_netdev_ops = common dso_local global i32 0, align 4
@airo_netdev_ops = common dso_local global i32 0, align 4
@airo_handler_def = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't request region\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Could not map memory\00", align 1
@probe = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"MAC could not be enabled\00", align 1
@EIO = common dso_local global i32 0, align 4
@fast_bap_read = common dso_local global i32 0, align 4
@FLAG_FLASHING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Couldn't register_netdev\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Firmware version %x.%x.%02x\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"WPA supported.\00", align 1
@FLAG_WPA_CAPABLE = common dso_local global i32 0, align 4
@RID_WPA_BSSLISTFIRST = common dso_local global i32 0, align 4
@RID_WPA_BSSLISTNEXT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"WPA unsupported with firmware versions older than 5.30.17.\00", align 1
@RID_BSSLISTFIRST = common dso_local global i32 0, align 4
@RID_BSSLISTNEXT = common dso_local global i32 0, align 4
@FLAG_REGISTERED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"MAC enabled %pM\00", align 1
@MAX_FIDS = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@PCI_SHARED_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i16, i32, i32, %struct.pci_dev*, %struct.device*)* @_init_airo_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @_init_airo_card(i16 zeroext %0, i32 %1, i32 %2, %struct.pci_dev* %3, %struct.device* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.airo_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  store i16 %0, i16* %7, align 2
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.pci_dev* %3, %struct.pci_dev** %10, align 8
  store %struct.device* %4, %struct.device** %11, align 8
  %17 = load i32, i32* @ether_setup, align 4
  %18 = call %struct.net_device* @alloc_netdev(i32 136, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.net_device* %18, %struct.net_device** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %12, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = call i32 @airo_print_err(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %6, align 8
  br label %426

23:                                               ; preds = %5
  %24 = load %struct.net_device*, %struct.net_device** %12, align 8
  %25 = call %struct.airo_info* @netdev_priv(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %12, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 3
  store %struct.airo_info* %25, %struct.airo_info** %27, align 8
  store %struct.airo_info* %25, %struct.airo_info** %13, align 8
  %28 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 9
  store %struct.net_device* null, %struct.net_device** %29, align 8
  %30 = load i32, i32* @FLAG_RADIO_DOWN, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %33 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 23
  store i64 0, i64* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %12, align 8
  %37 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %38 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %37, i32 0, i32 13
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %23
  %42 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 20480
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 42244
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %41
  %52 = call i32 @airo_print_dbg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @FLAG_MPI, align 4
  %54 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %55 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %51, %46, %23
  %58 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %59 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %58, i32 0, i32 22
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %62 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %61, i32 0, i32 21
  %63 = call i32 @sema_init(i32* %62, i32 1)
  %64 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %65 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %64, i32 0, i32 20
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %68 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %69 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %68, i32 0, i32 4
  store %struct.pci_dev* %67, %struct.pci_dev** %69, align 8
  %70 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %71 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %70, i32 0, i32 19
  %72 = call i32 @init_waitqueue_head(i32* %71)
  %73 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 18
  store i32* null, i32** %74, align 8
  %75 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %76 = call i32 @add_airo_dev(%struct.airo_info* %75)
  %77 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %78 = call i64 @airo_networks_allocate(%struct.airo_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %57
  br label %423

81:                                               ; preds = %57
  %82 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %83 = call i32 @airo_networks_initialize(%struct.airo_info* %82)
  %84 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %85 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %84, i32 0, i32 17
  %86 = call i32 @skb_queue_head_init(i32* %85)
  %87 = load i32, i32* @FLAG_MPI, align 4
  %88 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %89 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.net_device*, %struct.net_device** %12, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 7
  store i32* @mpi_netdev_ops, i32** %94, align 8
  br label %98

95:                                               ; preds = %81
  %96 = load %struct.net_device*, %struct.net_device** %12, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 7
  store i32* @airo_netdev_ops, i32** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.net_device*, %struct.net_device** %12, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 6
  store i32* @airo_handler_def, i32** %100, align 8
  %101 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %102 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %101, i32 0, i32 16
  %103 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %104 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32* %102, i32** %105, align 8
  %106 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %107 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %106, i32 0, i32 15
  %108 = load %struct.net_device*, %struct.net_device** %12, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 5
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %109, align 8
  %110 = load i16, i16* %7, align 2
  %111 = load %struct.net_device*, %struct.net_device** %12, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  store i16 %110, i16* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.net_device*, %struct.net_device** %12, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.net_device*, %struct.net_device** %12, align 8
  %119 = call %struct.TYPE_9__* @netdev_extended(%struct.net_device* %118)
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load %struct.net_device*, %struct.net_device** %12, align 8
  %124 = load %struct.device*, %struct.device** %11, align 8
  %125 = call i32 @SET_NETDEV_DEV(%struct.net_device* %123, %struct.device* %124)
  %126 = load %struct.net_device*, %struct.net_device** %12, align 8
  %127 = call i32 @reset_card(%struct.net_device* %126, i32 1)
  %128 = call i32 @msleep(i32 400)
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %98
  %132 = load %struct.net_device*, %struct.net_device** %12, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DRV_NAME, align 4
  %136 = call i32 @request_region(i32 %134, i32 64, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %15, align 4
  %141 = load %struct.net_device*, %struct.net_device** %12, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @airo_print_err(i8* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %418

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %98
  %147 = load i32, i32* @FLAG_MPI, align 4
  %148 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %149 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %148, i32 0, i32 0
  %150 = call i64 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %155 = call i64 @mpi_map_card(%struct.airo_info* %153, %struct.pci_dev* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 @airo_print_err(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %409

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %146
  %161 = load i64, i64* @probe, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %160
  %164 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %165 = load %struct.net_device*, %struct.net_device** %12, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @setup_card(%struct.airo_info* %164, i32 %167, i32 1)
  %169 = load i32, i32* @SUCCESS, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = load %struct.net_device*, %struct.net_device** %12, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @airo_print_err(i8* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %15, align 4
  br label %377

178:                                              ; preds = %163
  br label %194

179:                                              ; preds = %160
  %180 = load i32, i32* @FLAG_MPI, align 4
  %181 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %182 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %181, i32 0, i32 0
  %183 = call i64 @test_bit(i32 %180, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* @fast_bap_read, align 4
  %187 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %188 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %187, i32 0, i32 14
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @FLAG_FLASHING, align 4
  %190 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %191 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %190, i32 0, i32 0
  %192 = call i32 @set_bit(i32 %189, i32* %191)
  br label %193

193:                                              ; preds = %185, %179
  br label %194

194:                                              ; preds = %193, %178
  %195 = load %struct.net_device*, %struct.net_device** %12, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strcpy(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %199 = load %struct.net_device*, %struct.net_device** %12, align 8
  %200 = call i32 @register_netdev(%struct.net_device* %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %194
  %204 = load %struct.net_device*, %struct.net_device** %12, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @airo_print_err(i8* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %377

208:                                              ; preds = %194
  %209 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %210 = load %struct.net_device*, %struct.net_device** %12, align 8
  %211 = call %struct.net_device* @init_wifidev(%struct.airo_info* %209, %struct.net_device* %210)
  %212 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %213 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %212, i32 0, i32 9
  store %struct.net_device* %211, %struct.net_device** %213, align 8
  %214 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %215 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %214, i32 0, i32 9
  %216 = load %struct.net_device*, %struct.net_device** %215, align 8
  %217 = icmp ne %struct.net_device* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %208
  br label %374

219:                                              ; preds = %208
  %220 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %221 = call i32 @readCapabilityRid(%struct.airo_info* %220, %struct.TYPE_8__* %16, i32 1)
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* @SUCCESS, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i32, i32* @EIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %15, align 4
  br label %365

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @cpu_to_le16(i32 2)
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 1, i32 0
  %236 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %237 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @cpu_to_le16(i32 128)
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 3, i32 0
  %245 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %246 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.net_device*, %struct.net_device** %12, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @le16_to_cpu(i32 %251)
  %253 = ashr i32 %252, 8
  %254 = and i32 %253, 15
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @le16_to_cpu(i32 %256)
  %258 = and i32 %257, 255
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le16_to_cpu(i32 %260)
  %262 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %254, i32 %258, i32 %261)
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le16_to_cpu(i32 %264)
  %266 = icmp sgt i32 %265, 1328
  br i1 %266, label %277, label %267

267:                                              ; preds = %228
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le16_to_cpu(i32 %269)
  %271 = icmp eq i32 %270, 1328
  br i1 %271, label %272, label %296

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le16_to_cpu(i32 %274)
  %276 = icmp sge i32 %275, 17
  br i1 %276, label %277, label %296

277:                                              ; preds = %272, %228
  %278 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %279 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %278, i32 0, i32 13
  %280 = load %struct.net_device*, %struct.net_device** %279, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %284 = load i32, i32* @FLAG_WPA_CAPABLE, align 4
  %285 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %286 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %285, i32 0, i32 0
  %287 = call i32 @set_bit(i32 %284, i32* %286)
  %288 = load i32, i32* @RID_WPA_BSSLISTFIRST, align 4
  %289 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %290 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %289, i32 0, i32 12
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* @RID_WPA_BSSLISTNEXT, align 4
  %292 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %293 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %292, i32 0, i32 11
  store i32 %291, i32* %293, align 8
  %294 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %295 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %294, i32 0, i32 3
  store i32 4, i32* %295, align 4
  br label %311

296:                                              ; preds = %272, %267
  %297 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %298 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %297, i32 0, i32 13
  %299 = load %struct.net_device*, %struct.net_device** %298, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %301, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %303 = load i32, i32* @RID_BSSLISTFIRST, align 4
  %304 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %305 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %304, i32 0, i32 12
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* @RID_BSSLISTNEXT, align 4
  %307 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %308 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %307, i32 0, i32 11
  store i32 %306, i32* %308, align 8
  %309 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %310 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %309, i32 0, i32 3
  store i32 0, i32* %310, align 4
  br label %311

311:                                              ; preds = %296, %277
  %312 = load i32, i32* @FLAG_REGISTERED, align 4
  %313 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %314 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %313, i32 0, i32 0
  %315 = call i32 @set_bit(i32 %312, i32* %314)
  %316 = load %struct.net_device*, %struct.net_device** %12, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.net_device*, %struct.net_device** %12, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %318, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %321)
  %323 = load i64, i64* @probe, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %355

325:                                              ; preds = %311
  %326 = load i32, i32* @FLAG_MPI, align 4
  %327 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %328 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %327, i32 0, i32 0
  %329 = call i64 @test_bit(i32 %326, i32* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %355, label %331

331:                                              ; preds = %325
  store i32 0, i32* %14, align 4
  br label %332

332:                                              ; preds = %351, %331
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* @MAX_FIDS, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %354

336:                                              ; preds = %332
  %337 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %338 = load i32, i32* @AIRO_DEF_MTU, align 4
  %339 = load i32, i32* %14, align 4
  %340 = load i32, i32* @MAX_FIDS, align 4
  %341 = sdiv i32 %340, 2
  %342 = icmp sge i32 %339, %341
  %343 = zext i1 %342 to i32
  %344 = call i32 @transmit_allocate(%struct.airo_info* %337, i32 %338, i32 %343)
  %345 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %346 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %345, i32 0, i32 10
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %14, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %344, i32* %350, align 4
  br label %351

351:                                              ; preds = %336
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %14, align 4
  br label %332

354:                                              ; preds = %332
  br label %355

355:                                              ; preds = %354, %325, %311
  %356 = load %struct.net_device*, %struct.net_device** %12, align 8
  %357 = load %struct.net_device*, %struct.net_device** %12, align 8
  %358 = getelementptr inbounds %struct.net_device, %struct.net_device* %357, i32 0, i32 3
  %359 = load %struct.airo_info*, %struct.airo_info** %358, align 8
  %360 = call i64 @setup_proc_entry(%struct.net_device* %356, %struct.airo_info* %359)
  %361 = icmp slt i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %355
  br label %365

363:                                              ; preds = %355
  %364 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %364, %struct.net_device** %6, align 8
  br label %426

365:                                              ; preds = %362, %225
  %366 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %367 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %366, i32 0, i32 9
  %368 = load %struct.net_device*, %struct.net_device** %367, align 8
  %369 = call i32 @unregister_netdev(%struct.net_device* %368)
  %370 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %371 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %370, i32 0, i32 9
  %372 = load %struct.net_device*, %struct.net_device** %371, align 8
  %373 = call i32 @free_netdev(%struct.net_device* %372)
  br label %374

374:                                              ; preds = %365, %218
  %375 = load %struct.net_device*, %struct.net_device** %12, align 8
  %376 = call i32 @unregister_netdev(%struct.net_device* %375)
  br label %377

377:                                              ; preds = %374, %203, %171
  %378 = load i32, i32* @FLAG_MPI, align 4
  %379 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %380 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %379, i32 0, i32 0
  %381 = call i64 @test_bit(i32 %378, i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %408

383:                                              ; preds = %377
  %384 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %385 = icmp ne %struct.pci_dev* %384, null
  br i1 %385, label %386, label %408

386:                                              ; preds = %383
  %387 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %388 = load i32, i32* @PCI_SHARED_LEN, align 4
  %389 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %390 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %389, i32 0, i32 8
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %393 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @pci_free_consistent(%struct.pci_dev* %387, i32 %388, i32 %391, i32 %394)
  %396 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %397 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @iounmap(i32 %398)
  %400 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %401 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @iounmap(i32 %402)
  %404 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %405 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %404, i32 0, i32 4
  %406 = load %struct.pci_dev*, %struct.pci_dev** %405, align 8
  %407 = call i32 @mpi_unmap_card(%struct.pci_dev* %406)
  br label %408

408:                                              ; preds = %386, %383, %377
  br label %409

409:                                              ; preds = %408, %157
  %410 = load i32, i32* %9, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %409
  %413 = load %struct.net_device*, %struct.net_device** %12, align 8
  %414 = getelementptr inbounds %struct.net_device, %struct.net_device* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @release_region(i32 %415, i32 64)
  br label %417

417:                                              ; preds = %412, %409
  br label %418

418:                                              ; preds = %417, %138
  %419 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %420 = call i32 @airo_networks_free(%struct.airo_info* %419)
  %421 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %422 = call i32 @del_airo_dev(%struct.airo_info* %421)
  br label %423

423:                                              ; preds = %418, %80
  %424 = load %struct.net_device*, %struct.net_device** %12, align 8
  %425 = call i32 @free_netdev(%struct.net_device* %424)
  store %struct.net_device* null, %struct.net_device** %6, align 8
  br label %426

426:                                              ; preds = %423, %363, %21
  %427 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %427
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @airo_print_err(i8*, i8*) #1

declare dso_local %struct.airo_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @airo_print_dbg(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @add_airo_dev(%struct.airo_info*) #1

declare dso_local i64 @airo_networks_allocate(%struct.airo_info*) #1

declare dso_local i32 @airo_networks_initialize(%struct.airo_info*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @reset_card(%struct.net_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i64 @mpi_map_card(%struct.airo_info*, %struct.pci_dev*) #1

declare dso_local i32 @setup_card(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @init_wifidev(%struct.airo_info*, %struct.net_device*) #1

declare dso_local i32 @readCapabilityRid(%struct.airo_info*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @airo_print_info(i8*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @transmit_allocate(%struct.airo_info*, i32, i32) #1

declare dso_local i64 @setup_proc_entry(%struct.net_device*, %struct.airo_info*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mpi_unmap_card(%struct.pci_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @airo_networks_free(%struct.airo_info*) #1

declare dso_local i32 @del_airo_dev(%struct.airo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
