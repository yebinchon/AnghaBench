; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_ibmasmfs.c_ibmasmfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i8*, %struct.file_operations* }

@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, i8*, %struct.file_operations*, i8*, i32)* @ibmasmfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ibmasmfs_create_file(%struct.super_block* %0, %struct.dentry* %1, i8* %2, %struct.file_operations* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.file_operations* %3, %struct.file_operations** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct.dentry* @d_alloc_name(%struct.dentry* %16, i8* %17)
  store %struct.dentry* %18, %struct.dentry** %14, align 8
  %19 = load %struct.dentry*, %struct.dentry** %14, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %44

22:                                               ; preds = %6
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i32, i32* %13, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.inode* @ibmasmfs_make_inode(%struct.super_block* %23, i32 %26)
  store %struct.inode* %27, %struct.inode** %15, align 8
  %28 = load %struct.inode*, %struct.inode** %15, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load %struct.dentry*, %struct.dentry** %14, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %44

33:                                               ; preds = %22
  %34 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %35 = load %struct.inode*, %struct.inode** %15, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store %struct.file_operations* %34, %struct.file_operations** %36, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.inode*, %struct.inode** %15, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.dentry*, %struct.dentry** %14, align 8
  %41 = load %struct.inode*, %struct.inode** %15, align 8
  %42 = call i32 @d_add(%struct.dentry* %40, %struct.inode* %41)
  %43 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %43, %struct.dentry** %7, align 8
  br label %44

44:                                               ; preds = %33, %30, %21
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %45
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @ibmasmfs_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
