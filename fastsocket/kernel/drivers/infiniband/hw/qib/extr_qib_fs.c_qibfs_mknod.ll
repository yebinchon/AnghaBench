; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_qibfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_qibfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.file_operations*, i32*, i8*, i32, i32, i32, i64, i64, i64, i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.file_operations*, i8*)* @qibfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qibfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.file_operations* %3, i8* %4) #0 {
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
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.inode* @new_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %12, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %67

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @CURRENT_TIME, align 4
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.inode*, %struct.inode** %12, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @S_IFMT, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @S_IFDIR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %22
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %12, align 8
  %57 = call i32 @inc_nlink(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @inc_nlink(%struct.inode* %58)
  br label %60

60:                                               ; preds = %53, %22
  %61 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %62 = load %struct.inode*, %struct.inode** %12, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store %struct.file_operations* %61, %struct.file_operations** %63, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = call i32 @d_instantiate(%struct.dentry* %64, %struct.inode* %65)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %19
  %68 = load i32, i32* %11, align 4
  ret i32 %68
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
