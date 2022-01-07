; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_prep_state_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_prep_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32 }

@BLKPREP_OK = common dso_local global i32 0, align 4
@SDEV_RUNNING = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rejecting I/O to offline device\0A\00", align 1
@BLKPREP_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"rejecting I/O to dead device\0A\00", align 1
@REQ_PREEMPT = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_prep_state_check(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SDEV_RUNNING, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %39 [
    i32 130, label %19
    i32 128, label %19
    i32 131, label %24
    i32 129, label %29
    i32 133, label %29
    i32 132, label %29
  ]

19:                                               ; preds = %15, %15
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = call i32 @sdev_printk(i32 %20, %struct.scsi_device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %23, i32* %5, align 4
  br label %49

24:                                               ; preds = %15
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = call i32 @sdev_printk(i32 %25, %struct.scsi_device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %15, %15, %15
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REQ_PREEMPT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %49

39:                                               ; preds = %15
  %40 = load %struct.request*, %struct.request** %4, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @REQ_PREEMPT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48, %38, %24, %19
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
