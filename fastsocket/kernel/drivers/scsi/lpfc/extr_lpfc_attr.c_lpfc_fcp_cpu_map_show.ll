; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_fcp_cpu_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.lpfc_vector_map_info* }
%struct.lpfc_vector_map_info = type { i64, i32, i32, i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@MSIX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"fcp_cpu_map: No mapping (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"fcp_cpu_map: HBA centric mapping (%d): %d online CPUs\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"fcp_cpu_map: Driver centric mapping (%d): %d online CPUs\0A\00", align 1
@LPFC_VECTOR_MAP_EMPTY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"CPU %02d io_chan %02d physid %d coreid %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"CPU %02d io_chan %02d physid %d coreid %d IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_fcp_cpu_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fcp_cpu_map_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_vector_map_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %8, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %9, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %10, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPFC_SLI_REV4, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MSIX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %177

36:                                               ; preds = %28
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %100 [
    i32 0, label %40
    i32 1, label %58
    i32 2, label %79
  ]

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 (i8*, i64, i8*, i32, ...) @snprintf(i8* %44, i64 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %4, align 4
  br label %177

58:                                               ; preds = %36
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 (i8*, i64, i8*, i32, ...) @snprintf(i8* %62, i64 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  br label %100

79:                                               ; preds = %36
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 (i8*, i64, i8*, i32, ...) @snprintf(i8* %83, i64 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %36, %79, %58
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %103, align 8
  store %struct.lpfc_vector_map_info* %104, %struct.lpfc_vector_map_info** %11, align 8
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %172, %100
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %175

112:                                              ; preds = %105
  %113 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %114 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @LPFC_VECTOR_MAP_EMPTY, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %112
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i64, i64* @PAGE_SIZE, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %123, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %129 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %132 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %135 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i64 (i8*, i64, i8*, i32, ...) @snprintf(i8* %122, i64 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %136)
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %13, align 4
  br label %169

142:                                              ; preds = %112
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i64, i64* @PAGE_SIZE, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = sub nsw i64 %147, %149
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %153 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %156 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %159 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %162 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 (i8*, i64, i8*, i32, ...) @snprintf(i8* %146, i64 %150, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %154, i32 %157, i32 %160, i64 %163)
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %142, %118
  %170 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %11, align 8
  %171 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %170, i32 1
  store %struct.lpfc_vector_map_info* %171, %struct.lpfc_vector_map_info** %11, align 8
  br label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %105

175:                                              ; preds = %105
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %40, %34
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
