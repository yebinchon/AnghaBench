; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pinit_from_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pinit_from_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.crb_addr_pair = type { i32, i32 }

@QLA82XX_CRB_I2Q = common dso_local global i32 0, align 4
@QLA82XX_CRB_NIU = common dso_local global i32 0, align 4
@QLA82XX_CRB_SRE = common dso_local global i32 0, align 4
@QLA82XX_CRB_EPG = common dso_local global i32 0, align 4
@QLA82XX_CRB_TIMER = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_0 = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_1 = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_2 = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_3 = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_4 = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_GLB_SW_RESET = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error Reading crb_init area: n: %08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Card flash not initialized:n=0x%x.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%d CRB init values found in ROM.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to allocate memory.\0A\00", align 1
@QLA82XX_PCI_CRBSPACE = common dso_local global i64 0, align 8
@ROMUSB_GLB = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION2 = common dso_local global i32 0, align 4
@QLA82XX_CRB_SMB = common dso_local global i64 0, align 8
@QLA82XX_CRB_DDR_NET = common dso_local global i64 0, align 8
@ADDR_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Unknow addr: 0x%08lx.\0A\00", align 1
@QLA82XX_CRB_PEG_NET_D = common dso_local global i32 0, align 4
@QLA82XX_CRB_PEG_NET_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @qla82xx_pinit_from_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_pinit_from_rom(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crb_addr_pair*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %11, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %16 = call i32 @qla82xx_rom_lock(%struct.qla_hw_data* %15)
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %18 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %19 = add nsw i32 %18, 16
  %20 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %17, i32 %19, i32 0)
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %22 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %23 = add nsw i32 %22, 20
  %24 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %21, i32 %23, i32 0)
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %26 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %27 = add nsw i32 %26, 24
  %28 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %25, i32 %27, i32 0)
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %30 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %31 = add nsw i32 %30, 28
  %32 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %29, i32 %31, i32 0)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %34 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %35 = add nsw i32 %34, 32
  %36 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %33, i32 %35, i32 0)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %38 = load i32, i32* @QLA82XX_CRB_I2Q, align 4
  %39 = add nsw i32 %38, 36
  %40 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %37, i32 %39, i32 0)
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %42 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %43 = add nsw i32 %42, 64
  %44 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %41, i32 %43, i32 255)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %46 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %47 = add nsw i32 %46, 458752
  %48 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %45, i32 %47, i32 0)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %50 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %51 = add nsw i32 %50, 524288
  %52 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %49, i32 %51, i32 0)
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %54 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %55 = add nsw i32 %54, 589824
  %56 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %53, i32 %55, i32 0)
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %58 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %59 = add nsw i32 %58, 655360
  %60 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %57, i32 %59, i32 0)
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %62 = load i32, i32* @QLA82XX_CRB_NIU, align 4
  %63 = add nsw i32 %62, 720896
  %64 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %61, i32 %63, i32 0)
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %66 = load i32, i32* @QLA82XX_CRB_SRE, align 4
  %67 = add nsw i32 %66, 4096
  %68 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %65, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %70 = load i32, i32* @QLA82XX_CRB_SRE, align 4
  %71 = add nsw i32 %70, 4096
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, -2
  %74 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %69, i32 %71, i32 %73)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %76 = load i32, i32* @QLA82XX_CRB_EPG, align 4
  %77 = add nsw i32 %76, 4864
  %78 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %75, i32 %77, i32 1)
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %80 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %81 = add nsw i32 %80, 0
  %82 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %79, i32 %81, i32 0)
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %84 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %85 = add nsw i32 %84, 8
  %86 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %83, i32 %85, i32 0)
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %88 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %89 = add nsw i32 %88, 16
  %90 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %87, i32 %89, i32 0)
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %92 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %93 = add nsw i32 %92, 24
  %94 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %91, i32 %93, i32 0)
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %96 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %97 = add nsw i32 %96, 256
  %98 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %95, i32 %97, i32 0)
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %100 = load i32, i32* @QLA82XX_CRB_TIMER, align 4
  %101 = add nsw i32 %100, 512
  %102 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %99, i32 %101, i32 0)
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %104 = load i32, i32* @QLA82XX_CRB_PEG_NET_0, align 4
  %105 = add nsw i32 %104, 60
  %106 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %103, i32 %105, i32 1)
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %108 = load i32, i32* @QLA82XX_CRB_PEG_NET_1, align 4
  %109 = add nsw i32 %108, 60
  %110 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %107, i32 %109, i32 1)
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %112 = load i32, i32* @QLA82XX_CRB_PEG_NET_2, align 4
  %113 = add nsw i32 %112, 60
  %114 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %111, i32 %113, i32 1)
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %116 = load i32, i32* @QLA82XX_CRB_PEG_NET_3, align 4
  %117 = add nsw i32 %116, 60
  %118 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %115, i32 %117, i32 1)
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %120 = load i32, i32* @QLA82XX_CRB_PEG_NET_4, align 4
  %121 = add nsw i32 %120, 60
  %122 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %119, i32 %121, i32 1)
  %123 = call i32 @msleep(i32 5)
  %124 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %1
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %131 = load i64, i64* @QLA82XX_ROMUSB_GLB_SW_RESET, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %130, i32 %132, i32 -16777217)
  br label %139

