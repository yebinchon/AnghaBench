; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_dm_dirty_log_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-log.c_dm_dirty_log_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { i32 (%struct.dm_target*)*, %struct.dm_dirty_log_type* }
%struct.dm_dirty_log_type = type { i64 (%struct.dm_dirty_log.0*, %struct.dm_target*, i32, i8**)* }
%struct.dm_dirty_log.0 = type opaque
%struct.dm_target = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_dirty_log* @dm_dirty_log_create(i8* %0, %struct.dm_target* %1, i32 (%struct.dm_target*)* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.dm_dirty_log*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i32 (%struct.dm_target*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.dm_dirty_log_type*, align 8
  %13 = alloca %struct.dm_dirty_log*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.dm_target* %1, %struct.dm_target** %8, align 8
  store i32 (%struct.dm_target*)* %2, i32 (%struct.dm_target*)** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dm_dirty_log* @kmalloc(i32 16, i32 %14)
  store %struct.dm_dirty_log* %15, %struct.dm_dirty_log** %13, align 8
  %16 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %17 = icmp ne %struct.dm_dirty_log* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %6, align 8
  br label %51

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.dm_dirty_log_type* @get_type(i8* %20)
  store %struct.dm_dirty_log_type* %21, %struct.dm_dirty_log_type** %12, align 8
  %22 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %12, align 8
  %23 = icmp ne %struct.dm_dirty_log_type* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %26 = call i32 @kfree(%struct.dm_dirty_log* %25)
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %6, align 8
  br label %51

27:                                               ; preds = %19
  %28 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %9, align 8
  %29 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %30 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %29, i32 0, i32 0
  store i32 (%struct.dm_target*)* %28, i32 (%struct.dm_target*)** %30, align 8
  %31 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %12, align 8
  %32 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %33 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %32, i32 0, i32 1
  store %struct.dm_dirty_log_type* %31, %struct.dm_dirty_log_type** %33, align 8
  %34 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %12, align 8
  %35 = getelementptr inbounds %struct.dm_dirty_log_type, %struct.dm_dirty_log_type* %34, i32 0, i32 0
  %36 = load i64 (%struct.dm_dirty_log.0*, %struct.dm_target*, i32, i8**)*, i64 (%struct.dm_dirty_log.0*, %struct.dm_target*, i32, i8**)** %35, align 8
  %37 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %38 = bitcast %struct.dm_dirty_log* %37 to %struct.dm_dirty_log.0*
  %39 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i8**, i8*** %11, align 8
  %42 = call i64 %36(%struct.dm_dirty_log.0* %38, %struct.dm_target* %39, i32 %40, i8** %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  %46 = call i32 @kfree(%struct.dm_dirty_log* %45)
  %47 = load %struct.dm_dirty_log_type*, %struct.dm_dirty_log_type** %12, align 8
  %48 = call i32 @put_type(%struct.dm_dirty_log_type* %47)
  store %struct.dm_dirty_log* null, %struct.dm_dirty_log** %6, align 8
  br label %51

49:                                               ; preds = %27
  %50 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %13, align 8
  store %struct.dm_dirty_log* %50, %struct.dm_dirty_log** %6, align 8
  br label %51

51:                                               ; preds = %49, %44, %24, %18
  %52 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  ret %struct.dm_dirty_log* %52
}

declare dso_local %struct.dm_dirty_log* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_dirty_log_type* @get_type(i8*) #1

declare dso_local i32 @kfree(%struct.dm_dirty_log*) #1

declare dso_local i32 @put_type(%struct.dm_dirty_log_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
