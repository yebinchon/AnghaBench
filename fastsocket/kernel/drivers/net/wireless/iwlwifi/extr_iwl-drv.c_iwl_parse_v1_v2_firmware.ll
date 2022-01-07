; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_parse_v1_v2_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_parse_v1_v2_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.firmware = type { i32, i64 }
%struct.iwl_firmware_pieces = type { i32 }
%struct.iwl_ucode_header = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"File size too small!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_INST = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_DATA = common dso_local global i32 0, align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" build %u%s\00", align 1
@UCODE_EXPERIMENTAL_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c" (EXP)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%u.%u.%u.%u%s\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"uCode file size %d does not match expected size\0A\00", align 1
@IWLAGN_RTC_INST_LOWER_BOUND = common dso_local global i32 0, align 4
@IWLAGN_RTC_DATA_LOWER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, %struct.firmware*, %struct.iwl_firmware_pieces*)* @iwl_parse_v1_v2_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_parse_v1_v2_firmware(%struct.iwl_drv* %0, %struct.firmware* %1, %struct.iwl_firmware_pieces* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_drv*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.iwl_firmware_pieces*, align 8
  %8 = alloca %struct.iwl_ucode_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [25 x i8], align 16
  %13 = alloca i32*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.iwl_firmware_pieces* %2, %struct.iwl_firmware_pieces** %7, align 8
  %14 = load %struct.firmware*, %struct.firmware** %6, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_ucode_header*
  store %struct.iwl_ucode_header* %18, %struct.iwl_ucode_header** %8, align 8
  %19 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @IWL_UCODE_API(i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %32 [
    i32 0, label %96
    i32 1, label %96
    i32 2, label %96
  ]

32:                                               ; preds = %3
  store i32 28, i32* %10, align 4
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %40 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %298

43:                                               ; preds = %32
  %44 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %52 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %53 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %54 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %51, i32 %52, i32 %53, i8* %59)
  %61 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %62 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %63 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %64 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %61, i32 %62, i32 %63, i8* %69)
  %71 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %72 = load i32, i32* @IWL_UCODE_INIT, align 4
  %73 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %74 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le32_to_cpu(i32 %78)
  %80 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %71, i32 %72, i32 %73, i8* %79)
  %81 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %82 = load i32, i32* @IWL_UCODE_INIT, align 4
  %83 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %84 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %85 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %81, i32 %82, i32 %83, i8* %89)
  %91 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %92 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %13, align 8
  br label %153

96:                                               ; preds = %3, %3, %3
  store i32 24, i32* %10, align 4
  %97 = load %struct.firmware*, %struct.firmware** %6, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %104 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %298

107:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  %108 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %109 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %110 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %111 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %112 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le32_to_cpu(i32 %115)
  %117 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %108, i32 %109, i32 %110, i8* %116)
  %118 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %119 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %120 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %121 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @le32_to_cpu(i32 %125)
  %127 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %118, i32 %119, i32 %120, i8* %126)
  %128 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %129 = load i32, i32* @IWL_UCODE_INIT, align 4
  %130 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %131 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %132 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %128, i32 %129, i32 %130, i8* %136)
  %138 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %139 = load i32, i32* @IWL_UCODE_INIT, align 4
  %140 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %141 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %142 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @le32_to_cpu(i32 %145)
  %147 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %138, i32 %139, i32 %140, i8* %146)
  %148 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %149 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %13, align 8
  br label %153

153:                                              ; preds = %107, %43
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %160 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @UCODE_EXPERIMENTAL_INDEX, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %166 = call i32 @sprintf(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %158, i8* %165)
  br label %169

167:                                              ; preds = %153
  %168 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %168, align 16
  br label %169

