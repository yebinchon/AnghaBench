; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c_oprofilefs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c_oprofilefs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32*, i32* }

@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @oprofilefs_mkdir(%struct.super_block* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.dentry* @d_alloc_name(%struct.dentry* %10, i8* %11)
  store %struct.dentry* %12, %struct.dentry** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %18, 493
  %20 = call %struct.inode* @oprofilefs_get_inode(%struct.super_block* %17, i32 %19)
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = call i32 @dput(%struct.dentry* %24)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %30, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @d_add(%struct.dentry* %31, %struct.inode* %32)
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %34, %struct.dentry** %4, align 8
  br label %35

35:                                               ; preds = %26, %23, %15
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %36
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @oprofilefs_get_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
