; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_get_nvmd_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_get_nvmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__, %struct.pm8001_ccb_info*, %struct.inbound_queue_table* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pm8001_ccb_info = type { i64, %struct.fw_control_ex* }
%struct.fw_control_ex = type { i64, i32* }
%struct.inbound_queue_table = type { i32 }
%struct.get_nvm_data_req = type { i8*, i8*, i8*, i8*, i8* }
%struct.pm8001_ioctl_payload = type { i64, i64, i64 }

@OPC_INB_GET_NVMD_DATA = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPMode = common dso_local global i64 0, align 8
@NVMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_get_nvmd_req(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pm8001_ccb_info*, align 8
  %11 = alloca %struct.inbound_queue_table*, align 8
  %12 = alloca %struct.get_nvm_data_req, align 8
  %13 = alloca %struct.fw_control_ex*, align 8
  %14 = alloca %struct.pm8001_ioctl_payload*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i64, i64* @OPC_INB_GET_NVMD_DATA, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %19, %struct.pm8001_ioctl_payload** %14, align 8
  %20 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %21 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fw_control_ex* @kzalloc(i32 16, i32 %23)
  store %struct.fw_control_ex* %24, %struct.fw_control_ex** %13, align 8
  %25 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %26 = icmp ne %struct.fw_control_ex* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %204

30:                                               ; preds = %2
  %31 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %32 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %36 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %38 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %41 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %43 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %42, i32 0, i32 2
  %44 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %43, align 8
  %45 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %44, i64 0
  store %struct.inbound_queue_table* %45, %struct.inbound_queue_table** %11, align 8
  %46 = call i32 @memset(%struct.get_nvm_data_req* %12, i32 0, i32 40)
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %48 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %47, i64* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %53 = call i32 @kfree(%struct.fw_control_ex* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %204

55:                                               ; preds = %30
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %57 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %56, i32 0, i32 1
  %58 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %58, i64 %59
  store %struct.pm8001_ccb_info* %60, %struct.pm8001_ccb_info** %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %63 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.fw_control_ex*, %struct.fw_control_ex** %13, align 8
  %65 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %66 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %65, i32 0, i32 1
  store %struct.fw_control_ex* %64, %struct.fw_control_ex** %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load i64, i64* %7, align 8
  switch i64 %70, label %197 [
    i64 129, label %71
    i64 131, label %107
    i64 128, label %137
    i64 130, label %167
  ]

71:                                               ; preds = %55
  store i64 168, i64* %15, align 8
  store i64 2, i64* %16, align 8
  %72 = load i64, i64* @IPMode, align 8
  %73 = load i64, i64* %15, align 8
  %74 = shl i64 %73, 16
  %75 = or i64 %72, %74
  %76 = load i64, i64* %16, align 8
  %77 = shl i64 %76, 8
  %78 = or i64 %75, %77
  %79 = or i64 %78, 129
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  %82 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %83 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @cpu_to_le32(i64 %84)
  %86 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %88 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i64, i64* @NVMD, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @cpu_to_le32(i64 %94)
  %96 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %98 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i64, i64* @NVMD, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @cpu_to_le32(i64 %104)
  %106 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  br label %198

107:                                              ; preds = %55
  %108 = load i64, i64* @IPMode, align 8
  %109 = or i64 %108, 131
  %110 = call i8* @cpu_to_le32(i64 %109)
  %111 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 3
  store i8* %110, i8** %111, align 8
  %112 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %113 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @cpu_to_le32(i64 %114)
  %116 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 2
  store i8* %115, i8** %116, align 8
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %118 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i64, i64* @NVMD, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @cpu_to_le32(i64 %124)
  %126 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %128 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* @NVMD, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @cpu_to_le32(i64 %134)
  %136 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  br label %198

137:                                              ; preds = %55
  %138 = load i64, i64* @IPMode, align 8
  %139 = or i64 %138, 128
  %140 = call i8* @cpu_to_le32(i64 %139)
  %141 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 3
  store i8* %140, i8** %141, align 8
  %142 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %143 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @cpu_to_le32(i64 %144)
  %146 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 2
  store i8* %145, i8** %146, align 8
  %147 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %148 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* @NVMD, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @cpu_to_le32(i64 %154)
  %156 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 1
  store i8* %155, i8** %156, align 8
  %157 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %158 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i64, i64* @NVMD, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i8* @cpu_to_le32(i64 %164)
  %166 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 0
  store i8* %165, i8** %166, align 8
  br label %198

167:                                              ; preds = %55
  %168 = load i64, i64* @IPMode, align 8
  %169 = or i64 %168, 130
  %170 = call i8* @cpu_to_le32(i64 %169)
  %171 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 3
  store i8* %170, i8** %171, align 8
  %172 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %173 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @cpu_to_le32(i64 %174)
  %176 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 2
  store i8* %175, i8** %176, align 8
  %177 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %178 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i64, i64* @NVMD, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @cpu_to_le32(i64 %184)
  %186 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 1
  store i8* %185, i8** %186, align 8
  %187 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %188 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = load i64, i64* @NVMD, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @cpu_to_le32(i64 %194)
  %196 = getelementptr inbounds %struct.get_nvm_data_req, %struct.get_nvm_data_req* %12, i32 0, i32 0
  store i8* %195, i8** %196, align 8
  br label %198

197:                                              ; preds = %55
  br label %198

198:                                              ; preds = %197, %167, %137, %107, %71
  %199 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %200 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %11, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %199, %struct.inbound_queue_table* %200, i64 %201, %struct.get_nvm_data_req* %12, i32 0)
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %198, %51, %27
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.fw_control_ex* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.get_nvm_data_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @kfree(%struct.fw_control_ex*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.get_nvm_data_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
