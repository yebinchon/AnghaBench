; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_get_sync_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_get_sync_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { i64, i64, i32 }

@DM_ULOG_GET_SYNC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*)* @userspace_get_sync_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_get_sync_count(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_dirty_log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.log_c*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %3, align 8
  %8 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %3, align 8
  %9 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %8, i32 0, i32 0
  %10 = load %struct.log_c*, %struct.log_c** %9, align 8
  store %struct.log_c* %10, %struct.log_c** %7, align 8
  store i64 8, i64* %5, align 8
  %11 = load %struct.log_c*, %struct.log_c** %7, align 8
  %12 = load %struct.log_c*, %struct.log_c** %7, align 8
  %13 = getelementptr inbounds %struct.log_c, %struct.log_c* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DM_ULOG_GET_SYNC_COUNT, align 4
  %16 = bitcast i64* %6 to i8*
  %17 = call i32 @userspace_do_request(%struct.log_c* %11, i32 %14, i32 %15, i32* null, i32 0, i8* %16, i64* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.log_c*, %struct.log_c** %7, align 8
  %24 = getelementptr inbounds %struct.log_c, %struct.log_c* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.log_c*, %struct.log_c** %7, align 8
  %29 = getelementptr inbounds %struct.log_c, %struct.log_c* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.log_c*, %struct.log_c** %7, align 8
  %32 = getelementptr inbounds %struct.log_c, %struct.log_c* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @userspace_do_request(%struct.log_c*, i32, i32, i32*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
