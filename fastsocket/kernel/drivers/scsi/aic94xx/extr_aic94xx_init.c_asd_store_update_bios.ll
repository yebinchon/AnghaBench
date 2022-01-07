; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_store_update_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_store_update_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asd_ha_struct = type { i8*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.bios_file_header = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@FLASH_CMD_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FAIL_OUT_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@FAIL_PARAMETERS = common dso_local global i32 0, align 4
@flash_command_table = common dso_local global %struct.TYPE_9__* null, align 8
@FLASH_IN_PROGRESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to load bios image file %s, error %d\0A\00", align 1
@FAIL_OPEN_BIOS_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"The PCI vendor or device id does not match\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"vendor=%x dev=%x sub_vendor=%x sub_dev=%x pci vendor=%x pci dev=%x\0A\00", align 1
@FAIL_CHECK_PCI_ID = common dso_local global i32 0, align 4
@FAIL_FILE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"BIOS file checksum mismatch\0A\00", align 1
@FAIL_CHECK_SUM = common dso_local global i32 0, align 4
@FLASH_CMD_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @asd_store_update_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asd_store_update_bios(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.asd_ha_struct*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bios_file_header, align 8
  %14 = alloca %struct.bios_file_header*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device* %20)
  store %struct.asd_ha_struct* %21, %struct.asd_ha_struct** %10, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* @FLASH_CMD_NONE, align 4
  store i32 %22, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %23, 2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i64 %24, i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @FAIL_OUT_MEMORY, align 4
  store i32 %30, i32* %19, align 4
  br label %300

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @FAIL_PARAMETERS, align 4
  store i32 %42, i32* %19, align 4
  br label %297

43:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FLASH_CMD_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 @memcmp(i32 %59, i8* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %53
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_command_table, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %18, align 4
  br label %76

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %44

76:                                               ; preds = %65, %44
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @FLASH_CMD_NONE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @FAIL_PARAMETERS, align 4
  store i32 %81, i32* %19, align 4
  br label %297

82:                                               ; preds = %76
  %83 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %84 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %19, align 4
  br label %297

91:                                               ; preds = %82
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %93 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %92, i32 0, i32 1
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %96 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = call i32 @request_firmware(%struct.TYPE_8__** %93, i8* %94, i32* %98)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @asd_printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %104)
  %106 = load i32, i32* @FAIL_OPEN_BIOS_FILE, align 4
  store i32 %106, i32* %19, align 4
  br label %297

107:                                              ; preds = %91
  %108 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %109 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = bitcast i64* %112 to %struct.bios_file_header*
  store %struct.bios_file_header* %113, %struct.bios_file_header** %14, align 8
  %114 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %115 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %119 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %118, i32 0, i32 2
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %117, %122
  br i1 %123, label %135, label %124

124:                                              ; preds = %107
  %125 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %126 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %130 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %128, %133
  br i1 %134, label %135, label %187

135:                                              ; preds = %124, %107
  %136 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %137 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %141 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %139, %144
  br i1 %145, label %157, label %146

146:                                              ; preds = %135
  %147 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %148 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %152 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %150, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %146, %135
  %158 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %159 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %160 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %164 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %168 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %172 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %176 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %175, i32 0, i32 2
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %181 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %180, i32 0, i32 2
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %162, i64 %166, i64 %170, i64 %174, i64 %179, i64 %184)
  %186 = load i32, i32* @FAIL_CHECK_PCI_ID, align 4
  store i32 %186, i32* %19, align 4
  br label %292

187:                                              ; preds = %146, %124
  %188 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %189 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %192 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %190, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* @FAIL_FILE_SIZE, align 4
  store i32 %198, i32* %19, align 4
  br label %292

199:                                              ; preds = %187
  store i32 0, i32* %16, align 4
  br label %200

200:                                              ; preds = %220, %199
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %203 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %208 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %207, i32 0, i32 1
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %200

223:                                              ; preds = %200
  %224 = load i32, i32* %17, align 4
  %225 = and i32 %224, 65535
  %226 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %227 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = call i32 (i8*, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* @FAIL_CHECK_SUM, align 4
  store i32 %232, i32* %19, align 4
  br label %292

233:                                              ; preds = %223
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* @FLASH_CMD_UPDATE, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %273

237:                                              ; preds = %233
  %238 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %239 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %240 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %239, i32 0, i32 0
  store i8* %238, i8** %240, align 8
  %241 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %242 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %243 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %242, i32 0, i32 1
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 40
  %248 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %249 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = sub i64 %251, 40
  %253 = trunc i64 %252 to i32
  %254 = call i32 @asd_write_flash_seg(%struct.asd_ha_struct* %241, i64* %247, i32 0, i32 %253)
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %237
  %258 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %259 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %260 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %259, i32 0, i32 1
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i64*, i64** %262, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 40
  %265 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %266 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = sub i64 %268, 40
  %270 = trunc i64 %269 to i32
  %271 = call i32 @asd_verify_flash_seg(%struct.asd_ha_struct* %258, i64* %264, i32 0, i32 %270)
  store i32 %271, i32* %19, align 4
  br label %272

272:                                              ; preds = %257, %237
  br label %291

273:                                              ; preds = %233
  %274 = load i8*, i8** @FLASH_IN_PROGRESS, align 8
  %275 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %276 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %275, i32 0, i32 0
  store i8* %274, i8** %276, align 8
  %277 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %278 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %279 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %278, i32 0, i32 1
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 40
  %284 = load %struct.bios_file_header*, %struct.bios_file_header** %14, align 8
  %285 = getelementptr inbounds %struct.bios_file_header, %struct.bios_file_header* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = sub i64 %287, 40
  %289 = trunc i64 %288 to i32
  %290 = call i32 @asd_verify_flash_seg(%struct.asd_ha_struct* %277, i64* %283, i32 0, i32 %289)
  store i32 %290, i32* %19, align 4
  br label %291

291:                                              ; preds = %273, %272
  br label %292

292:                                              ; preds = %291, %230, %197, %157
  %293 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %294 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %293, i32 0, i32 1
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = call i32 @release_firmware(%struct.TYPE_8__* %295)
  br label %297

297:                                              ; preds = %292, %102, %88, %80, %41
  %298 = load i8*, i8** %11, align 8
  %299 = call i32 @kfree(i8* %298)
  br label %300

300:                                              ; preds = %297, %29
  %301 = load i32, i32* %19, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to i8*
  %304 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %305 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %300
  %309 = load i64, i64* %9, align 8
  store i64 %309, i64* %5, align 8
  br label %314

310:                                              ; preds = %300
  %311 = load i32, i32* %19, align 4
  %312 = sub nsw i32 0, %311
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %5, align 8
  br label %314

314:                                              ; preds = %310, %308
  %315 = load i64, i64* %5, align 8
  ret i64 %315
}

declare dso_local %struct.asd_ha_struct* @dev_to_asd_ha(%struct.device*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_8__**, i8*, i32*) #1

declare dso_local i32 @asd_printk(i8*, i8*, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, ...) #1

declare dso_local i32 @asd_write_flash_seg(%struct.asd_ha_struct*, i64*, i32, i32) #1

declare dso_local i32 @asd_verify_flash_seg(%struct.asd_ha_struct*, i64*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
