; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flt_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_get_flt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.ql82xx_hw_data }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla_flt_header = type { i64, i64, i64 }
%struct.qla_flt_region = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@__const.qla4_8xxx_get_flt_info.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"FLT[%02x]: start=0x%x end=0x%x size=0x%x.\0A\00", align 1
@FA_FLASH_DESCR_ADDR_82 = common dso_local global i32 0, align 4
@FA_BOOT_CODE_ADDR_82 = common dso_local global i32 0, align 4
@FA_BOOT_LOAD_ADDR_82 = common dso_local global i32 0, align 4
@FA_RISC_CODE_ADDR_82 = common dso_local global i32 0, align 4
@FA_FLASH_ISCSI_CHAP = common dso_local global i32 0, align 4
@FA_FLASH_CHAP_SIZE = common dso_local global i32 0, align 4
@FA_FLASH_ISCSI_DDB = common dso_local global i32 0, align 4
@FA_FLASH_DDB_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [109 x i8] c"FLT[%s]: flt=0x%x fdt=0x%x boot=0x%x bootload=0x%x fw=0x%x chap=0x%x chap_size=0x%x ddb=0x%x  ddb_size=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32)* @qla4_8xxx_get_flt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_8xxx_get_flt_info(%struct.scsi_qla_host* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qla_flt_header*, align 8
  %13 = alloca %struct.qla_flt_region*, align 8
  %14 = alloca %struct.ql82xx_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([2 x i8*]* @__const.qla4_8xxx_get_flt_info.locations to i8*), i64 16, i1 false)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 1
  store %struct.ql82xx_hw_data* %17, %struct.ql82xx_hw_data** %14, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %20 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %7, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.qla_flt_header*
  store %struct.qla_flt_header* %28, %struct.qla_flt_header** %12, align 8
  %29 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %30 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %29, i64 1
  %31 = bitcast %struct.qla_flt_header* %30 to %struct.qla_flt_region*
  store %struct.qla_flt_region* %31, %struct.qla_flt_region** %13, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %33 = call i64 @is_qla8022(%struct.scsi_qla_host* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %44 = call i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host* %36, i32* %40, i32 %42, i32 %43)
  br label %64

45:                                               ; preds = %2
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %47 = call i64 @is_qla8032(%struct.scsi_qla_host* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 2
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @qla4_83xx_flash_read_u32(%struct.scsi_qla_host* %50, i32 %52, i32* %56, i32 1024)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @QLA_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %220

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @__constant_cpu_to_le16(i32 65535)
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %220

70:                                               ; preds = %64
  %71 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %72 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @__constant_cpu_to_le16(i32 1)
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %79 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %80 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le16_to_cpu(i64 %81)
  %83 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %84 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @le16_to_cpu(i64 %85)
  %87 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %88 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @le16_to_cpu(i64 %89)
  %91 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %77, %struct.scsi_qla_host* %78, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %86, i32 %90)
  %92 = call i32 @DEBUG2(i32 %91)
  br label %220

93:                                               ; preds = %70
  %94 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %95 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le16_to_cpu(i64 %96)
  %98 = sext i32 %97 to i64
  %99 = add i64 24, %98
  %100 = lshr i64 %99, 1
  store i64 %100, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %101

101:                                              ; preds = %112, %93
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i64*, i64** %7, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %7, align 8
  %107 = load i64, i64* %105, align 8
  %108 = call i32 @le16_to_cpu(i64 %107)
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %9, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %8, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %8, align 8
  br label %101

115:                                              ; preds = %101
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load i32, i32* @KERN_INFO, align 4
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %121 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %122 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @le16_to_cpu(i64 %123)
  %125 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %126 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @le16_to_cpu(i64 %127)
  %129 = load i64, i64* %9, align 8
  %130 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %119, %struct.scsi_qla_host* %120, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %128, i64 %129)
  %131 = call i32 @DEBUG2(i32 %130)
  br label %220

132:                                              ; preds = %115
  %133 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %5, align 8
  %135 = load %struct.qla_flt_header*, %struct.qla_flt_header** %12, align 8
  %136 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @le16_to_cpu(i64 %137)
  %139 = sext i32 %138 to i64
  %140 = udiv i64 %139, 16
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %214, %132
  %142 = load i64, i64* %8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %219

