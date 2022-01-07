; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.falcon_nic_data*, %struct.TYPE_15__, i32, %struct.TYPE_12__* }
%struct.falcon_nic_data = type { i32, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }
%struct.falcon_board = type { %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_14__*, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32 (%struct.efx_nic*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Falcon FPGA not supported\0A\00", align 1
@EFX_REV_FALCON_A1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Falcon rev A0 not supported\0A\00", align 1
@FR_AB_NIC_STAT = common dso_local global i32 0, align 4
@FRF_AB_STRAP_10G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Falcon rev A1 1G not supported\0A\00", align 1
@FRF_AA_STRAP_PCIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Falcon rev A1 PCI-X not supported\0A\00", align 1
@EFX_VENDID_SFC = common dso_local global i32 0, align 4
@FALCON_A_S_DEVID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to find secondary function\0A\00", align 1
@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to reset NIC\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"NVRAM is invalid\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@falcon_i2c_bit_operations = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"SFC4000 GPIO\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to initialise board\0A\00", align 1
@falcon_stats_timer_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @falcon_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_probe_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca %struct.falcon_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.falcon_nic_data* @kzalloc(i32 24, i32 %10)
  store %struct.falcon_nic_data* %11, %struct.falcon_nic_data** %4, align 8
  %12 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %13 = icmp ne %struct.falcon_nic_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %302

17:                                               ; preds = %1
  %18 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 1
  store %struct.falcon_nic_data* %18, %struct.falcon_nic_data** %20, align 8
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = call i64 @efx_nic_fpga_ver(%struct.efx_nic* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = load i32, i32* @probe, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_err(%struct.efx_nic* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %296

33:                                               ; preds = %17
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = call i64 @efx_nic_rev(%struct.efx_nic* %34)
  %36 = load i64, i64* @EFX_REV_FALCON_A1, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %135

38:                                               ; preds = %33
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46, %38
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = load i32, i32* @probe, align 4
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_err(%struct.efx_nic* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %296

56:                                               ; preds = %46
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = load i32, i32* @FR_AB_NIC_STAT, align 4
  %59 = call i32 @efx_reado(%struct.efx_nic* %57, i32* %7, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FRF_AB_STRAP_10G, align 4
  %62 = call i64 @EFX_OWORD_FIELD(i32 %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %66 = load i32, i32* @probe, align 4
  %67 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_err(%struct.efx_nic* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %296

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FRF_AA_STRAP_PCIE, align 4
  %74 = call i64 @EFX_OWORD_FIELD(i32 %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %78 = load i32, i32* @probe, align 4
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_err(%struct.efx_nic* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %296

83:                                               ; preds = %71
  %84 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call %struct.pci_dev* @pci_dev_get(%struct.TYPE_12__* %86)
  store %struct.pci_dev* %87, %struct.pci_dev** %8, align 8
  br label %88

88:                                               ; preds = %119, %83
  %89 = load i32, i32* @EFX_VENDID_SFC, align 4
  %90 = load i32, i32* @FALCON_A_S_DEVID, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %92 = call %struct.pci_dev* @pci_get_device(i32 %89, i32 %90, %struct.pci_dev* %91)
  store %struct.pci_dev* %92, %struct.pci_dev** %8, align 8
  %93 = icmp ne %struct.pci_dev* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %94
  %105 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %109 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %108, i32 0, i32 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  %114 = icmp eq i64 %107, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %117 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %118 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %117, i32 0, i32 1
  store %struct.pci_dev* %116, %struct.pci_dev** %118, align 8
  br label %120

119:                                              ; preds = %104, %94
  br label %88

120:                                              ; preds = %115, %88
  %121 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %122 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %121, i32 0, i32 1
  %123 = load %struct.pci_dev*, %struct.pci_dev** %122, align 8
  %124 = icmp ne %struct.pci_dev* %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %127 = load i32, i32* @probe, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @netif_err(%struct.efx_nic* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %295

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %33
  %136 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %137 = load i32, i32* @RESET_TYPE_ALL, align 4
  %138 = call i32 @__falcon_reset_hw(%struct.efx_nic* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %143 = load i32, i32* @probe, align 4
  %144 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %145 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @netif_err(%struct.efx_nic* %142, i32 %143, i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %282

148:                                              ; preds = %135
  %149 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %150 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %151 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %150, i32 0, i32 2
  %152 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %149, %struct.TYPE_15__* %151, i32 4)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %281

156:                                              ; preds = %148
  %157 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %158 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 15
  %162 = call i32 @BUG_ON(i32 %161)
  %163 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %164 = load i32, i32* @probe, align 4
  %165 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %166 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %169 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %173 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %177 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @virt_to_phys(i32 %179)
  %181 = trunc i64 %180 to i32
  %182 = call i32 @netif_dbg(%struct.efx_nic* %163, i32 %164, i32 %167, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %175, i32 %181)
  %183 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %184 = call i32 @falcon_probe_spi_devices(%struct.efx_nic* %183)
  %185 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %186 = call i32 @falcon_probe_nvconfig(%struct.efx_nic* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %156
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %196 = load i32, i32* @probe, align 4
  %197 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %198 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @netif_err(%struct.efx_nic* %195, i32 %196, i32 %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %201

201:                                              ; preds = %194, %189
  br label %276

202:                                              ; preds = %156
  %203 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %204 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %203, i32 0, i32 0
  store i32 4968, i32* %204, align 8
  %205 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %206 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %205)
  store %struct.falcon_board* %206, %struct.falcon_board** %5, align 8
  %207 = load i32, i32* @THIS_MODULE, align 4
  %208 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %209 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  store i32 %207, i32* %210, align 8
  %211 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %212 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %211, i32 0, i32 2
  %213 = bitcast %struct.TYPE_14__* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 bitcast (%struct.TYPE_14__* @falcon_i2c_bit_operations to i8*), i64 8, i1 false)
  %214 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %215 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %216 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  store %struct.efx_nic* %214, %struct.efx_nic** %217, align 8
  %218 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %219 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %218, i32 0, i32 2
  %220 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %221 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 2
  store %struct.TYPE_14__* %219, %struct.TYPE_14__** %222, align 8
  %223 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %224 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %223, i32 0, i32 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  %227 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %228 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  store i32* %226, i32** %230, align 8
  %231 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %232 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @strlcpy(i32 %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %236 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %237 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %236, i32 0, i32 0
  %238 = call i32 @i2c_bit_add_bus(%struct.TYPE_13__* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %202
  br label %276

242:                                              ; preds = %202
  %243 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %244 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %243)
  %245 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %247, align 8
  %249 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %250 = call i32 %248(%struct.efx_nic* %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %242
  %254 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %255 = load i32, i32* @probe, align 4
  %256 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %257 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @netif_err(%struct.efx_nic* %254, i32 %255, i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %268

260:                                              ; preds = %242
  %261 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %262 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  %263 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %264 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %263, i32 0, i32 2
  %265 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %266 = ptrtoint %struct.efx_nic* %265 to i64
  %267 = call i32 @setup_timer(i32* %264, i32* @falcon_stats_timer_func, i64 %266)
  store i32 0, i32* %2, align 4
  br label %302

268:                                              ; preds = %253
  %269 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %270 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %269, i32 0, i32 0
  %271 = call i32 @i2c_del_adapter(%struct.TYPE_13__* %270)
  %272 = call i32 @BUG_ON(i32 %271)
  %273 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %274 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %273, i32 0, i32 0
  %275 = call i32 @memset(%struct.TYPE_13__* %274, i32 0, i32 32)
  br label %276

276:                                              ; preds = %268, %241, %201
  %277 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %278 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %279 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %278, i32 0, i32 2
  %280 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %277, %struct.TYPE_15__* %279)
  br label %281

281:                                              ; preds = %276, %155
  br label %282

282:                                              ; preds = %281, %141
  %283 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %284 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %283, i32 0, i32 1
  %285 = load %struct.pci_dev*, %struct.pci_dev** %284, align 8
  %286 = icmp ne %struct.pci_dev* %285, null
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %289 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %288, i32 0, i32 1
  %290 = load %struct.pci_dev*, %struct.pci_dev** %289, align 8
  %291 = call i32 @pci_dev_put(%struct.pci_dev* %290)
  %292 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %293 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %292, i32 0, i32 1
  store %struct.pci_dev* null, %struct.pci_dev** %293, align 8
  br label %294

294:                                              ; preds = %287, %282
  br label %295

295:                                              ; preds = %294, %125
  br label %296

296:                                              ; preds = %295, %76, %64, %49, %26
  %297 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %298 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %297, i32 0, i32 1
  %299 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %298, align 8
  %300 = call i32 @kfree(%struct.falcon_nic_data* %299)
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %296, %260, %14
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local %struct.falcon_nic_data* @kzalloc(i32, i32) #1

declare dso_local i64 @efx_nic_fpga_ver(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_dev_get(%struct.TYPE_12__*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @__falcon_reset_hw(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @falcon_probe_spi_devices(%struct.efx_nic*) #1

declare dso_local i32 @falcon_probe_nvconfig(%struct.efx_nic*) #1

declare dso_local %struct.falcon_board* @falcon_board(%struct.efx_nic*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_13__*) #1

declare dso_local i32 @setup_timer(i32*, i32*, i64) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.TYPE_15__*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.falcon_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
