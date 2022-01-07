; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_nvmd_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_nvmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__, %struct.pm8001_ccb_info*, %struct.inbound_queue_table* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pm8001_ccb_info = type { i64, %struct.fw_control_ex* }
%struct.fw_control_ex = type { i32 }
%struct.inbound_queue_table = type { i32 }
%struct.set_nvm_data_req = type { i8*, i8*, i8**, i8*, i8*, i8* }
%struct.pm8001_ioctl_payload = type { i64, i32, i32 }

@OPC_INB_SET_NVMD_DATA = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMD = common dso_local global i64 0, align 8
@IPMode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_set_nvmd_req(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pm8001_ccb_info*, align 8
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca %struct.set_nvm_data_req, align 8
  %13 = alloca %struct.fw_control_ex*, align 8
  %14 = alloca %struct.pm8001_ioctl_payload*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i64, i64* @OPC_INB_SET_NVMD_DATA, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %19, %struct.pm8001_ioctl_payload** %14, align 8
  %20 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %21 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fw_control_ex* @kzalloc(i32 4, i32 %23)
  store %struct.fw_control_ex* %24, %struct.fw_control_ex** %13, align 8
  %25 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %26 = icmp ne %struct.fw_control_ex* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %228

30:                                               ; preds = %2
  %31 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %32 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %31, i32 0, i32 2
  %33 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %32, align 8
  %34 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %33, i64 0
  store %struct.inbound_queue_table* %34, %struct.inbound_queue_table** %11, align 8
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* @NVMD, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %44 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %43, i32 0, i32 2
  %45 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %46 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %42, i32* %44, i32 %47)
  %49 = call i32 @memset(%struct.set_nvm_data_req* %12, i32 0, i32 48)
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %51 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %50, i64* %9)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %30
  %55 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %56 = call i32 @kfree(%struct.fw_control_ex* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %228

58:                                               ; preds = %30
  %59 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %60 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %59, i32 0, i32 1
  %61 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %61, i64 %62
  store %struct.pm8001_ccb_info* %63, %struct.pm8001_ccb_info** %10, align 8
  %64 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %65 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %66 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %65, i32 0, i32 1
  store %struct.fw_control_ex* %64, %struct.fw_control_ex** %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %69 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 5
  store i8* %72, i8** %73, align 8
  %74 = load i64, i64* %7, align 8
  switch i64 %74, label %221 [
    i64 129, label %75
    i64 131, label %116
    i64 128, label %151
    i64 130, label %186
  ]

75:                                               ; preds = %58
  store i64 168, i64* %15, align 8
  store i64 2, i64* %16, align 8
  %76 = call i8* @cpu_to_le32(i32 -19088744)
  %77 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %76, i8** %79, align 8
  %80 = load i64, i64* @IPMode, align 8
  %81 = load i64, i64* %15, align 8
  %82 = shl i64 %81, 16
  %83 = or i64 %80, %82
  %84 = load i64, i64* %16, align 8
  %85 = shl i64 %84, 8
  %86 = or i64 %83, %85
  %87 = or i64 %86, 129
  %88 = trunc i64 %87 to i32
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %89, i8** %90, align 8
  %91 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %92 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %94, i8** %95, align 8
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %97 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i64, i64* @NVMD, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %107 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @NVMD, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  br label %222

116:                                              ; preds = %58
  %117 = load i64, i64* @IPMode, align 8
  %118 = or i64 %117, 131
  %119 = trunc i64 %118 to i32
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %120, i8** %121, align 8
  %122 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %123 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %125, i8** %126, align 8
  %127 = call i8* @cpu_to_le32(i32 -19088744)
  %128 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  store i8* %127, i8** %130, align 8
  %131 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %132 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* @NVMD, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %142 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i64, i64* @NVMD, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  br label %222

151:                                              ; preds = %58
  %152 = load i64, i64* @IPMode, align 8
  %153 = or i64 %152, 128
  %154 = trunc i64 %153 to i32
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %155, i8** %156, align 8
  %157 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %158 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %160, i8** %161, align 8
  %162 = call i8* @cpu_to_le32(i32 -19088744)
  %163 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  store i8* %162, i8** %165, align 8
  %166 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %167 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i64, i64* @NVMD, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %177 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = load i64, i64* @NVMD, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @cpu_to_le32(i32 %183)
  %185 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %184, i8** %185, align 8
  br label %222

186:                                              ; preds = %58
  %187 = load i64, i64* @IPMode, align 8
  %188 = or i64 %187, 130
  %189 = trunc i64 %188 to i32
  %190 = call i8* @cpu_to_le32(i32 %189)
  %191 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 4
  store i8* %190, i8** %191, align 8
  %192 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %193 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @cpu_to_le32(i32 %194)
  %196 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 3
  store i8* %195, i8** %196, align 8
  %197 = call i8* @cpu_to_le32(i32 -19088744)
  %198 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 2
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  store i8* %197, i8** %200, align 8
  %201 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %202 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i64, i64* @NVMD, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 1
  store i8* %209, i8** %210, align 8
  %211 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %212 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = load i64, i64* @NVMD, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @cpu_to_le32(i32 %218)
  %220 = getelementptr inbounds %struct.set_nvm_data_req, %struct.set_nvm_data_req* %12, i32 0, i32 0
  store i8* %219, i8** %220, align 8
  br label %222

221:                                              ; preds = %58
  br label %222

222:                                              ; preds = %221, %186, %151, %116, %75
  %223 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %224 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %225 = load i64, i64* %6, align 8
  %226 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %223, %struct.inbound_queue_table* %224, i64 %225, %struct.set_nvm_data_req* %12, i32 0)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %222, %54, %27
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.fw_control_ex* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.set_nvm_data_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @kfree(%struct.fw_control_ex*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.set_nvm_data_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