144:                                              ; preds = %141
  %145 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %146 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = ashr i32 %148, 2
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* @KERN_DEBUG, align 4
  %151 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %152 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %153 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %158 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le32_to_cpu(i32 %159)
  %161 = ashr i32 %160, 2
  %162 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %163 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  %166 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %150, %struct.scsi_qla_host* %151, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %156, i32 %161, i32 %165)
  %167 = call i32 @DEBUG3(i32 %166)
  %168 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %169 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @le32_to_cpu(i32 %170)
  %172 = and i32 %171, 255
  switch i32 %172, label %213 [
    i32 133, label %173
    i32 134, label %177
    i32 132, label %181
    i32 131, label %181
    i32 135, label %185
    i32 128, label %189
    i32 130, label %193
    i32 129, label %203
  ]

173:                                              ; preds = %144
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %176 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %213

177:                                              ; preds = %144
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %180 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  br label %213

181:                                              ; preds = %144, %144
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %184 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  br label %213

185:                                              ; preds = %144
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %188 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  br label %213

189:                                              ; preds = %144
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %192 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  br label %213

193:                                              ; preds = %144
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %196 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 4
  %197 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %198 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @le32_to_cpu(i32 %199)
  %201 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %202 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 4
  br label %213

203:                                              ; preds = %144
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %206 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 4
  %207 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %208 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @le32_to_cpu(i32 %209)
  %211 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %212 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %144, %203, %193, %189, %185, %181, %177, %173
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %8, align 8
  %216 = add nsw i64 %215, -1
  store i64 %216, i64* %8, align 8
  %217 = load %struct.qla_flt_region*, %struct.qla_flt_region** %13, align 8
  %218 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %217, i32 1
  store %struct.qla_flt_region* %218, %struct.qla_flt_region** %13, align 8
  br label %141

219:                                              ; preds = %141
  br label %249

220:                                              ; preds = %118, %76, %69, %61
  %221 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %222 = load i8*, i8** %221, align 16
  store i8* %222, i8** %5, align 8
  %223 = load i32, i32* @FA_FLASH_DESCR_ADDR_82, align 4
  %224 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %225 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @FA_BOOT_CODE_ADDR_82, align 4
  %227 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %228 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @FA_BOOT_LOAD_ADDR_82, align 4
  %230 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %231 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @FA_RISC_CODE_ADDR_82, align 4
  %233 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %234 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @FA_FLASH_ISCSI_CHAP, align 4
  %236 = ashr i32 %235, 2
  %237 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %238 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* @FA_FLASH_CHAP_SIZE, align 4
  %240 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %241 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %240, i32 0, i32 7
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @FA_FLASH_ISCSI_DDB, align 4
  %243 = ashr i32 %242, 2
  %244 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %245 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @FA_FLASH_DDB_SIZE, align 4
  %247 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %248 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %247, i32 0, i32 9
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %220, %219
  %250 = load i32, i32* @KERN_INFO, align 4
  %251 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %252 = load i8*, i8** %5, align 8
  %253 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %254 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %257 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %260 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %263 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %266 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %269 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %272 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %275 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ql82xx_hw_data*, %struct.ql82xx_hw_data** %14, align 8
  %278 = getelementptr inbounds %struct.ql82xx_hw_data, %struct.ql82xx_hw_data* %277, i32 0, i32 9
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %250, %struct.scsi_qla_host* %251, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i8* %252, i32 %255, i32 %258, i32 %261, i32 %264, i32 %267, i32 %270, i32 %273, i32 %276, i32 %279)
  %281 = call i32 @DEBUG2(i32 %280)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #2

declare dso_local i32 @qla4_82xx_read_optrom_data(%struct.scsi_qla_host*, i32*, i32, i32) #2

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #2

declare dso_local i32 @qla4_83xx_flash_read_u32(%struct.scsi_qla_host*, i32, i32*, i32) #2

declare dso_local i64 @__constant_cpu_to_le16(i32) #2

declare dso_local i32 @DEBUG2(i32) #2

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #2

declare dso_local i32 @le16_to_cpu(i64) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @DEBUG3(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
