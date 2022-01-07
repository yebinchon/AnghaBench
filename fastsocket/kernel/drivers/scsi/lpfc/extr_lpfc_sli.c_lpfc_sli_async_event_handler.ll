; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_async_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_async_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.temp_event = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_REG_TEMPERATURE_EVENT = common dso_local global i32 0, align 4
@LPFC_THRESHOLD_TEMP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"0347 Adapter is very hot, please take corrective action. temperature : %d Celsius\0A\00", align 1
@LPFC_NORMAL_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"0340 Adapter temperature is OK now. temperature : %d Celsius\0A\00", align 1
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [237 x i8] c"0346 Ring %d handler: unexpected ASYNC_STATUS evt_code 0x%x\0AW0  0x%08x W1  0x%08x W2  0x%08x W3  0x%08x\0AW4  0x%08x W5  0x%08x W6  0x%08x W7  0x%08x\0AW8  0x%08x W9  0x%08x W10 0x%08x W11 0x%08x\0AW12 0x%08x W13 0x%08x W14 0x%08x W15 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_async_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_async_event_handler(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.temp_event, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %63 [
    i32 128, label %20
    i32 129, label %20
    i32 130, label %59
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %9, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @FC_REG_TEMPERATURE_EVENT, align 4
  %26 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i32, i32* @LPFC_THRESHOLD_TEMP, align 4
  %31 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_TEMP, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %49

39:                                               ; preds = %20
  %40 = load i32, i32* @LPFC_NORMAL_TEMP, align 4
  %41 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i32, i32* @LOG_TEMP, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %39, %29
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.Scsi_Host* @lpfc_shost_from_vport(i32 %52)
  store %struct.Scsi_Host* %53, %struct.Scsi_Host** %10, align 8
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %55 = call i32 (...) @fc_get_event_number()
  %56 = bitcast %struct.temp_event* %9 to i8*
  %57 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %58 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %54, i32 %55, i32 12, i8* %56, i32 %57)
  br label %126

59:                                               ; preds = %3
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %62 = call i32 @lpfc_sli_abts_err_handler(%struct.lpfc_hba* %60, %struct.lpfc_iocbq* %61)
  br label %126

63:                                               ; preds = %3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = bitcast %struct.TYPE_6__* %64 to i32*
  store i32* %65, i32** %11, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load i32, i32* @LOG_SLI, align 4
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 10
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 11
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 13
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 14
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 15
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %63, %59, %49
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @lpfc_sli_abts_err_handler(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
