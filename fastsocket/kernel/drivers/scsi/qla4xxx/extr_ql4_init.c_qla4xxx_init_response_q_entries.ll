; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_init_response_q_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_init_response_q_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64 }
%struct.response = type { i32 }

@RESPONSE_QUEUE_DEPTH = common dso_local global i64 0, align 8
@RESPONSE_PROCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_init_response_q_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_init_response_q_entries(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.response*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.response*
  store %struct.response* %8, %struct.response** %4, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @RESPONSE_QUEUE_DEPTH, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32, i32* @RESPONSE_PROCESSED, align 4
  %15 = load %struct.response*, %struct.response** %4, align 8
  %16 = getelementptr inbounds %struct.response, %struct.response* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.response*, %struct.response** %4, align 8
  %18 = getelementptr inbounds %struct.response, %struct.response* %17, i32 1
  store %struct.response* %18, %struct.response** %4, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %9

22:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
