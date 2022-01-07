; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fnic = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FNIC_IN_FC_TRANS_ETH_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_scsi_cleanup(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fnic*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = call %struct.fnic* @lport_priv(%struct.fc_lport* %6)
  store %struct.fnic* %7, %struct.fnic** %5, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.fnic*, %struct.fnic** %5, align 8
  %10 = getelementptr inbounds %struct.fnic, %struct.fnic* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fnic*, %struct.fnic** %5, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load %struct.fnic*, %struct.fnic** %5, align 8
  %23 = getelementptr inbounds %struct.fnic, %struct.fnic* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = call i32 @msecs_to_jiffies(i32 100)
  %27 = call i32 @schedule_timeout(i32 %26)
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.fnic*, %struct.fnic** %5, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %34 = load %struct.fnic*, %struct.fnic** %5, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.fnic*, %struct.fnic** %5, align 8
  %37 = load %struct.fnic*, %struct.fnic** %5, align 8
  %38 = getelementptr inbounds %struct.fnic, %struct.fnic* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fnic_update_mac_locked(%struct.fnic* %36, i32 %40)
  %42 = load %struct.fnic*, %struct.fnic** %5, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.fnic*, %struct.fnic** %5, align 8
  %47 = call i64 @fnic_fw_reset_handler(%struct.fnic* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %28
  %50 = load %struct.fnic*, %struct.fnic** %5, align 8
  %51 = getelementptr inbounds %struct.fnic, %struct.fnic* %50, i32 0, i32 1
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.fnic*, %struct.fnic** %5, align 8
  %55 = getelementptr inbounds %struct.fnic, %struct.fnic* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.fnic*, %struct.fnic** %5, align 8
  %63 = getelementptr inbounds %struct.fnic, %struct.fnic* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %49
  %65 = load %struct.fnic*, %struct.fnic** %5, align 8
  %66 = getelementptr inbounds %struct.fnic, %struct.fnic* %65, i32 0, i32 1
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %28
  ret void
}

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fnic_update_mac_locked(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_fw_reset_handler(%struct.fnic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
