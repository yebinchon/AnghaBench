; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_pinit_from_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_pinit_from_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.crb_addr_pair = type { i32, i32 }

@QLCNIC_CMDPEG_STATE = common dso_local global i32 0, align 4
@QLCNIC_RCVPEG_STATE = common dso_local global i32 0, align 4
@QLCNIC_CRB_I2Q = common dso_local global i32 0, align 4
@QLCNIC_CRB_NIU = common dso_local global i32 0, align 4
@QLCNIC_CRB_SRE = common dso_local global i32 0, align 4
@QLCNIC_CRB_EPG = common dso_local global i32 0, align 4
@QLCNIC_CRB_TIMER = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_0 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_1 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_2 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_3 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_4 = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_GLB_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR Reading crb_init area: val:%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"QLOGIC card flash not initialized.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to calloc memory for rom read.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_ADDR_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"CRB init value out of range %x\0A\00", align 1
@QLCNIC_PCI_CRBSPACE = common dso_local global i64 0, align 8
@QLCNIC_CRB_I2C0 = common dso_local global i32 0, align 4
@ROMUSB_GLB = common dso_local global i32 0, align 4
@QLCNIC_CRB_DDR_NET = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION2 = common dso_local global i32 0, align 4
@QLCNIC_CRB_SMB = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_D = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_I = common dso_local global i32 0, align 4
@QLCNIC_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@QLCNIC_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_pinit_from_rom(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crb_addr_pair*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = load i32, i32* @QLCNIC_CMDPEG_STATE, align 4
  %18 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %16, i32 %17, i32 0)
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load i32, i32* @QLCNIC_RCVPEG_STATE, align 4
  %21 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %19, i32 %20, i32 0)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %24 = add nsw i32 %23, 16
  %25 = call i32 @QLCWR32(%struct.qlcnic_adapter* %22, i32 %24, i32 0)
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %28 = add nsw i32 %27, 20
  %29 = call i32 @QLCWR32(%struct.qlcnic_adapter* %26, i32 %28, i32 0)
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %32 = add nsw i32 %31, 24
  %33 = call i32 @QLCWR32(%struct.qlcnic_adapter* %30, i32 %32, i32 0)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %36 = add nsw i32 %35, 28
  %37 = call i32 @QLCWR32(%struct.qlcnic_adapter* %34, i32 %36, i32 0)
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %40 = add nsw i32 %39, 32
  %41 = call i32 @QLCWR32(%struct.qlcnic_adapter* %38, i32 %40, i32 0)
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %44 = add nsw i32 %43, 36
  %45 = call i32 @QLCWR32(%struct.qlcnic_adapter* %42, i32 %44, i32 0)
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %48 = add nsw i32 %47, 64
  %49 = call i32 @QLCWR32(%struct.qlcnic_adapter* %46, i32 %48, i32 255)
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %52 = add nsw i32 %51, 458752
  %53 = call i32 @QLCWR32(%struct.qlcnic_adapter* %50, i32 %52, i32 0)
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %56 = add nsw i32 %55, 524288
  %57 = call i32 @QLCWR32(%struct.qlcnic_adapter* %54, i32 %56, i32 0)
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %60 = add nsw i32 %59, 589824
  %61 = call i32 @QLCWR32(%struct.qlcnic_adapter* %58, i32 %60, i32 0)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %64 = add nsw i32 %63, 655360
  %65 = call i32 @QLCWR32(%struct.qlcnic_adapter* %62, i32 %64, i32 0)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %68 = add nsw i32 %67, 720896
  %69 = call i32 @QLCWR32(%struct.qlcnic_adapter* %66, i32 %68, i32 0)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = load i32, i32* @QLCNIC_CRB_SRE, align 4
  %72 = add nsw i32 %71, 4096
  %73 = call i32 @QLCRD32(%struct.qlcnic_adapter* %70, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %75 = load i32, i32* @QLCNIC_CRB_SRE, align 4
  %76 = add nsw i32 %75, 4096
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, -2
  %79 = call i32 @QLCWR32(%struct.qlcnic_adapter* %74, i32 %76, i32 %78)
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %81 = load i32, i32* @QLCNIC_CRB_EPG, align 4
  %82 = add nsw i32 %81, 4864
  %83 = call i32 @QLCWR32(%struct.qlcnic_adapter* %80, i32 %82, i32 1)
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %85 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %86 = add nsw i32 %85, 0
  %87 = call i32 @QLCWR32(%struct.qlcnic_adapter* %84, i32 %86, i32 0)
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %89 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %90 = add nsw i32 %89, 8
  %91 = call i32 @QLCWR32(%struct.qlcnic_adapter* %88, i32 %90, i32 0)
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %93 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %94 = add nsw i32 %93, 16
  %95 = call i32 @QLCWR32(%struct.qlcnic_adapter* %92, i32 %94, i32 0)
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %98 = add nsw i32 %97, 24
  %99 = call i32 @QLCWR32(%struct.qlcnic_adapter* %96, i32 %98, i32 0)
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %101 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %102 = add nsw i32 %101, 256
  %103 = call i32 @QLCWR32(%struct.qlcnic_adapter* %100, i32 %102, i32 0)
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %106 = add nsw i32 %105, 512
  %107 = call i32 @QLCWR32(%struct.qlcnic_adapter* %104, i32 %106, i32 0)
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %109 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %110 = add nsw i32 %109, 60
  %111 = call i32 @QLCWR32(%struct.qlcnic_adapter* %108, i32 %110, i32 1)
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %113 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %114 = add nsw i32 %113, 60
  %115 = call i32 @QLCWR32(%struct.qlcnic_adapter* %112, i32 %114, i32 1)
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %117 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %118 = add nsw i32 %117, 60
  %119 = call i32 @QLCWR32(%struct.qlcnic_adapter* %116, i32 %118, i32 1)
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %121 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %122 = add nsw i32 %121, 60
  %123 = call i32 @QLCWR32(%struct.qlcnic_adapter* %120, i32 %122, i32 1)
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %125 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %126 = add nsw i32 %125, 60
  %127 = call i32 @QLCWR32(%struct.qlcnic_adapter* %124, i32 %126, i32 1)
  %128 = call i32 @msleep(i32 20)
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %130 = call i32 @qlcnic_rom_unlock(%struct.qlcnic_adapter* %129)
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %132 = load i32, i32* @QLCNIC_ROMUSB_GLB_SW_RESET, align 4
  %133 = call i32 @QLCWR32(%struct.qlcnic_adapter* %131, i32 %132, i32 -16777217)
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %135 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %134, i32 0, i32* %7)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %1
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, -889271554
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %142 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %141, i32 4, i32* %7)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140, %137, %1
  %145 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %405

