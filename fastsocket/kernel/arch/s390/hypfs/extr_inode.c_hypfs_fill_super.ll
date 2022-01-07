; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry*, i32*, i32, i32, i32, %struct.hypfs_sb_info* }
%struct.dentry = type { i32 }
%struct.hypfs_sb_info = type { i32, i32, i32, i32 }
%struct.inode = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@HYPFS_MAGIC = common dso_local global i32 0, align 4
@hypfs_s_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Hypervisor filesystem mounted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hypfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hypfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hypfs_sb_info* @kzalloc(i32 16, i32 %12)
  store %struct.hypfs_sb_info* %13, %struct.hypfs_sb_info** %11, align 8
  %14 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %15 = icmp ne %struct.hypfs_sb_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %112

19:                                               ; preds = %3
  %20 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %21 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %20, i32 0, i32 3
  %22 = call i32 @mutex_init(i32* %21)
  %23 = call i32 (...) @current_uid()
  %24 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %25 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @current_gid()
  %27 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %28 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 5
  store %struct.hypfs_sb_info* %29, %struct.hypfs_sb_info** %31, align 8
  %32 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @HYPFS_MAGIC, align 4
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  store i32* @hypfs_s_ops, i32** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = call i64 @hypfs_parse_options(i8* %43, %struct.super_block* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %19
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %112

50:                                               ; preds = %19
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = load i32, i32* @S_IFDIR, align 4
  %53 = or i32 %52, 493
  %54 = call %struct.inode* @hypfs_make_inode(%struct.super_block* %51, i32 %53)
  store %struct.inode* %54, %struct.inode** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %112

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %62, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call %struct.dentry* @d_alloc_root(%struct.inode* %65)
  store %struct.dentry* %66, %struct.dentry** %9, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 0
  store %struct.dentry* %66, %struct.dentry** %68, align 8
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = icmp ne %struct.dentry* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i32 @iput(%struct.inode* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %112

76:                                               ; preds = %60
  %77 = load i64, i64* @MACHINE_IS_VM, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = load %struct.dentry*, %struct.dentry** %9, align 8
  %82 = call i32 @hypfs_vm_create_files(%struct.super_block* %80, %struct.dentry* %81)
  store i32 %82, i32* %10, align 4
  br label %87

83:                                               ; preds = %76
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = load %struct.dentry*, %struct.dentry** %9, align 8
  %86 = call i32 @hypfs_diag_create_files(%struct.super_block* %84, %struct.dentry* %85)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %112

92:                                               ; preds = %87
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load %struct.dentry*, %struct.dentry** %9, align 8
  %95 = call i32 @hypfs_create_update_file(%struct.super_block* %93, %struct.dentry* %94)
  %96 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %97 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %99 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %105 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %4, align 4
  br label %112

108:                                              ; preds = %92
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = call i32 @hypfs_update_update(%struct.super_block* %109)
  %111 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %103, %90, %71, %57, %47, %16
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.hypfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i64 @hypfs_parse_options(i8*, %struct.super_block*) #1

declare dso_local %struct.inode* @hypfs_make_inode(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hypfs_vm_create_files(%struct.super_block*, %struct.dentry*) #1

declare dso_local i32 @hypfs_diag_create_files(%struct.super_block*, %struct.dentry*) #1

declare dso_local i32 @hypfs_create_update_file(%struct.super_block*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hypfs_update_update(%struct.super_block*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
