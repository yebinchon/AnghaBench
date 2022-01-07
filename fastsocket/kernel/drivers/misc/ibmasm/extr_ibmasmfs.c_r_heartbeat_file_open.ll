; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_r_heartbeat_file_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_r_heartbeat_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { %struct.ibmasmfs_heartbeat_data* }
%struct.ibmasmfs_heartbeat_data = type { i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @r_heartbeat_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_heartbeat_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ibmasmfs_heartbeat_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ibmasmfs_heartbeat_data* @kmalloc(i32 24, i32 %15)
  store %struct.ibmasmfs_heartbeat_data* %16, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %17 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %18 = icmp ne %struct.ibmasmfs_heartbeat_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %14
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %27 = getelementptr inbounds %struct.ibmasmfs_heartbeat_data, %struct.ibmasmfs_heartbeat_data* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %29 = getelementptr inbounds %struct.ibmasmfs_heartbeat_data, %struct.ibmasmfs_heartbeat_data* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %31 = getelementptr inbounds %struct.ibmasmfs_heartbeat_data, %struct.ibmasmfs_heartbeat_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %34 = getelementptr inbounds %struct.ibmasmfs_heartbeat_data, %struct.ibmasmfs_heartbeat_data* %33, i32 0, i32 0
  %35 = call i32 @ibmasm_init_reverse_heartbeat(i64 %32, i32* %34)
  %36 = load %struct.ibmasmfs_heartbeat_data*, %struct.ibmasmfs_heartbeat_data** %6, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.ibmasmfs_heartbeat_data* %36, %struct.ibmasmfs_heartbeat_data** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %19, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ibmasmfs_heartbeat_data* @kmalloc(i32, i32) #1

declare dso_local i32 @ibmasm_init_reverse_heartbeat(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
