; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_upld_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_tgt.c_bnx2fc_upld_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { i32, i32, i32 }

@bnx2fc_upld_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNX2FC_FW_TIMEOUT = common dso_local global i64 0, align 8
@BNX2FC_FLAG_UPLD_REQ_COMPL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_rport*)* @bnx2fc_upld_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_upld_wait(%struct.bnx2fc_rport* %0) #0 {
  %2 = alloca %struct.bnx2fc_rport*, align 8
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %2, align 8
  %3 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %3, i32 0, i32 0
  %5 = load i32, i32* @bnx2fc_upld_timer, align 4
  %6 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %7 = ptrtoint %struct.bnx2fc_rport* %6 to i64
  %8 = call i32 @setup_timer(i32* %4, i32 %5, i64 %7)
  %9 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %9, i32 0, i32 0
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @BNX2FC_FW_TIMEOUT, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @mod_timer(i32* %10, i64 %13)
  %15 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BNX2FC_FLAG_UPLD_REQ_COMPL, align 4
  %19 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = call i32 @wait_event_interruptible(i32 %17, i32 %21)
  %23 = load i32, i32* @current, align 4
  %24 = call i64 @signal_pending(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @flush_signals(i32 %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %30, i32 0, i32 0
  %32 = call i32 @del_timer_sync(i32* %31)
  ret void
}

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
