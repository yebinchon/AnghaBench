; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c___lpfc_update_fcf_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c___lpfc_update_fcf_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_fcf_rec = type { i32, i32, i32 }
%struct.fcf_record = type { i32 }

@RECORD_VALID = common dso_local global i32 0, align 4
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_fcf_rec*, %struct.fcf_record*, i32, i32, i32)* @__lpfc_update_fcf_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_update_fcf_record(%struct.lpfc_hba* %0, %struct.lpfc_fcf_rec* %1, %struct.fcf_record* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_fcf_rec*, align 8
  %9 = alloca %struct.fcf_record*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_fcf_rec* %1, %struct.lpfc_fcf_rec** %8, align 8
  store %struct.fcf_record* %2, %struct.fcf_record** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %8, align 8
  %14 = load %struct.fcf_record*, %struct.fcf_record** %9, align 8
  %15 = call i32 @lpfc_copy_fcf_record(%struct.lpfc_fcf_rec* %13, %struct.fcf_record* %14)
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %8, align 8
  %18 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @RECORD_VALID, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %30 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %31 = load %struct.fcf_record*, %struct.fcf_record** %9, align 8
  %32 = call i32 @bf_get(i32 %30, %struct.fcf_record* %31)
  %33 = load %struct.fcf_record*, %struct.fcf_record** %9, align 8
  %34 = call i32 @__lpfc_update_fcf_record_pri(%struct.lpfc_hba* %29, i32 %32, %struct.fcf_record* %33)
  ret void
}

declare dso_local i32 @lpfc_copy_fcf_record(%struct.lpfc_fcf_rec*, %struct.fcf_record*) #1

declare dso_local i32 @__lpfc_update_fcf_record_pri(%struct.lpfc_hba*, i32, %struct.fcf_record*) #1

declare dso_local i32 @bf_get(i32, %struct.fcf_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
