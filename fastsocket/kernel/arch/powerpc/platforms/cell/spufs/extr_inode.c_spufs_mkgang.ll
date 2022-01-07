; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkgang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkgang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.spu_gang = type { i32 }
%struct.TYPE_2__ = type { %struct.spu_gang*, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @spufs_mkgang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mkgang(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.spu_gang*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.inode* @spufs_new_inode(i32 %15, i32 %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %71

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @S_ISGID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @S_ISGID, align 4
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %30, %23
  %42 = call %struct.spu_gang* (...) @alloc_spu_gang()
  store %struct.spu_gang* %42, %struct.spu_gang** %10, align 8
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.spu_gang*, %struct.spu_gang** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.spu_gang* %46, %struct.spu_gang** %49, align 8
  %50 = load %struct.spu_gang*, %struct.spu_gang** %10, align 8
  %51 = icmp ne %struct.spu_gang* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %68

53:                                               ; preds = %41
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %57, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call i32 @d_instantiate(%struct.dentry* %58, %struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call i32 @inc_nlink(%struct.inode* %61)
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load %struct.inode*, %struct.inode** %64, align 8
  %66 = call i32 @inc_nlink(%struct.inode* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %73

68:                                               ; preds = %52
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = call i32 @iput(%struct.inode* %69)
  br label %71

71:                                               ; preds = %68, %22
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %53
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.inode* @spufs_new_inode(i32, i32) #1

declare dso_local %struct.spu_gang* @alloc_spu_gang(...) #1

declare dso_local %struct.TYPE_2__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
