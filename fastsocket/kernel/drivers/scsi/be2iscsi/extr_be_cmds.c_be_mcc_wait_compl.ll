; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_mcc_wait_compl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_mcc_wait_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@mcc_timeout = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BC_%d : FW Timed Out\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @be_mcc_wait_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_wait_compl(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @mcc_timeout, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = call i64 @beiscsi_error(%struct.beiscsi_hba* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %10
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %19 = call i32 @beiscsi_process_mcc(%struct.beiscsi_hba* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %17
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 100)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %32, %6
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @mcc_timeout, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %46 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @beiscsi_log(%struct.beiscsi_hba* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %52 = call i32 @beiscsi_ue_detect(%struct.beiscsi_hba* %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %42, %22, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @beiscsi_error(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_process_mcc(%struct.beiscsi_hba*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_ue_detect(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