134:                                              ; preds = %1
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %136 = load i64, i64* @QLA82XX_ROMUSB_GLB_SW_RESET, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %135, i32 %137, i32 -1)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %141 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %140)
  %142 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %143 = call i64 (%struct.qla_hw_data*, i32, ...) @qla82xx_rom_fast_read(%struct.qla_hw_data* %142, i32 0, i32* %10)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = icmp ne i64 %147, 3405695742
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %151 = call i64 (%struct.qla_hw_data*, i32, ...) @qla82xx_rom_fast_read(%struct.qla_hw_data* %150, i32 4, i32* %10)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149, %145, %139
  %154 = load i32, i32* @ql_log_fatal, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %154, %struct.TYPE_4__* %155, i32 110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %156)
  store i32 -1, i32* %2, align 4
  br label %371

158:                                              ; preds = %149
  %159 = load i32, i32* %10, align 4
  %160 = and i32 %159, 65535
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 65535
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp uge i32 %164, 1024
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i32, i32* @ql_log_fatal, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %167, %struct.TYPE_4__* %168, i32 113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  store i32 -1, i32* %2, align 4
  br label %371

171:                                              ; preds = %158
  %172 = load i32, i32* @ql_log_info, align 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %172, %struct.TYPE_4__* %173, i32 114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = zext i32 %176 to i64
  %178 = mul i64 %177, 8
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call %struct.crb_addr_pair* @kmalloc(i32 %179, i32 %180)
  store %struct.crb_addr_pair* %181, %struct.crb_addr_pair** %7, align 8
  %182 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %183 = icmp eq %struct.crb_addr_pair* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i32, i32* @ql_log_fatal, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %185, %struct.TYPE_4__* %186, i32 268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %371

188:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %228, %188
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %231

193:                                              ; preds = %189
  %194 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %195 = load i32, i32* %6, align 4
  %196 = mul nsw i32 8, %195
  %197 = load i32, i32* %9, align 4
  %198 = mul i32 4, %197
  %199 = add i32 %196, %198
  %200 = call i64 (%struct.qla_hw_data*, i32, ...) @qla82xx_rom_fast_read(%struct.qla_hw_data* %194, i32 %199, i32* %5)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %193
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %204 = load i32, i32* %6, align 4
  %205 = mul nsw i32 8, %204
  %206 = load i32, i32* %9, align 4
  %207 = mul i32 4, %206
  %208 = add i32 %205, %207
  %209 = add i32 %208, 4
  %210 = call i64 (%struct.qla_hw_data*, i32, ...) @qla82xx_rom_fast_read(%struct.qla_hw_data* %203, i32 %209, i32* %4)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %202, %193
  %213 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %214 = call i32 @kfree(%struct.crb_addr_pair* %213)
  store i32 -1, i32* %2, align 4
  br label %371

215:                                              ; preds = %202
  %216 = load i32, i32* %4, align 4
  %217 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %217, i64 %219
  %221 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %220, i32 0, i32 0
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %223, i64 %225
  %227 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %226, i32 0, i32 1
  store i32 %222, i32* %227, align 4
  br label %228

228:                                              ; preds = %215
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %189

231:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %321, %231
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp ult i32 %233, %234
  br i1 %235, label %236, label %324

236:                                              ; preds = %232
  %237 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %237, i64 %239
  %241 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = call i64 @qla82xx_decode_crb_addr(i64 %243)
  %245 = load i64, i64* @QLA82XX_PCI_CRBSPACE, align 8
  %246 = add i64 %244, %245
  store i64 %246, i64* %8, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i64 @QLA82XX_CAM_RAM(i32 508)
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %236
  br label %321

251:                                              ; preds = %236
  %252 = load i64, i64* %8, align 8
  %253 = load i32, i32* @ROMUSB_GLB, align 4
  %254 = add nsw i32 %253, 188
  %255 = sext i32 %254 to i64
  %256 = icmp eq i64 %252, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %321

258:                                              ; preds = %251
  %259 = load i64, i64* %8, align 8
  %260 = load i32, i32* @ROMUSB_GLB, align 4
  %261 = add nsw i32 %260, 200
  %262 = sext i32 %261 to i64
  %263 = icmp eq i64 %259, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %321

