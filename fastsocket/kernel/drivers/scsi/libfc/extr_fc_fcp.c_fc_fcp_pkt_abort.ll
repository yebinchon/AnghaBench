; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_pkt_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@FC_SCSI_TM_TOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"target abort cmd  failed\0A\00", align 1
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"target abort cmd  passed\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fcp_pkt*)* @fc_fcp_pkt_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_pkt_abort(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  %6 = load i32, i32* @FAILED, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %8 = call i64 @fc_fcp_send_abort(%struct.fc_fcp_pkt* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FAILED, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %14 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %13, i32 0, i32 3
  %15 = call i32 @init_completion(i32* %14)
  %16 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %17 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %19 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %21, i32 0, i32 3
  %23 = load i32, i32* @FC_SCSI_TM_TOV, align 4
  %24 = call i64 @wait_for_completion_timeout(i32* %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %29 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %12
  %33 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %34 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %49

35:                                               ; preds = %12
  %36 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %37 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FC_SRB_ABORTED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %44 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %4, align 4
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %47 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %46)
  br label %48

48:                                               ; preds = %42, %35
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @fc_fcp_send_abort(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
