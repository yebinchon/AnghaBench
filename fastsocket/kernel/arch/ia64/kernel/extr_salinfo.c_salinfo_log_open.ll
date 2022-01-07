; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.proc_dir_entry = type { %struct.salinfo_data* }
%struct.salinfo_data = type { i32, i64, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@STATE_NO_DATA = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @salinfo_log_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_log_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.salinfo_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.proc_dir_entry* @PDE(%struct.inode* %8)
  store %struct.proc_dir_entry* %9, %struct.proc_dir_entry** %6, align 8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %11 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %10, i32 0, i32 0
  %12 = load %struct.salinfo_data*, %struct.salinfo_data** %11, align 8
  store %struct.salinfo_data* %12, %struct.salinfo_data** %7, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = call i32 @spin_lock(i32* @data_lock)
  %21 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %22 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 @spin_unlock(i32* @data_lock)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %31 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = call i32 @spin_unlock(i32* @data_lock)
  %33 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %34 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STATE_NO_DATA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %40 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ia64_sal_get_state_info_size(i32 %41)
  %43 = call i32 @vmalloc(i32 %42)
  %44 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %45 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = icmp ne i32 %43, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load %struct.salinfo_data*, %struct.salinfo_data** %7, align 8
  %49 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %38, %29
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %25, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @ia64_sal_get_state_info_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
