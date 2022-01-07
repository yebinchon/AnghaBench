; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.apm_user* }
%struct.apm_user = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SUSPEND_ACKED = common dso_local global i32 0, align 4
@suspend_acks_pending = common dso_local global i32 0, align 4
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@SUSPEND_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SUSPEND_WAIT = common dso_local global i32 0, align 4
@PM_SUSPEND_MEM = common dso_local global i32 0, align 4
@SUSPEND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i32)* @apm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.apm_user*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.file*, %struct.file** %7, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.apm_user*, %struct.apm_user** %13, align 8
  store %struct.apm_user* %14, %struct.apm_user** %10, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %18 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %23 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %83

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %81 [
    i32 130, label %31
  ]

31:                                               ; preds = %29
  %32 = call i32 @mutex_lock(i32* @state_lock)
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %36 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %38 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %63 [
    i32 128, label %40
    i32 129, label %57
  ]

40:                                               ; preds = %31
  %41 = load i32, i32* @SUSPEND_ACKED, align 4
  %42 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %43 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @atomic_dec(i32* @suspend_acks_pending)
  %45 = call i32 @mutex_unlock(i32* @state_lock)
  %46 = call i32 @wake_up(i32* @apm_suspend_waitqueue)
  %47 = call i32 (...) @freezer_do_not_count()
  %48 = load i32, i32* @apm_suspend_waitqueue, align 4
  %49 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %50 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SUSPEND_DONE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @wait_event(i32 %48, i32 %54)
  %56 = call i32 (...) @freezer_count()
  br label %72

57:                                               ; preds = %31
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %61 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = call i32 @mutex_unlock(i32* @state_lock)
  br label %72

63:                                               ; preds = %31
  %64 = load i32, i32* @SUSPEND_WAIT, align 4
  %65 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %66 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = call i32 @mutex_unlock(i32* @state_lock)
  %68 = load i32, i32* @PM_SUSPEND_MEM, align 4
  %69 = call i32 @pm_suspend(i32 %68)
  %70 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %71 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %57, %40
  %73 = call i32 @mutex_lock(i32* @state_lock)
  %74 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %75 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @SUSPEND_NONE, align 4
  %78 = load %struct.apm_user*, %struct.apm_user** %10, align 8
  %79 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = call i32 @mutex_unlock(i32* @state_lock)
  br label %81

81:                                               ; preds = %29, %72
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %26
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @freezer_do_not_count(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @freezer_count(...) #1

declare dso_local i32 @pm_suspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
