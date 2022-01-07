; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_sli_evt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_sli_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.lpfc_acqe_sli }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_acqe_sli = type { i32, i32 }
%struct.lpfc_acqe_misconfigured_event = type { %struct.lpfc_acqe_sli }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@lpfc_trailer_type = common dso_local global i32 0, align 4
@LPFC_SLI_EVENT_TYPE_MISCONFIGURED = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"2901 Async SLI event - Event Data1:x%08x Event Data2:x%08x SLI Event Type:%d\0A\00", align 1
@lpfc_sli_misconfigured_port0 = common dso_local global i32 0, align 4
@lpfc_sli_misconfigured_port1 = common dso_local global i32 0, align 4
@lpfc_sli_misconfigured_port2 = common dso_local global i32 0, align 4
@lpfc_sli_misconfigured_port3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Optics faulted/incorrectly installed/not installed - Reseat optics, if issue not resolved, replace.\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Optics of two types installed - Remove one optic or install matching pair of optics.\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Incompatible optics - Replace with compatible optics for card to function.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown event status x%02x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"3176 Misconfigured Physical Port - Port Name %c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_sli*)* @lpfc_sli4_async_sli_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_async_sli_evt(%struct.lpfc_hba* %0, %struct.lpfc_acqe_sli* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_sli*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_acqe_misconfigured_event*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_sli* %1, %struct.lpfc_acqe_sli** %4, align 8
  %9 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i64 @bf_get(i32 %9, %struct.lpfc_acqe_sli* %12)
  %14 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @lpfc_trailer_type, align 4
  %18 = load %struct.lpfc_acqe_sli*, %struct.lpfc_acqe_sli** %4, align 8
  %19 = call i64 @bf_get(i32 %17, %struct.lpfc_acqe_sli* %18)
  %20 = load i64, i64* @LPFC_SLI_EVENT_TYPE_MISCONFIGURED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16, %2
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load i32, i32* @LOG_SLI, align 4
  %26 = load %struct.lpfc_acqe_sli*, %struct.lpfc_acqe_sli** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_acqe_sli, %struct.lpfc_acqe_sli* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = load %struct.lpfc_acqe_sli*, %struct.lpfc_acqe_sli** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_acqe_sli, %struct.lpfc_acqe_sli* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @lpfc_trailer_type, align 4
  %36 = load %struct.lpfc_acqe_sli*, %struct.lpfc_acqe_sli** %4, align 8
  %37 = call i64 @bf_get(i32 %35, %struct.lpfc_acqe_sli* %36)
  %38 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i8, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8 signext %29, i8* %34, i64 %37)
  br label %106

39:                                               ; preds = %16
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %5, align 1
  %45 = load i8, i8* %5, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i8 63, i8* %5, align 1
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.lpfc_acqe_sli*, %struct.lpfc_acqe_sli** %4, align 8
  %51 = getelementptr inbounds %struct.lpfc_acqe_sli, %struct.lpfc_acqe_sli* %50, i32 0, i32 0
  %52 = bitcast i32* %51 to %struct.lpfc_acqe_misconfigured_event*
  store %struct.lpfc_acqe_misconfigured_event* %52, %struct.lpfc_acqe_misconfigured_event** %8, align 8
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %82 [
    i32 135, label %58
    i32 134, label %64
    i32 133, label %70
    i32 132, label %76
  ]

58:                                               ; preds = %49
  %59 = load i32, i32* @lpfc_sli_misconfigured_port0, align 4
  %60 = load %struct.lpfc_acqe_misconfigured_event*, %struct.lpfc_acqe_misconfigured_event** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_acqe_misconfigured_event, %struct.lpfc_acqe_misconfigured_event* %60, i32 0, i32 0
  %62 = call i64 @bf_get(i32 %59, %struct.lpfc_acqe_sli* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  br label %83

64:                                               ; preds = %49
  %65 = load i32, i32* @lpfc_sli_misconfigured_port1, align 4
  %66 = load %struct.lpfc_acqe_misconfigured_event*, %struct.lpfc_acqe_misconfigured_event** %8, align 8
  %67 = getelementptr inbounds %struct.lpfc_acqe_misconfigured_event, %struct.lpfc_acqe_misconfigured_event* %66, i32 0, i32 0
  %68 = call i64 @bf_get(i32 %65, %struct.lpfc_acqe_sli* %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  br label %83

70:                                               ; preds = %49
  %71 = load i32, i32* @lpfc_sli_misconfigured_port2, align 4
  %72 = load %struct.lpfc_acqe_misconfigured_event*, %struct.lpfc_acqe_misconfigured_event** %8, align 8
  %73 = getelementptr inbounds %struct.lpfc_acqe_misconfigured_event, %struct.lpfc_acqe_misconfigured_event* %72, i32 0, i32 0
  %74 = call i64 @bf_get(i32 %71, %struct.lpfc_acqe_sli* %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %83

76:                                               ; preds = %49
  %77 = load i32, i32* @lpfc_sli_misconfigured_port3, align 4
  %78 = load %struct.lpfc_acqe_misconfigured_event*, %struct.lpfc_acqe_misconfigured_event** %8, align 8
  %79 = getelementptr inbounds %struct.lpfc_acqe_misconfigured_event, %struct.lpfc_acqe_misconfigured_event* %78, i32 0, i32 0
  %80 = call i64 @bf_get(i32 %77, %struct.lpfc_acqe_sli* %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  br label %83

82:                                               ; preds = %49
  store i32 -130, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %76, %70, %64, %58
  %84 = load i32, i32* %7, align 4
  switch i32 %84, label %95 [
    i32 129, label %85
    i32 131, label %86
    i32 128, label %89
    i32 130, label %92
  ]

85:                                               ; preds = %83
  br label %106

86:                                               ; preds = %83
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %99

89:                                               ; preds = %83
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  br label %99

92:                                               ; preds = %83
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  br label %99

95:                                               ; preds = %83
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %92, %89, %86
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_SLI, align 4
  %103 = load i8, i8* %5, align 1
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %105 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i8, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8 signext %103, i8* %104)
  br label %106

106:                                              ; preds = %99, %85, %22
  ret void
}

declare dso_local i64 @bf_get(i32, %struct.lpfc_acqe_sli*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8 signext, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
