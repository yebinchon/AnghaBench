; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_flash_upgrade.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_flash_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"solos-FPGA.bin\00", align 1
@FPGA_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"solos-Firmware.bin\00", align 1
@SOLOS_BLOCK = common dso_local global i32 0, align 4
@LEGACY_BUFFERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"solos-db-FPGA.bin\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"FPGA version doesn't support daughter board upgrades\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Flash upgrade starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Firmware size: %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Number of blocks: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Changing FPGA to Update mode\0A\00", align 1
@FPGA_MODE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"Set FPGA Flash mode to FPGA Chip Erase\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Set FPGA Flash mode to Solos Chip Erase\0A\00", align 1
@FLASH_MODE = common dso_local global i64 0, align 8
@WRITE_FLASH = common dso_local global i64 0, align 8
@FLASH_BUSY = common dso_local global i64 0, align 8
@FLASH_BUF = common dso_local global i64 0, align 8
@FLASH_BLOCK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"Returning FPGA to Data mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, i32)* @flash_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_upgrade(%struct.solos_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solos_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.solos_card* %0, %struct.solos_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %17 = load i32, i32* @FPGA_BLOCK, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %22 = load i32, i32* @SOLOS_BLOCK, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %28 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LEGACY_BUFFERS, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %33 = load i32, i32* @FPGA_BLOCK, align 4
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %26
  %35 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %36 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %288

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %48 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LEGACY_BUFFERS, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %53 = load i32, i32* @SOLOS_BLOCK, align 4
  store i32 %53, i32* %9, align 4
  br label %62

54:                                               ; preds = %46
  %55 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %56 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_info(i32* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %288

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %66 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i64 @request_firmware(%struct.firmware** %6, i8* %64, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %288

74:                                               ; preds = %63
  %75 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %76 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_info(i32* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.firmware*, %struct.firmware** %6, align 8
  %81 = getelementptr inbounds %struct.firmware, %struct.firmware* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %86 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.firmware*, %struct.firmware** %6, align 8
  %90 = getelementptr inbounds %struct.firmware, %struct.firmware* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32*, i8*, ...) @dev_info(i32* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %94 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_info(i32* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %100 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_info(i32* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %104 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %105 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FPGA_MODE, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @iowrite32(i32 1, i64 %108)
  %110 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %111 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FPGA_MODE, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @ioread32(i64 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %74
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %127

121:                                              ; preds = %118, %74
  %122 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %123 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_info(i32* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121, %118
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %139

133:                                              ; preds = %130, %127
  %134 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %135 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_info(i32* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 %140, 2
  %142 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %143 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FLASH_MODE, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @iowrite32(i32 %141, i64 %146)
  %148 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %149 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @WRITE_FLASH, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @iowrite32(i32 1, i64 %152)
  %154 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %155 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %158 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FLASH_BUSY, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @ioread32(i64 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @wait_event(i32 %156, i32 %165)
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %258, %139
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.firmware*, %struct.firmware** %6, align 8
  %170 = getelementptr inbounds %struct.firmware, %struct.firmware* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %262

173:                                              ; preds = %167
  %174 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %175 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WRITE_FLASH, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @iowrite32(i32 0, i64 %178)
  %180 = load i32, i32* %5, align 4
  %181 = mul nsw i32 %180, 2
  %182 = add nsw i32 %181, 1
  %183 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %184 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @FLASH_MODE, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @iowrite32(i32 %182, i64 %187)
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %226, %173
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %229

193:                                              ; preds = %189
  %194 = load %struct.firmware*, %struct.firmware** %6, align 8
  %195 = getelementptr inbounds %struct.firmware, %struct.firmware* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = inttoptr i64 %202 to i32*
  %204 = call i32 @swahb32p(i32* %203)
  store i32 %204, i32* %13, align 4
  %205 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %206 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @LEGACY_BUFFERS, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %193
  %211 = load i32, i32* %13, align 4
  %212 = load i64, i64* @FLASH_BUF, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %212, %214
  %216 = call i32 @iowrite32(i32 %211, i64 %215)
  br label %225

217:                                              ; preds = %193
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %220 = call i64 @RX_BUF(%struct.solos_card* %219, i32 3)
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  %224 = call i32 @iowrite32(i32 %218, i64 %223)
  br label %225

225:                                              ; preds = %217, %210
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 4
  store i32 %228, i32* %12, align 4
  br label %189

229:                                              ; preds = %189
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %9, align 4
  %232 = sdiv i32 %230, %231
  %233 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %234 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @FLASH_BLOCK, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @iowrite32(i32 %232, i64 %237)
  %239 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %240 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @WRITE_FLASH, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @iowrite32(i32 1, i64 %243)
  %245 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %246 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %249 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @FLASH_BUSY, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @ioread32(i64 %252)
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i32 @wait_event(i32 %247, i32 %256)
  br label %258

258:                                              ; preds = %229
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %11, align 4
  br label %167

262:                                              ; preds = %167
  %263 = load %struct.firmware*, %struct.firmware** %6, align 8
  %264 = call i32 @release_firmware(%struct.firmware* %263)
  %265 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %266 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @WRITE_FLASH, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @iowrite32(i32 0, i64 %269)
  %271 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %272 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @FPGA_MODE, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @iowrite32(i32 0, i64 %275)
  %277 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %278 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @FLASH_MODE, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @iowrite32(i32 0, i64 %281)
  %283 = load %struct.solos_card*, %struct.solos_card** %4, align 8
  %284 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %283, i32 0, i32 1
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = call i32 (i32*, i8*, ...) @dev_info(i32* %286, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %288

288:                                              ; preds = %262, %71, %54, %34
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @swahb32p(i32*) #1

declare dso_local i64 @RX_BUF(%struct.solos_card*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
