; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_ctl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_mpt3sas_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_queue = common dso_local global i32* null, align 8
@ctl_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s can't register misc device [minor=%d]\0A\00", align 1
@MPT3SAS_DRIVER_NAME = common dso_local global i32 0, align 4
@MPT3SAS_MINOR = common dso_local global i32 0, align 4
@ctl_poll_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_ctl_init() #0 {
  store i32* null, i32** @async_queue, align 8
  %1 = call i64 @misc_register(i32* @ctl_dev)
  %2 = icmp slt i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @MPT3SAS_DRIVER_NAME, align 4
  %5 = load i32, i32* @MPT3SAS_MINOR, align 4
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  br label %7

7:                                                ; preds = %3, %0
  %8 = call i32 @init_waitqueue_head(i32* @ctl_poll_wait)
  ret void
}

declare dso_local i64 @misc_register(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
