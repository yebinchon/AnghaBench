; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_softirq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_softirq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_2__*, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timing out command, waited %lus\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_EH_RETRY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @scsi_softirq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_softirq_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = load %struct.request*, %struct.request** %2, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 5
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = call i32 @scsi_decide_disposition(%struct.scsi_cmnd* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %46, %47
  %49 = load i32, i32* @jiffies, align 4
  %50 = call i64 @time_before(i64 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @HZ, align 8
  %59 = udiv i64 %57, %58
  %60 = call i32 @sdev_printk(i32 %53, %struct.TYPE_2__* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %59)
  store i32 128, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %43, %38
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @scsi_log_completion(%struct.scsi_cmnd* %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  switch i32 %65, label %77 [
    i32 128, label %66
    i32 129, label %69
    i32 130, label %73
  ]

66:                                               ; preds = %61
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %68 = call i32 @scsi_finish_command(%struct.scsi_cmnd* %67)
  br label %85

69:                                               ; preds = %61
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %71 = load i32, i32* @SCSI_MLQUEUE_EH_RETRY, align 4
  %72 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %70, i32 %71)
  br label %85

73:                                               ; preds = %61
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  %76 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %74, i32 %75)
  br label %85

77:                                               ; preds = %61
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %79 = call i32 @scsi_eh_scmd_add(%struct.scsi_cmnd* %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %83 = call i32 @scsi_finish_command(%struct.scsi_cmnd* %82)
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %73, %69, %66
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @scsi_decide_disposition(%struct.scsi_cmnd*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_2__*, i8*, i64) #1

declare dso_local i32 @scsi_log_completion(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_finish_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_queue_insert(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_eh_scmd_add(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
