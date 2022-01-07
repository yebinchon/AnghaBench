; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i8*, i32*, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hypfs_file_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, i8*, i8*, i32)* @hypfs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hypfs_create_file(%struct.super_block* %0, %struct.dentry* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = call %struct.dentry* @lookup_one_len(i8* %18, %struct.dentry* %19, i64 %21)
  store %struct.dentry* %22, %struct.dentry** %11, align 8
  %23 = load %struct.dentry*, %struct.dentry** %11, align 8
  %24 = call i64 @IS_ERR(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dentry* @ERR_PTR(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %11, align 8
  br label %89

30:                                               ; preds = %5
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.inode* @hypfs_make_inode(%struct.super_block* %31, i32 %32)
  store %struct.inode* %33, %struct.inode** %12, align 8
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = icmp ne %struct.inode* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.dentry*, %struct.dentry** %11, align 8
  %38 = call i32 @dput(%struct.dentry* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.dentry* @ERR_PTR(i32 %40)
  store %struct.dentry* %41, %struct.dentry** %11, align 8
  br label %89

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @S_IFREG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32* @hypfs_file_ops, i32** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %60

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %12, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %80

61:                                               ; preds = %42
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @S_IFDIR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %12, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %70, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %79

77:                                               ; preds = %61
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %66
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.inode*, %struct.inode** %12, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.dentry*, %struct.dentry** %11, align 8
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = call i32 @d_instantiate(%struct.dentry* %84, %struct.inode* %85)
  %87 = load %struct.dentry*, %struct.dentry** %11, align 8
  %88 = call i32 @dget(%struct.dentry* %87)
  br label %89

89:                                               ; preds = %80, %36, %26
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @hypfs_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
