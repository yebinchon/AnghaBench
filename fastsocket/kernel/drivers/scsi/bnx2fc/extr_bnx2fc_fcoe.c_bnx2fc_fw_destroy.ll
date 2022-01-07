; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_fw_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_fw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_hba = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@BNX2FC_FLAG_FW_INIT_DONE = common dso_local global i32 0, align 4
@BNX2FC_FW_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@bnx2fc_destroy_timer = common dso_local global i32 0, align 4
@BNX2FC_FLAG_DESTROY_CMPL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2fc_hba*)* @bnx2fc_fw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_fw_destroy(%struct.bnx2fc_hba* %0) #0 {
  %2 = alloca %struct.bnx2fc_hba*, align 8
  store %struct.bnx2fc_hba* %0, %struct.bnx2fc_hba** %2, align 8
  %3 = load i32, i32* @BNX2FC_FLAG_FW_INIT_DONE, align 4
  %4 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %4, i32 0, i32 1
  %6 = call i64 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %10 = call i64 @bnx2fc_send_fw_fcoe_destroy_msg(%struct.bnx2fc_hba* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %13, i32 0, i32 0
  %15 = call i32 @init_timer(%struct.TYPE_4__* %14)
  %16 = load i64, i64* @BNX2FC_FW_TIMEOUT, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 %18, i64* %21, align 8
  %22 = load i32, i32* @bnx2fc_destroy_timer, align 4
  %23 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %27 = ptrtoint %struct.bnx2fc_hba* %26 to i64
  %28 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %31, i32 0, i32 0
  %33 = call i32 @add_timer(%struct.TYPE_4__* %32)
  %34 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BNX2FC_FLAG_DESTROY_CMPL, align 4
  %38 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %38, i32 0, i32 1
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  %41 = call i32 @wait_event_interruptible(i32 %36, i32 %40)
  %42 = load i32, i32* @BNX2FC_FLAG_DESTROY_CMPL, align 4
  %43 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %43, i32 0, i32 1
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %12
  %50 = load i32, i32* @current, align 4
  %51 = call i32 @flush_signals(i32 %50)
  br label %52

52:                                               ; preds = %49, %12
  %53 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %53, i32 0, i32 0
  %55 = call i32 @del_timer_sync(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %52, %8
  %57 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %2, align 8
  %58 = call i32 @bnx2fc_unbind_adapter_devices(%struct.bnx2fc_hba* %57)
  br label %59

59:                                               ; preds = %56, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @bnx2fc_send_fw_fcoe_destroy_msg(%struct.bnx2fc_hba*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @bnx2fc_unbind_adapter_devices(%struct.bnx2fc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
