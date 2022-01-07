; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_is_remote_recovering.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log-userspace-base.c_userspace_is_remote_recovering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.log_c* }
%struct.log_c = type { i64, i32 }
%struct.anon = type { i64, i64 }

@userspace_is_remote_recovering.limit = internal global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DM_ULOG_IS_REMOTE_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, i64)* @userspace_is_remote_recovering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_is_remote_recovering(%struct.dm_dirty_log* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_dirty_log*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.log_c*, align 8
  %9 = alloca %struct.anon, align 8
  %10 = alloca i64, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %4, align 8
  %13 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %12, i32 0, i32 0
  %14 = load %struct.log_c*, %struct.log_c** %13, align 8
  store %struct.log_c* %14, %struct.log_c** %8, align 8
  store i64 16, i64* %10, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.log_c*, %struct.log_c** %8, align 8
  %17 = getelementptr inbounds %struct.log_c, %struct.log_c* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @userspace_is_remote_recovering.limit, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %52

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %28, %31
  store i64 %32, i64* @userspace_is_remote_recovering.limit, align 8
  %33 = load %struct.log_c*, %struct.log_c** %8, align 8
  %34 = load %struct.log_c*, %struct.log_c** %8, align 8
  %35 = getelementptr inbounds %struct.log_c, %struct.log_c* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DM_ULOG_IS_REMOTE_RECOVERING, align 4
  %38 = bitcast i64* %7 to i8*
  %39 = bitcast %struct.anon* %9 to i8*
  %40 = call i32 @userspace_do_request(%struct.log_c* %33, i32 %36, i32 %37, i8* %38, i32 8, i8* %39, i64* %10)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %52

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.log_c*, %struct.log_c** %8, align 8
  %48 = getelementptr inbounds %struct.log_c, %struct.log_c* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %43, %25, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @userspace_do_request(%struct.log_c*, i32, i32, i8*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