151:                                              ; preds = %140
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, 65535
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %7, align 4
  %155 = ashr i32 %154, 16
  %156 = and i32 %155, 65535
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %157, 1024
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = call i32 (i32*, i8*, ...) @dev_err(i32* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %405

165:                                              ; preds = %151
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call %struct.crb_addr_pair* @kcalloc(i32 %166, i32 8, i32 %167)
  store %struct.crb_addr_pair* %168, %struct.crb_addr_pair** %9, align 8
  %169 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %170 = icmp eq %struct.crb_addr_pair* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %405

177:                                              ; preds = %165
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %219, %177
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %222

182:                                              ; preds = %178
  %183 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %184 = load i32, i32* %6, align 4
  %185 = mul nsw i32 8, %184
  %186 = load i32, i32* %10, align 4
  %187 = mul i32 4, %186
  %188 = add i32 %185, %187
  %189 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %183, i32 %188, i32* %5)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %182
  %192 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %193 = load i32, i32* %6, align 4
  %194 = mul nsw i32 8, %193
  %195 = load i32, i32* %10, align 4
  %196 = mul i32 4, %195
  %197 = add i32 %194, %196
  %198 = add i32 %197, 4
  %199 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %192, i32 %198, i32* %4)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %191, %182
  %202 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %203 = call i32 @kfree(%struct.crb_addr_pair* %202)
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %405

206:                                              ; preds = %191
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %208, i64 %210
  %212 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %211, i32 0, i32 0
  store i32 %207, i32* %212, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %214, i64 %216
  %218 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %217, i32 0, i32 1
  store i32 %213, i32* %218, align 4
  br label %219

219:                                              ; preds = %206
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %178

222:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %340, %222
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %343

