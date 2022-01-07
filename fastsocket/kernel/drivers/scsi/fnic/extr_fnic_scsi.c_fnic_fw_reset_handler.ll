; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fw_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_fw_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i64*, %struct.TYPE_2__*, i32*, i32, i32, i32, %struct.vnic_wq_copy* }
%struct.TYPE_2__ = type { i32 }
%struct.vnic_wq_copy = type { i32 }

@FNIC_FLAGS_FWRESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Issued fw reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to issue fw reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_fw_reset_handler(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca %struct.vnic_wq_copy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  %6 = load %struct.fnic*, %struct.fnic** %2, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 6
  %8 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %7, align 8
  %9 = getelementptr inbounds %struct.vnic_wq_copy, %struct.vnic_wq_copy* %8, i64 0
  store %struct.vnic_wq_copy* %9, %struct.vnic_wq_copy** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.fnic*, %struct.fnic** %2, align 8
  %11 = load i32, i32* @FNIC_FLAGS_FWRESET, align 4
  %12 = call i32 @fnic_set_state_flags(%struct.fnic* %10, i32 %11)
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = getelementptr inbounds %struct.fnic, %struct.fnic* %13, i32 0, i32 5
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.fnic*, %struct.fnic** %2, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 4
  %18 = call i32 @skb_queue_purge(i32* %17)
  br label %19

19:                                               ; preds = %24, %1
  %20 = load %struct.fnic*, %struct.fnic** %2, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 3
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @msecs_to_jiffies(i32 1)
  %26 = call i32 @schedule_timeout(i32 %25)
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.fnic*, %struct.fnic** %2, align 8
  %29 = getelementptr inbounds %struct.fnic, %struct.fnic* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %35 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %34)
  %36 = load %struct.fnic*, %struct.fnic** %2, align 8
  %37 = getelementptr inbounds %struct.fnic, %struct.fnic* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load %struct.fnic*, %struct.fnic** %2, align 8
  %44 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %45 = call i32 @free_wq_copy_descs(%struct.fnic* %43, %struct.vnic_wq_copy* %44)
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %48 = call i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load %struct.vnic_wq_copy*, %struct.vnic_wq_copy** %3, align 8
  %55 = load i32, i32* @SCSI_NO_TAG, align 4
  %56 = call i32 @fnic_queue_wq_copy_desc_fw_reset(%struct.vnic_wq_copy* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.fnic*, %struct.fnic** %2, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @KERN_DEBUG, align 4
  %68 = load %struct.fnic*, %struct.fnic** %2, align 8
  %69 = getelementptr inbounds %struct.fnic, %struct.fnic* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @FNIC_SCSI_DBG(i32 %67, i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %85

74:                                               ; preds = %57
  %75 = load %struct.fnic*, %struct.fnic** %2, align 8
  %76 = load i32, i32* @FNIC_FLAGS_FWRESET, align 4
  %77 = call i32 @fnic_clear_state_flags(%struct.fnic* %75, i32 %76)
  %78 = load i32, i32* @KERN_DEBUG, align 4
  %79 = load %struct.fnic*, %struct.fnic** %2, align 8
  %80 = getelementptr inbounds %struct.fnic, %struct.fnic* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @FNIC_SCSI_DBG(i32 %78, i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %74, %66
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @fnic_set_state_flags(%struct.fnic*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vnic_wq_copy_desc_avail(%struct.vnic_wq_copy*) #1

declare dso_local i32 @free_wq_copy_descs(%struct.fnic*, %struct.vnic_wq_copy*) #1

declare dso_local i32 @fnic_queue_wq_copy_desc_fw_reset(%struct.vnic_wq_copy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*) #1

declare dso_local i32 @fnic_clear_state_flags(%struct.fnic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
