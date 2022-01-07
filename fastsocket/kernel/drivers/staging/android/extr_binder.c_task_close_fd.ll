; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_task_close_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_task_close_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32, i32, %struct.file** }

@ESRCH = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.binder_proc*, i32)* @task_close_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @task_close_fd(%struct.binder_proc* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.binder_proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.files_struct*, align 8
  %8 = alloca %struct.fdtable*, align 8
  %9 = alloca i32, align 4
  store %struct.binder_proc* %0, %struct.binder_proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.binder_proc*, %struct.binder_proc** %4, align 8
  %11 = getelementptr inbounds %struct.binder_proc, %struct.binder_proc* %10, i32 0, i32 0
  %12 = load %struct.files_struct*, %struct.files_struct** %11, align 8
  store %struct.files_struct* %12, %struct.files_struct** %7, align 8
  %13 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %14 = icmp eq %struct.files_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @ESRCH, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %3, align 8
  br label %100

18:                                               ; preds = %2
  %19 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %20 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %23 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %22)
  store %struct.fdtable* %23, %struct.fdtable** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %26 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %94

30:                                               ; preds = %18
  %31 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %32 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %31, i32 0, i32 2
  %33 = load %struct.file**, %struct.file*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.file*, %struct.file** %33, i64 %35
  %37 = load %struct.file*, %struct.file** %36, align 8
  store %struct.file* %37, %struct.file** %6, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = icmp ne %struct.file* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %94

41:                                               ; preds = %30
  %42 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %43 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %42, i32 0, i32 2
  %44 = load %struct.file**, %struct.file*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.file*, %struct.file** %44, i64 %46
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = call i32 @rcu_assign_pointer(%struct.file* %48, i32* null)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %52 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @FD_CLR(i32 %50, i32 %53)
  %55 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @__put_unused_fd(%struct.files_struct* %55, i32 %56)
  %58 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %59 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.file*, %struct.file** %6, align 8
  %62 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %63 = call i32 @filp_close(%struct.file* %61, %struct.files_struct* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ERESTARTSYS, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %41
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ERESTARTNOINTR, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ERESTARTNOHAND, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br label %83

83:                                               ; preds = %78, %73, %68, %41
  %84 = phi i1 [ true, %73 ], [ true, %68 ], [ true, %41 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINTR, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %3, align 8
  br label %100

94:                                               ; preds = %40, %29
  %95 = load %struct.files_struct*, %struct.files_struct** %7, align 8
  %96 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i64, i64* @EBADF, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %94, %91, %15
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.file*, i32*) #1

declare dso_local i32 @FD_CLR(i32, i32) #1

declare dso_local i32 @__put_unused_fd(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @filp_close(%struct.file*, %struct.files_struct*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
