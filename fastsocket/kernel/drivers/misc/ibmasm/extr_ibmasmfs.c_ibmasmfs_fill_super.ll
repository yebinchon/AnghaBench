; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.dentry*, i32*, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32* }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@IBMASMFS_MAGIC = common dso_local global i32 0, align 4
@ibmasmfs_s_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@ibmasmfs_dir_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @ibmasmfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmasmfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IBMASMFS_MAGIC, align 4
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 2
  store i32* @ibmasmfs_s_ops, i32** %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = or i32 %24, 320
  %26 = call %struct.inode* @ibmasmfs_make_inode(%struct.super_block* %23, i32 %25)
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %34, align 8
  %35 = load i32, i32* @ibmasmfs_dir_ops, align 4
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call %struct.dentry* @d_alloc_root(%struct.inode* %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = icmp ne %struct.dentry* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @iput(%struct.inode* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %32
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 1
  store %struct.dentry* %48, %struct.dentry** %50, align 8
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = call i32 @ibmasmfs_create_files(%struct.super_block* %51, %struct.dentry* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %42, %29
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @ibmasmfs_make_inode(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ibmasmfs_create_files(%struct.super_block*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
