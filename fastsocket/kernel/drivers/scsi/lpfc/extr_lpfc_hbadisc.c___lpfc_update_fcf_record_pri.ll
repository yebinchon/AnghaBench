; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c___lpfc_update_fcf_record_pri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c___lpfc_update_fcf_record_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.lpfc_fcf_pri* }
%struct.lpfc_fcf_pri = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.fcf_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, i64, %struct.fcf_record*)* @__lpfc_update_fcf_record_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_update_fcf_record_pri(%struct.lpfc_hba* %0, i64 %1, %struct.fcf_record* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fcf_record*, align 8
  %7 = alloca %struct.lpfc_fcf_pri*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fcf_record* %2, %struct.fcf_record** %6, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %11, i64 %12
  store %struct.lpfc_fcf_pri* %13, %struct.lpfc_fcf_pri** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.fcf_record*, %struct.fcf_record** %6, align 8
  %19 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lpfc_fcf_pri*, %struct.lpfc_fcf_pri** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_fcf_pri, %struct.lpfc_fcf_pri* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
