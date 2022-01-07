; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_fw_reset_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fcpio_fw_reset_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fcpio_fw_req = type { i32 }
%struct.fcpio_tag = type { i32 }

@SCSI_NO_TAG = common dso_local global i32 0, align 4
@FNIC_IN_FC_TRANS_ETH_MODE = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reset cmpl success\0A\00", align 1
@FNIC_IN_ETH_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"fnic fw_reset : failed %s\0A\00", align 1
@FNIC_IN_FC_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Unexpected state %s while processing reset cmpl\0A\00", align 1
@FNIC_FLAGS_FWRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.fcpio_fw_req*)* @fnic_fcpio_fw_reset_cmpl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_fcpio_fw_reset_cmpl_handler(%struct.fnic* %0, %struct.fcpio_fw_req* %1) #0 {
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
  %14 = load i32, i32* @SCSI_NO_TAG, align 4
  %15 = call i32 @fnic_cleanup_io(%struct.fnic* %13, i32 %14)
  %16 = load %struct.fnic*, %struct.fnic** %3, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 1
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.fnic*, %struct.fnic** %3, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FNIC_IN_FC_TRANS_ETH_MODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @KERN_DEBUG, align 4
  %30 = load %struct.fnic*, %struct.fnic** %3, align 8
  %31 = getelementptr inbounds %struct.fnic, %struct.fnic* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %29, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %37 = load %struct.fnic*, %struct.fnic** %3, align 8
  %38 = getelementptr inbounds %struct.fnic, %struct.fnic* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %52

39:                                               ; preds = %25
  %40 = load i32, i32* @KERN_DEBUG, align 4
  %41 = load %struct.fnic*, %struct.fnic** %3, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fnic_fcpio_status_to_str(i32 %46)
  %48 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %40, i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @FNIC_IN_FC_MODE, align 8
  %50 = load %struct.fnic*, %struct.fnic** %3, align 8
  %51 = getelementptr inbounds %struct.fnic, %struct.fnic* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  store i32 -1, i32* %8, align 4
  br label %52

52:                                               ; preds = %39, %28
  br label %65

53:                                               ; preds = %2
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.fnic*, %struct.fnic** %3, align 8
  %56 = getelementptr inbounds %struct.fnic, %struct.fnic* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fnic*, %struct.fnic** %3, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @fnic_state_to_str(i64 %62)
  %64 = call i32 (i32, i32, i8*, ...) @FNIC_SCSI_DBG(i32 %54, i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %8, align 4
  br label %65

65:                                               ; preds = %53, %52
  %66 = load %struct.fnic*, %struct.fnic** %3, align 8
  %67 = getelementptr inbounds %struct.fnic, %struct.fnic* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.fnic*, %struct.fnic** %3, align 8
  %72 = getelementptr inbounds %struct.fnic, %struct.fnic* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @complete(i64 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.fnic*, %struct.fnic** %3, align 8
  %77 = getelementptr inbounds %struct.fnic, %struct.fnic* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80, %75
  %84 = load %struct.fnic*, %struct.fnic** %3, align 8
  %85 = getelementptr inbounds %struct.fnic, %struct.fnic* %84, i32 0, i32 1
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.fnic*, %struct.fnic** %3, align 8
  %89 = getelementptr inbounds %struct.fnic, %struct.fnic* %88, i32 0, i32 2
  %90 = call i32 @skb_queue_purge(i32* %89)
  br label %98

91:                                               ; preds = %80
  %92 = load %struct.fnic*, %struct.fnic** %3, align 8
  %93 = getelementptr inbounds %struct.fnic, %struct.fnic* %92, i32 0, i32 1
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.fnic*, %struct.fnic** %3, align 8
  %97 = call i32 @fnic_flush_tx(%struct.fnic* %96)
  br label %98

98:                                               ; preds = %91, %83
  %99 = load %struct.fnic*, %struct.fnic** %3, align 8
  %100 = load i32, i32* @FNIC_FLAGS_FWRESET, align 4
  %101 = call i32 @fnic_clear_state_flags(%struct.fnic* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @fcpio_header_dec(i32*, i32*, i32*, %struct.fcpio_tag*) #1

declare dso_local i32 @fnic_cleanup_io(%struct.fnic*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, ...) #1

declare dso_local i32 @fnic_fcpio_status_to_str(i32) #1

declare dso_local i32 @fnic_state_to_str(i64) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @fnic_flush_tx(%struct.fnic*) #1

declare dso_local i32 @fnic_clear_state_flags(%struct.fnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
