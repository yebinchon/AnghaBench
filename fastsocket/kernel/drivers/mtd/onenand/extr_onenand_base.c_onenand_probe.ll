; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32, i32, i32, i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (i64)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 (i32, i64)*, i32 (%struct.mtd_info.0*, i32)* }
%struct.mtd_info.0 = type opaque

@ONENAND_REG_SYS_CFG1 = common dso_local global i64 0, align 8
@ONENAND_SYS_CFG1_SYNC_READ = common dso_local global i32 0, align 4
@ONENAND_SYS_CFG1_SYNC_WRITE = common dso_local global i32 0, align 4
@ONENAND_CMD_READID = common dso_local global i32 0, align 4
@ONENAND_BOOTRAM = common dso_local global i64 0, align 8
@ONENAND_CMD_RESET = common dso_local global i32 0, align 4
@FL_RESETING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ONENAND_REG_MANUFACTURER_ID = common dso_local global i64 0, align 8
@ONENAND_REG_DEVICE_ID = common dso_local global i64 0, align 8
@ONENAND_REG_VERSION_ID = common dso_local global i64 0, align 8
@ONENAND_REG_TECHNOLOGY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ONENAND_REG_DATA_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @onenand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_probe(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.onenand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 6
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %13, align 8
  store %struct.onenand_chip* %14, %struct.onenand_chip** %4, align 8
  %15 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %15, i32 0, i32 0
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %19 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 %17(i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %25 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %24, i32 0, i32 12
  %26 = load i32 (i32, i64)*, i32 (i32, i64)** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ONENAND_SYS_CFG1_SYNC_READ, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @ONENAND_SYS_CFG1_SYNC_WRITE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 11
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 %26(i32 %33, i64 %38)
  %40 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %41 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %40, i32 0, i32 12
  %42 = load i32 (i32, i64)*, i32 (i32, i64)** %41, align 8
  %43 = load i32, i32* @ONENAND_CMD_READID, align 4
  %44 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %45 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 %42(i32 %43, i64 %48)
  %50 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %51 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %50, i32 0, i32 0
  %52 = load i32 (i64)*, i32 (i64)** %51, align 8
  %53 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %54 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %57 = add nsw i64 %55, %56
  %58 = add nsw i64 %57, 0
  %59 = call i32 %52(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %61 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %60, i32 0, i32 0
  %62 = load i32 (i64)*, i32 (i64)** %61, align 8
  %63 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %64 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %67 = add nsw i64 %65, %66
  %68 = add nsw i64 %67, 2
  %69 = call i32 %62(i64 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %71 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %70, i32 0, i32 12
  %72 = load i32 (i32, i64)*, i32 (i32, i64)** %71, align 8
  %73 = load i32, i32* @ONENAND_CMD_RESET, align 4
  %74 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %75 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ONENAND_BOOTRAM, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 %72(i32 %73, i64 %78)
  %80 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %81 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %80, i32 0, i32 13
  %82 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %81, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %84 = bitcast %struct.mtd_info* %83 to %struct.mtd_info.0*
  %85 = load i32, i32* @FL_RESETING, align 4
  %86 = call i32 %82(%struct.mtd_info.0* %84, i32 %85)
  %87 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %88 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %87, i32 0, i32 12
  %89 = load i32 (i32, i64)*, i32 (i32, i64)** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %92 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 %89(i32 %90, i64 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @onenand_check_maf(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %1
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %322

103:                                              ; preds = %1
  %104 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %105 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %104, i32 0, i32 0
  %106 = load i32 (i64)*, i32 (i64)** %105, align 8
  %107 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %108 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %107, i32 0, i32 11
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ONENAND_REG_MANUFACTURER_ID, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 %106(i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %114 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %113, i32 0, i32 0
  %115 = load i32 (i64)*, i32 (i64)** %114, align 8
  %116 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %117 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ONENAND_REG_DEVICE_ID, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 %115(i64 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %123 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %122, i32 0, i32 0
  %124 = load i32 (i64)*, i32 (i64)** %123, align 8
  %125 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %126 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ONENAND_REG_VERSION_ID, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 %124(i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %132 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %131, i32 0, i32 0
  %133 = load i32 (i64)*, i32 (i64)** %132, align 8
  %134 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %135 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ONENAND_REG_TECHNOLOGY, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 %133(i64 %138)
  %140 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %141 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %103
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145, %103
  %150 = load i32, i32* @ENXIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %322

152:                                              ; preds = %145
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @onenand_print_device_info(i32 %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %158 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %161 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @onenand_get_density(i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %165 = call i64 @FLEXONENAND(%struct.onenand_chip* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %200

167:                                              ; preds = %152
  %168 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %169 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %168)
  %170 = icmp ne i64 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 2, i32 1
  %173 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %174 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %176 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 1
  %179 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %180 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %182 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = mul i64 4, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i32 @kzalloc(i32 %187, i32 %188)
  %190 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %191 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %193 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %167
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %322

199:                                              ; preds = %167
  br label %200

200:                                              ; preds = %199, %152
  %201 = load i32, i32* %10, align 4
  %202 = shl i32 16, %201
  %203 = shl i32 %202, 20
  %204 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %205 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 8
  %206 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %207 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %206, i32 0, i32 0
  %208 = load i32 (i64)*, i32 (i64)** %207, align 8
  %209 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %210 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %209, i32 0, i32 11
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ONENAND_REG_DATA_BUFFER_SIZE, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 %208(i64 %213)
  %215 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %216 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %218 = call i64 @ONENAND_IS_MLC(%struct.onenand_chip* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %200
  %221 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %222 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %220, %200
  %226 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %227 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 5
  %230 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %231 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %233 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 6
  %236 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %237 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %239 = call i64 @FLEXONENAND(%struct.onenand_chip* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %225
  %242 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %243 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 1
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %241, %225
  %247 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %248 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @ffs(i32 %249)
  %251 = getelementptr i8, i8* %250, i64 -1
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %254 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 4
  %255 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %256 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @ffs(i32 %257)
  %259 = getelementptr i8, i8* %258, i64 -1
  %260 = ptrtoint i8* %259 to i32
  %261 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %262 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 8
  %263 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %264 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %267 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %265, %268
  %270 = shl i32 1, %269
  %271 = sub nsw i32 %270, 1
  %272 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %273 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 4
  %274 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %275 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %246
  %278 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %279 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %282 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  %285 = ashr i32 %280, %284
  %286 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %287 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %286, i32 0, i32 9
  store i32 %285, i32* %287, align 8
  br label %288

288:                                              ; preds = %277, %246
  %289 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %290 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %293 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %292, i32 0, i32 10
  store i32 %291, i32* %293, align 4
  %294 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %295 = call i64 @FLEXONENAND(%struct.onenand_chip* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %299 = call i32 @flexonenand_get_size(%struct.mtd_info* %298)
  br label %306

300:                                              ; preds = %288
  %301 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %302 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %305 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %304, i32 0, i32 4
  store i32 %303, i32* %305, align 8
  br label %306

306:                                              ; preds = %300, %297
  %307 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %308 = call i32 @onenand_check_features(%struct.mtd_info* %307)
  %309 = load %struct.onenand_chip*, %struct.onenand_chip** %4, align 8
  %310 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %306
  %313 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %314 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = shl i32 %315, 1
  store i32 %316, i32* %314, align 4
  %317 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %318 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 1
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %312, %306
  store i32 0, i32* %2, align 4
  br label %322

322:                                              ; preds = %321, %196, %149, %100
  %323 = load i32, i32* %2, align 4
  ret i32 %323
}

declare dso_local i64 @onenand_check_maf(i32) #1

declare dso_local i32 @onenand_print_device_info(i32, i32) #1

declare dso_local i32 @onenand_get_density(i32) #1

declare dso_local i64 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i64 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @ONENAND_IS_MLC(%struct.onenand_chip*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @flexonenand_get_size(%struct.mtd_info*) #1

declare dso_local i32 @onenand_check_features(%struct.mtd_info*) #1

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
