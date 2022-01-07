; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32 }
%struct.fc_frame = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@FC_CMD_PLOGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, %struct.fc_frame*)* @fc_fcp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_error(%struct.fc_fcp_pkt* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %6 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %7 = call i32 @PTR_ERR(%struct.fc_frame* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %9 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FC_EX_CLOSED, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %19 = call i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt* %18)
  br label %32

20:                                               ; preds = %12
  %21 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %24 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @FC_CMD_PLOGO, align 4
  %28 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %29 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %31 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %30)
  br label %32

32:                                               ; preds = %20, %17
  %33 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %34 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %33)
  br label %35

35:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
