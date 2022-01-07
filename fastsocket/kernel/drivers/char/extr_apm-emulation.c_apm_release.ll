; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.apm_user* }
%struct.apm_user = type { i64, i32 }

@user_list_lock = common dso_local global i32 0, align 4
@state_lock = common dso_local global i32 0, align 4
@SUSPEND_PENDING = common dso_local global i64 0, align 8
@SUSPEND_READ = common dso_local global i64 0, align 8
@suspend_acks_pending = common dso_local global i32 0, align 4
@apm_suspend_waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @apm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.apm_user*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.apm_user*, %struct.apm_user** %7, align 8
  store %struct.apm_user* %8, %struct.apm_user** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  store %struct.apm_user* null, %struct.apm_user** %10, align 8
  %11 = call i32 @down_write(i32* @user_list_lock)
  %12 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %13 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %12, i32 0, i32 1
  %14 = call i32 @list_del(i32* %13)
  %15 = call i32 @up_write(i32* @user_list_lock)
  %16 = call i32 @mutex_lock(i32* @state_lock)
  %17 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %18 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUSPEND_PENDING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %24 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SUSPEND_READ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %2
  %29 = call i32 @atomic_dec(i32* @suspend_acks_pending)
  br label %30

30:                                               ; preds = %28, %22
  %31 = call i32 @mutex_unlock(i32* @state_lock)
  %32 = call i32 @wake_up(i32* @apm_suspend_waitqueue)
  %33 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %34 = call i32 @kfree(%struct.apm_user* %33)
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kfree(%struct.apm_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
