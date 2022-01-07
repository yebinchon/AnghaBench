; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_disk_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_disk_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i32 }
%struct.dm_target = type { i32 }
%struct.dm_dev = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"wrong number of arguments to disk dirty region log\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_dirty_log*, %struct.dm_target*, i32, i8**)* @disk_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_ctr(%struct.dm_dirty_log* %0, %struct.dm_target* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_dirty_log*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_dev*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %6, align 8
  store %struct.dm_target* %1, %struct.dm_target** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %4
  %18 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %14
  %22 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dm_table_get_mode(i32 %28)
  %30 = call i32 @dm_get_device(%struct.dm_target* %22, i8* %25, i32 %29, %struct.dm_dev** %11)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %52

35:                                               ; preds = %21
  %36 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %38, 1
  %40 = load i8**, i8*** %9, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %43 = call i32 @create_log_context(%struct.dm_dirty_log* %36, %struct.dm_target* %37, i32 %39, i8** %41, %struct.dm_dev* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %48 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %49 = call i32 @dm_put_device(%struct.dm_target* %47, %struct.dm_dev* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %46, %33, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @create_log_context(%struct.dm_dirty_log*, %struct.dm_target*, i32, i8**, %struct.dm_dev*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
