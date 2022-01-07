; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_register_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_register_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.elevator_queue* }
%struct.elevator_queue = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.elv_fs_entry* }
%struct.elv_fs_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"iosched\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elv_register_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.elevator_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.elv_fs_entry*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 1
  %8 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  store %struct.elevator_queue* %8, %struct.elevator_queue** %3, align 8
  %9 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %10 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %9, i32 0, i32 1
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = call i32 @kobject_add(i32* %10, i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %1
  %17 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %18 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %20, align 8
  store %struct.elv_fs_entry* %21, %struct.elv_fs_entry** %5, align 8
  %22 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %5, align 8
  %23 = icmp ne %struct.elv_fs_entry* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %39, %24
  %26 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %5, align 8
  %27 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %33 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %32, i32 0, i32 1
  %34 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %5, align 8
  %35 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %34, i32 0, i32 0
  %36 = call i64 @sysfs_create_file(i32* %33, %struct.TYPE_4__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %5, align 8
  %41 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %40, i32 1
  store %struct.elv_fs_entry* %41, %struct.elv_fs_entry** %5, align 8
  br label %25

42:                                               ; preds = %38, %25
  br label %43

43:                                               ; preds = %42, %16
  %44 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %45 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %44, i32 0, i32 1
  %46 = load i32, i32* @KOBJ_ADD, align 4
  %47 = call i32 @kobject_uevent(i32* %45, i32 %46)
  %48 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  %49 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %1
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @sysfs_create_file(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
