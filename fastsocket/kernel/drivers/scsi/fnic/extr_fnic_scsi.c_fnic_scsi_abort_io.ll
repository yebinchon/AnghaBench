; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_abort_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_abort_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fnic = type { i64, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@remove_wait = common dso_local global i32 0, align 4
@FNIC_IN_FC_TRANS_ETH_MODE = common dso_local global i64 0, align 8
@FNIC_RMDEVICE_TIMEOUT = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fnic_scsi_abort_io %s\0A\00", align 1
@FNIC_IN_ETH_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_scsi_abort_io(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fnic*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = call %struct.fnic* @lport_priv(%struct.fc_lport* %7)
  store %struct.fnic* %8, %struct.fnic** %6, align 8
  %9 = load i32, i32* @remove_wait, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  br label %11

11:                                               ; preds = %24, %1
  %12 = load %struct.fnic*, %struct.fnic** %6, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fnic*, %struct.fnic** %6, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.fnic*, %struct.fnic** %6, align 8
  %26 = getelementptr inbounds %struct.fnic, %struct.fnic* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = call i32 @msecs_to_jiffies(i32 100)
  %30 = call i32 @schedule_timeout(i32 %29)
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.fnic*, %struct.fnic** %6, align 8
  %33 = getelementptr inbounds %struct.fnic, %struct.fnic* %32, i32 0, i32 3
  store i32* @remove_wait, i32** %33, align 8
  %34 = load %struct.fnic*, %struct.fnic** %6, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %39 = load %struct.fnic*, %struct.fnic** %6, align 8
  %40 = getelementptr inbounds %struct.fnic, %struct.fnic* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.fnic*, %struct.fnic** %6, align 8
  %42 = load %struct.fnic*, %struct.fnic** %6, align 8
  %43 = getelementptr inbounds %struct.fnic, %struct.fnic* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @fnic_update_mac_locked(%struct.fnic* %41, i32 %45)
  %47 = load %struct.fnic*, %struct.fnic** %6, align 8
  %48 = getelementptr inbounds %struct.fnic, %struct.fnic* %47, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.fnic*, %struct.fnic** %6, align 8
  %52 = call i32 @fnic_fw_reset_handler(%struct.fnic* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %31
  %56 = load %struct.fnic*, %struct.fnic** %6, align 8
  %57 = getelementptr inbounds %struct.fnic, %struct.fnic* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.fnic*, %struct.fnic** %6, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.fnic*, %struct.fnic** %6, align 8
  %69 = getelementptr inbounds %struct.fnic, %struct.fnic* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %55
  %71 = load %struct.fnic*, %struct.fnic** %6, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load %struct.fnic*, %struct.fnic** %6, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 1
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %105

77:                                               ; preds = %31
  %78 = load i32, i32* @FNIC_RMDEVICE_TIMEOUT, align 4
  %79 = call i32 @msecs_to_jiffies(i32 %78)
  %80 = call i32 @wait_for_completion_timeout(i32* @remove_wait, i32 %79)
  %81 = load %struct.fnic*, %struct.fnic** %6, align 8
  %82 = getelementptr inbounds %struct.fnic, %struct.fnic* %81, i32 0, i32 1
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.fnic*, %struct.fnic** %6, align 8
  %86 = getelementptr inbounds %struct.fnic, %struct.fnic* %85, i32 0, i32 3
  store i32* null, i32** %86, align 8
  %87 = load i32, i32* @KERN_DEBUG, align 4
  %88 = load %struct.fnic*, %struct.fnic** %6, align 8
  %89 = getelementptr inbounds %struct.fnic, %struct.fnic* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fnic*, %struct.fnic** %6, align 8
  %94 = getelementptr inbounds %struct.fnic, %struct.fnic* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %100 = call i32 @FNIC_SCSI_DBG(i32 %87, i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load %struct.fnic*, %struct.fnic** %6, align 8
  %102 = getelementptr inbounds %struct.fnic, %struct.fnic* %101, i32 0, i32 1
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %77, %70
  ret void
}

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fnic_update_mac_locked(%struct.fnic*, i32) #1

declare dso_local i32 @fnic_fw_reset_handler(%struct.fnic*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
