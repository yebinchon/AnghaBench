; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_dtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { %struct.log_c*, i64, i32, i32, i32 }

@DM_ULOG_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_dirty_log*)* @userspace_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @userspace_dtr(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca %struct.dm_dirty_log*, align 8
  %3 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %2, align 8
  %4 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %5 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %4, i32 0, i32 0
  %6 = load %struct.log_c*, %struct.log_c** %5, align 8
  store %struct.log_c* %6, %struct.log_c** %3, align 8
  %7 = load %struct.log_c*, %struct.log_c** %3, align 8
  %8 = getelementptr inbounds %struct.log_c, %struct.log_c* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.log_c*, %struct.log_c** %3, align 8
  %11 = getelementptr inbounds %struct.log_c, %struct.log_c* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DM_ULOG_DTR, align 4
  %14 = call i32 @dm_consult_userspace(i32 %9, i32 %12, i32 %13, i32* null, i32 0, i32* null, i32* null)
  %15 = load %struct.log_c*, %struct.log_c** %3, align 8
  %16 = getelementptr inbounds %struct.log_c, %struct.log_c* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.log_c*, %struct.log_c** %3, align 8
  %21 = getelementptr inbounds %struct.log_c, %struct.log_c* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.log_c*, %struct.log_c** %3, align 8
  %24 = getelementptr inbounds %struct.log_c, %struct.log_c* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dm_put_device(i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.log_c*, %struct.log_c** %3, align 8
  %29 = getelementptr inbounds %struct.log_c, %struct.log_c* %28, i32 0, i32 0
  %30 = load %struct.log_c*, %struct.log_c** %29, align 8
  %31 = call i32 @kfree(%struct.log_c* %30)
  %32 = load %struct.log_c*, %struct.log_c** %3, align 8
  %33 = call i32 @kfree(%struct.log_c* %32)
  ret void
}

declare dso_local i32 @dm_consult_userspace(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @kfree(%struct.log_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
