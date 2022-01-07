; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c___ibmvfc_reset_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c___ibmvfc_reset_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i64, i32, i32, i32, i64 }

@IBMVFC_HOST_ACTION_LOGO_WAIT = common dso_local global i64 0, align 8
@IBMVFC_INITIALIZING = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_LOGO = common dso_local global i32 0, align 4
@ibmvfc_npiv_logout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*)* @__ibmvfc_reset_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ibmvfc_reset_host(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %3 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %4 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IBMVFC_HOST_ACTION_LOGO_WAIT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %15 = load i32, i32* @IBMVFC_INITIALIZING, align 4
  %16 = call i32 @ibmvfc_set_host_state(%struct.ibmvfc_host* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %20 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @scsi_block_requests(i32 %21)
  %23 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %24 = load i32, i32* @IBMVFC_HOST_ACTION_LOGO, align 4
  %25 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %23, i32 %24)
  %26 = load i32, i32* @ibmvfc_npiv_logout, align 4
  %27 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %28 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  br label %35

32:                                               ; preds = %13, %7, %1
  %33 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %34 = call i32 @ibmvfc_hard_reset_host(%struct.ibmvfc_host* %33)
  br label %35

35:                                               ; preds = %32, %18
  ret void
}

declare dso_local i32 @ibmvfc_set_host_state(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ibmvfc_hard_reset_host(%struct.ibmvfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
