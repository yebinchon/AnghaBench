; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_general_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_general_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.general_event_resp = type { i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c" status = 0x%x\0A\00", align 1
@GENERAL_EVENT_PAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"inb_IOMB_payload[0x%x] 0x%x,\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_general_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.general_event_resp*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr i8, i8* %8, i64 4
  %10 = bitcast i8* %9 to %struct.general_event_resp*
  store %struct.general_event_resp* %10, %struct.general_event_resp** %7, align 8
  %11 = load %struct.general_event_resp*, %struct.general_event_resp** %7, align 8
  %12 = getelementptr inbounds %struct.general_event_resp, %struct.general_event_resp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le32_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %15, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GENERAL_EVENT_PAYLOAD, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.general_event_resp*, %struct.general_event_resp** %7, align 8
  %27 = getelementptr inbounds %struct.general_event_resp, %struct.general_event_resp* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %32)
  %34 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %24, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
