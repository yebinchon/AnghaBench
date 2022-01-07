; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.binder_proc* }
%struct.binder_proc = type { i32 }

@binder_proc_dir_entry_proc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@BINDER_DEFERRED_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @binder_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.binder_proc*, align 8
  %6 = alloca [11 x i8], align 1
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.binder_proc*, %struct.binder_proc** %8, align 8
  store %struct.binder_proc* %9, %struct.binder_proc** %5, align 8
  %10 = load i64, i64* @binder_proc_dir_entry_proc, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %14 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %15 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf(i8* %13, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %19 = load i64, i64* @binder_proc_dir_entry_proc, align 8
  %20 = call i32 @remove_proc_entry(i8* %18, i64 %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.binder_proc*, %struct.binder_proc** %5, align 8
  %23 = load i32, i32* @BINDER_DEFERRED_RELEASE, align 4
  %24 = call i32 @binder_defer_work(%struct.binder_proc* %22, i32 %23)
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @remove_proc_entry(i8*, i64) #1

declare dso_local i32 @binder_defer_work(%struct.binder_proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