169:                                              ; preds = %167, %156
  %170 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %171 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %175 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @IWL_UCODE_MAJOR(i8* %177)
  %179 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %180 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @IWL_UCODE_MINOR(i8* %182)
  %184 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %185 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @IWL_UCODE_API(i8* %187)
  %189 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %190 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @IWL_UCODE_SERIAL(i8* %192)
  %194 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %195 = call i32 @snprintf(i32 %173, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %183, i32 %188, i32 %193, i8* %194)
  %196 = load %struct.firmware*, %struct.firmware** %6, align 8
  %197 = getelementptr inbounds %struct.firmware, %struct.firmware* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %201 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %202 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %203 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %200, i32 %201, i32 %202)
  %204 = add nsw i32 %199, %203
  %205 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %206 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %207 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %208 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %205, i32 %206, i32 %207)
  %209 = add nsw i32 %204, %208
  %210 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %211 = load i32, i32* @IWL_UCODE_INIT, align 4
  %212 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %213 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %210, i32 %211, i32 %212)
  %214 = add nsw i32 %209, %213
  %215 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %216 = load i32, i32* @IWL_UCODE_INIT, align 4
  %217 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %218 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %215, i32 %216, i32 %217)
  %219 = add nsw i32 %214, %218
  %220 = icmp ne i32 %198, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %169
  %222 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %223 = load %struct.firmware*, %struct.firmware** %6, align 8
  %224 = getelementptr inbounds %struct.firmware, %struct.firmware* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %222, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %298

229:                                              ; preds = %169
  %230 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %231 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %232 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %233 = load i32*, i32** %13, align 8
  %234 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %230, i32 %231, i32 %232, i32* %233)
  %235 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %236 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %237 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %238 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %235, i32 %236, i32 %237)
  %239 = load i32*, i32** %13, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %13, align 8
  %242 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %243 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %244 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %245 = load i32, i32* @IWLAGN_RTC_INST_LOWER_BOUND, align 4
  %246 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %242, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %248 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %249 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %250 = load i32*, i32** %13, align 8
  %251 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %247, i32 %248, i32 %249, i32* %250)
  %252 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %253 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %254 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %255 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %252, i32 %253, i32 %254)
  %256 = load i32*, i32** %13, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %13, align 8
  %259 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %260 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %261 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %262 = load i32, i32* @IWLAGN_RTC_DATA_LOWER_BOUND, align 4
  %263 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %259, i32 %260, i32 %261, i32 %262)
  %264 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %265 = load i32, i32* @IWL_UCODE_INIT, align 4
  %266 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %267 = load i32*, i32** %13, align 8
  %268 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %264, i32 %265, i32 %266, i32* %267)
  %269 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %270 = load i32, i32* @IWL_UCODE_INIT, align 4
  %271 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %272 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %269, i32 %270, i32 %271)
  %273 = load i32*, i32** %13, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %13, align 8
  %276 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %277 = load i32, i32* @IWL_UCODE_INIT, align 4
  %278 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %279 = load i32, i32* @IWLAGN_RTC_INST_LOWER_BOUND, align 4
  %280 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %276, i32 %277, i32 %278, i32 %279)
  %281 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %282 = load i32, i32* @IWL_UCODE_INIT, align 4
  %283 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %284 = load i32*, i32** %13, align 8
  %285 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %281, i32 %282, i32 %283, i32* %284)
  %286 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %287 = load i32, i32* @IWL_UCODE_INIT, align 4
  %288 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %289 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %286, i32 %287, i32 %288)
  %290 = load i32*, i32** %13, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  store i32* %292, i32** %13, align 8
  %293 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %294 = load i32, i32* @IWL_UCODE_INIT, align 4
  %295 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %296 = load i32, i32* @IWLAGN_RTC_DATA_LOWER_BOUND, align 4
  %297 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %293, i32 %294, i32 %295, i32 %296)
  store i32 0, i32* %4, align 4
  br label %298

298:                                              ; preds = %229, %221, %102, %38
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_UCODE_API(i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*, ...) #1

declare dso_local i32 @set_sec_size(%struct.iwl_firmware_pieces*, i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @IWL_UCODE_MAJOR(i8*) #1

declare dso_local i32 @IWL_UCODE_MINOR(i8*) #1

declare dso_local i32 @IWL_UCODE_SERIAL(i8*) #1

declare dso_local i32 @get_sec_size(%struct.iwl_firmware_pieces*, i32, i32) #1

declare dso_local i32 @set_sec_data(%struct.iwl_firmware_pieces*, i32, i32, i32*) #1

declare dso_local i32 @set_sec_offset(%struct.iwl_firmware_pieces*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
