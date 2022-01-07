; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32*, i32 }
%struct.inode = type { i32, i32, i32, i32*, i32*, i32, i32, i32 }

@CAPIFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@capifs_sops = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@capifs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"capifs: get root dentry failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @capifs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capifs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  store i32 1024, i32* %10, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  store i32 10, i32* %12, align 4
  %13 = load i32, i32* @CAPIFS_SUPER_MAGIC, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 4
  store i32* @capifs_sops, i32** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call %struct.inode* @new_inode(%struct.super_block* %20)
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %63

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @CURRENT_TIME, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 6
  store i32 %28, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 7
  store i32 %28, i32* %34, align 8
  %35 = load i32, i32* @S_IFDIR, align 4
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @S_IXUGO, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @S_IWUSR, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 4
  store i32* @simple_dir_inode_operations, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 3
  store i32* @simple_dir_operations, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store i32 2, i32* %49, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i32 @d_alloc_root(%struct.inode* %50)
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  store i32 %51, i32* @capifs_root, align 4
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %25
  %60 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @iput(%struct.inode* %61)
  br label %63

63:                                               ; preds = %59, %24
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
