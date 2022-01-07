; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_fs.c_ipathfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_fs.c_ipathfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.file_operations*, i32*, i8*, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*)* @ipathfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipathfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file_operations* %3, %struct.file_operations** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @new_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %12, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %55

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @CURRENT_TIME, align 4
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  store i32 %26, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 6
  store i32 %26, i32* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @S_IFMT, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @S_IFDIR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = call i32 @inc_nlink(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @inc_nlink(%struct.inode* %46)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  store %struct.file_operations* %49, %struct.file_operations** %51, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = load %struct.inode*, %struct.inode** %12, align 8
  %54 = call i32 @d_instantiate(%struct.dentry* %52, %struct.inode* %53)
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %48, %19
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