265:                                              ; preds = %258
  %266 = load i64, i64* %8, align 8
  %267 = load i32, i32* @PCIE_SETUP_FUNCTION, align 4
  %268 = call i64 @QLA82XX_PCIE_REG(i32 %267)
  %269 = icmp eq i64 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %321

271:                                              ; preds = %265
  %272 = load i64, i64* %8, align 8
  %273 = load i32, i32* @PCIE_SETUP_FUNCTION2, align 4
  %274 = call i64 @QLA82XX_PCIE_REG(i32 %273)
  %275 = icmp eq i64 %272, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %321

277:                                              ; preds = %271
  %278 = load i64, i64* %8, align 8
  %279 = and i64 %278, 267386880
  %280 = load i64, i64* @QLA82XX_CRB_SMB, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %321

283:                                              ; preds = %277
  %284 = load i64, i64* %8, align 8
  %285 = and i64 %284, 267386880
  %286 = load i64, i64* @QLA82XX_CRB_DDR_NET, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %321

289:                                              ; preds = %283
  %290 = load i64, i64* %8, align 8
  %291 = load i64, i64* @ADDR_ERROR, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = load i32, i32* @ql_log_fatal, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %296 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %296, i64 %298
  %300 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i32, %struct.TYPE_4__*, i32, i8*, ...) @ql_log(i32 %294, %struct.TYPE_4__* %295, i32 278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %301)
  br label %321

303:                                              ; preds = %289
  %304 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %305 = load i64, i64* %8, align 8
  %306 = trunc i64 %305 to i32
  %307 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %307, i64 %309
  %311 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %304, i32 %306, i32 %312)
  %314 = load i64, i64* %8, align 8
  %315 = load i64, i64* @QLA82XX_ROMUSB_GLB_SW_RESET, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %303
  %318 = call i32 @msleep(i32 1000)
  br label %319

319:                                              ; preds = %317, %303
  %320 = call i32 @msleep(i32 1)
  br label %321

321:                                              ; preds = %319, %293, %288, %282, %276, %270, %264, %257, %250
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %6, align 4
  br label %232

324:                                              ; preds = %232
  %325 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %7, align 8
  %326 = call i32 @kfree(%struct.crb_addr_pair* %325)
  %327 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %328 = load i32, i32* @QLA82XX_CRB_PEG_NET_D, align 4
  %329 = add nsw i32 %328, 236
  %330 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %327, i32 %329, i32 30)
  %331 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %332 = load i32, i32* @QLA82XX_CRB_PEG_NET_D, align 4
  %333 = add nsw i32 %332, 76
  %334 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %331, i32 %333, i32 8)
  %335 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %336 = load i32, i32* @QLA82XX_CRB_PEG_NET_I, align 4
  %337 = add nsw i32 %336, 76
  %338 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %335, i32 %337, i32 8)
  %339 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %340 = load i32, i32* @QLA82XX_CRB_PEG_NET_0, align 4
  %341 = add nsw i32 %340, 8
  %342 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %339, i32 %341, i32 0)
  %343 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %344 = load i32, i32* @QLA82XX_CRB_PEG_NET_0, align 4
  %345 = add nsw i32 %344, 12
  %346 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %343, i32 %345, i32 0)
  %347 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %348 = load i32, i32* @QLA82XX_CRB_PEG_NET_1, align 4
  %349 = add nsw i32 %348, 8
  %350 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %347, i32 %349, i32 0)
  %351 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %352 = load i32, i32* @QLA82XX_CRB_PEG_NET_1, align 4
  %353 = add nsw i32 %352, 12
  %354 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %351, i32 %353, i32 0)
  %355 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %356 = load i32, i32* @QLA82XX_CRB_PEG_NET_2, align 4
  %357 = add nsw i32 %356, 8
  %358 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %355, i32 %357, i32 0)
  %359 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %360 = load i32, i32* @QLA82XX_CRB_PEG_NET_2, align 4
  %361 = add nsw i32 %360, 12
  %362 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %359, i32 %361, i32 0)
  %363 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %364 = load i32, i32* @QLA82XX_CRB_PEG_NET_3, align 4
  %365 = add nsw i32 %364, 8
  %366 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %363, i32 %365, i32 0)
  %367 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  %368 = load i32, i32* @QLA82XX_CRB_PEG_NET_3, align 4
  %369 = add nsw i32 %368, 12
  %370 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %367, i32 %369, i32 0)
  store i32 0, i32* %2, align 4
  br label %371

371:                                              ; preds = %324, %212, %184, %166, %153
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @qla82xx_rom_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_rom_fast_read(%struct.qla_hw_data*, i32, ...) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local %struct.crb_addr_pair* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.crb_addr_pair*) #1

declare dso_local i64 @qla82xx_decode_crb_addr(i64) #1

declare dso_local i64 @QLA82XX_CAM_RAM(i32) #1

declare dso_local i64 @QLA82XX_PCIE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
