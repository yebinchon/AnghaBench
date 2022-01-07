; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_flogi_reg_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_flogi_reg_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fcpio_fw_req = type { i32 }
%struct.fcpio_tag = type { i32 }

@FNIC_IN_ETH_TRANS_FC_MODE = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"flog reg succeeded\0A\00", align 1
@FNIC_IN_FC_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"fnic flogi reg :failed %s\0A\00", align 1
@FNIC_IN_ETH_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Unexpected fnic state %s while processing flogi reg completion\0A\00", align 1
@fnic_event_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.fcpio_fw_req*)* @fnic_fcpio_flogi_reg_cmpl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_fcpio_flogi_reg_cmpl_handler(%struct.fnic* %0, %struct.fcpio_fw_req* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.fcpio_fw_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcpio_tag, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store %struct.fcpio_fw_req* %1, %struct.fcpio_fw_req** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.fcpio_fw_req*, %struct.fcpio_fw_req** %4, align 8
  %11 = getelementptr inbounds %struct.fcpio_fw_req, %struct.fcpio_fw_req* %10, i32 0, i32 0
  %12 = call i32 @fcpio_header_dec(i32* %11, i32* %5, i32* %6, %struct.fcpio_tag* %7)
  %13 = load %struct.fnic*, %struct.fnic** %3, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 1
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.fnic*, %struct.fnic** %3, align 8
  %18 = getelementptr inbounds %struct.fnic, %struct.fnic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FNIC_IN_ETH_TRANS_FC_MODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @KERN_DEBUG, align 4
  %27 = load %struct.fnic*, %struct.fnic** %3, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %26, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @FNIC_IN_FC_MODE, align 8
  %34 = load %struct.fnic*, %struct.fnic** %3, align 8
  %35 = getelementptr inbounds %struct.fnic, %struct.fnic* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %49

36:                                               ; preds = %22
  %37 = load i32, i32* @KERN_DEBUG, align 4
  %38 = load %struct.fnic*, %struct.fnic** %3, align 8
  %39 = getelementptr inbounds %struct.fnic, %struct.fnic* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @fnic_fcpio_status_to_str(i32 %43)
  %45 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %37, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %47 = load %struct.fnic*, %struct.fnic** %3, align 8
  %48 = getelementptr inbounds %struct.fnic, %struct.fnic* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 -1, i32* %8, align 4
  br label %49

49:                                               ; preds = %36, %25
  br label %62

50:                                               ; preds = %2
  %51 = load i32, i32* @KERN_DEBUG, align 4
  %52 = load %struct.fnic*, %struct.fnic** %3, align 8
  %53 = getelementptr inbounds %struct.fnic, %struct.fnic* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fnic*, %struct.fnic** %3, align 8
  %58 = getelementptr inbounds %struct.fnic, %struct.fnic* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @fnic_state_to_str(i64 %59)
  %61 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %51, i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i32 -1, i32* %8, align 4
  br label %62

62:                                               ; preds = %50, %49
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load %struct.fnic*, %struct.fnic** %3, align 8
  %67 = getelementptr inbounds %struct.fnic, %struct.fnic* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.fnic*, %struct.fnic** %3, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 1
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %92

75:                                               ; preds = %65
  %76 = load %struct.fnic*, %struct.fnic** %3, align 8
  %77 = getelementptr inbounds %struct.fnic, %struct.fnic* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.fnic*, %struct.fnic** %3, align 8
  %81 = call i32 @fnic_flush_tx(%struct.fnic* %80)
  %82 = load i32, i32* @fnic_event_queue, align 4
  %83 = load %struct.fnic*, %struct.fnic** %3, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 2
  %85 = call i32 @queue_work(i32 %82, i32* %84)
  br label %91

86:                                               ; preds = %62
  %87 = load %struct.fnic*, %struct.fnic** %3, align 8
  %88 = getelementptr inbounds %struct.fnic, %struct.fnic* %87, i32 0, i32 1
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %75
  br label %92

92:                                               ; preds = %91, %70
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @fcpio_header_dec(i32*, i32*, i32*, %struct.fcpio_tag*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, ...) #1

declare dso_local i32 @fnic_fcpio_status_to_str(i32) #1

declare dso_local i32 @fnic_state_to_str(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fnic_flush_tx(%struct.fnic*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