227:                                              ; preds = %223
  %228 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %228, i64 %230
  %232 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @qlcnic_decode_crb_addr(i32 %233)
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @QLCNIC_ADDR_ERROR, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %227
  %239 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 0
  %241 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %241, i64 %243
  %245 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32*, i8*, ...) @dev_err(i32* %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  br label %340

248:                                              ; preds = %227
  %249 = load i64, i64* @QLCNIC_PCI_CRBSPACE, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %340

258:                                              ; preds = %248
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @QLCNIC_CAM_RAM(i32 508)
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  br label %340

263:                                              ; preds = %258
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @QLCNIC_CRB_I2C0, align 4
  %266 = add nsw i32 %265, 28
  %267 = icmp eq i32 %264, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %340

269:                                              ; preds = %263
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @ROMUSB_GLB, align 4
  %272 = add nsw i32 %271, 188
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %269
  br label %340

275:                                              ; preds = %269
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @ROMUSB_GLB, align 4
  %278 = add nsw i32 %277, 168
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %340

281:                                              ; preds = %275
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* @ROMUSB_GLB, align 4
  %284 = add nsw i32 %283, 200
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %340

287:                                              ; preds = %281
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* @ROMUSB_GLB, align 4
  %290 = add nsw i32 %289, 36
  %291 = icmp eq i32 %288, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %340

293:                                              ; preds = %287
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @ROMUSB_GLB, align 4
  %296 = add nsw i32 %295, 28
  %297 = icmp eq i32 %294, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  br label %340

299:                                              ; preds = %293
  %300 = load i32, i32* %11, align 4
  %301 = and i32 %300, 267386880
  %302 = load i32, i32* @QLCNIC_CRB_DDR_NET, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  br label %340

305:                                              ; preds = %299
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @PCIE_SETUP_FUNCTION, align 4
  %308 = call i32 @QLCNIC_PCIE_REG(i32 %307)
  %309 = icmp eq i32 %306, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %340

311:                                              ; preds = %305
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @PCIE_SETUP_FUNCTION2, align 4
  %314 = call i32 @QLCNIC_PCIE_REG(i32 %313)
  %315 = icmp eq i32 %312, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  br label %340

317:                                              ; preds = %311
  %318 = load i32, i32* %11, align 4
  %319 = and i32 %318, 267386880
  %320 = load i32, i32* @QLCNIC_CRB_SMB, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %340

323:                                              ; preds = %317
  store i32 1, i32* %8, align 4
  %324 = load i32, i32* %11, align 4
  %325 = load i32, i32* @QLCNIC_ROMUSB_GLB_SW_RESET, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store i32 1000, i32* %8, align 4
  br label %328

328:                                              ; preds = %327, %323
  %329 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %330 = load i32, i32* %11, align 4
  %331 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %331, i64 %333
  %335 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @QLCWR32(%struct.qlcnic_adapter* %329, i32 %330, i32 %336)
  %338 = load i32, i32* %8, align 4
  %339 = call i32 @msleep(i32 %338)
  br label %340

340:                                              ; preds = %328, %322, %316, %310, %304, %298, %292, %286, %280, %274, %268, %262, %257, %238
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %223

343:                                              ; preds = %223
  %344 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %345 = call i32 @kfree(%struct.crb_addr_pair* %344)
  %346 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %347 = load i32, i32* @QLCNIC_CRB_PEG_NET_D, align 4
  %348 = add nsw i32 %347, 236
  %349 = call i32 @QLCWR32(%struct.qlcnic_adapter* %346, i32 %348, i32 30)
  %350 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %351 = load i32, i32* @QLCNIC_CRB_PEG_NET_D, align 4
  %352 = add nsw i32 %351, 76
  %353 = call i32 @QLCWR32(%struct.qlcnic_adapter* %350, i32 %352, i32 8)
  %354 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %355 = load i32, i32* @QLCNIC_CRB_PEG_NET_I, align 4
  %356 = add nsw i32 %355, 76
  %357 = call i32 @QLCWR32(%struct.qlcnic_adapter* %354, i32 %356, i32 8)
  %358 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %359 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %360 = add nsw i32 %359, 8
  %361 = call i32 @QLCWR32(%struct.qlcnic_adapter* %358, i32 %360, i32 0)
  %362 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %363 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %364 = add nsw i32 %363, 12
  %365 = call i32 @QLCWR32(%struct.qlcnic_adapter* %362, i32 %364, i32 0)
  %366 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %367 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %368 = add nsw i32 %367, 8
  %369 = call i32 @QLCWR32(%struct.qlcnic_adapter* %366, i32 %368, i32 0)
  %370 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %371 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %372 = add nsw i32 %371, 12
  %373 = call i32 @QLCWR32(%struct.qlcnic_adapter* %370, i32 %372, i32 0)
  %374 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %375 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %376 = add nsw i32 %375, 8
  %377 = call i32 @QLCWR32(%struct.qlcnic_adapter* %374, i32 %376, i32 0)
  %378 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %379 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %380 = add nsw i32 %379, 12
  %381 = call i32 @QLCWR32(%struct.qlcnic_adapter* %378, i32 %380, i32 0)
  %382 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %383 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %384 = add nsw i32 %383, 8
  %385 = call i32 @QLCWR32(%struct.qlcnic_adapter* %382, i32 %384, i32 0)
  %386 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %387 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %388 = add nsw i32 %387, 12
  %389 = call i32 @QLCWR32(%struct.qlcnic_adapter* %386, i32 %388, i32 0)
  %390 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %391 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %392 = add nsw i32 %391, 8
  %393 = call i32 @QLCWR32(%struct.qlcnic_adapter* %390, i32 %392, i32 0)
  %394 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %395 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %396 = add nsw i32 %395, 12
  %397 = call i32 @QLCWR32(%struct.qlcnic_adapter* %394, i32 %396, i32 0)
  %398 = call i32 @msleep(i32 1)
  %399 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %400 = load i32, i32* @QLCNIC_PEG_HALT_STATUS1, align 4
  %401 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %399, i32 %400, i32 0)
  %402 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %403 = load i32, i32* @QLCNIC_PEG_HALT_STATUS2, align 4
  %404 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %402, i32 %403, i32 0)
  store i32 0, i32* %2, align 4
  br label %405

405:                                              ; preds = %343, %201, %171, %159, %144
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_rom_unlock(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.crb_addr_pair* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.crb_addr_pair*) #1

declare dso_local i32 @qlcnic_decode_crb_addr(i32) #1

declare dso_local i32 @QLCNIC_CAM_RAM(i32) #1

declare dso_local i32 @QLCNIC_PCIE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
