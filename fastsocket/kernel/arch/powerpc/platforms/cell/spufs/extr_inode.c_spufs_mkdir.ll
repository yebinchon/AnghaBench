; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.spu_context = type { i32 }
%struct.TYPE_4__ = type { %struct.spu_context*, i32 }
%struct.TYPE_3__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@spufs_dir_nosched_contents = common dso_local global i32 0, align 4
@spufs_dir_contents = common dso_local global i32 0, align 4
@spufs_dir_debug_contents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @spufs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.spu_context*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @ENOSPC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.inode* @spufs_new_inode(i32 %16, i32 %19)
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %121

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @S_ISGID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @S_ISGID, align 4
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %31, %24
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.spu_context* @alloc_spu_context(i32 %46)
  store %struct.spu_context* %47, %struct.spu_context** %11, align 8
  %48 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.spu_context* %48, %struct.spu_context** %51, align 8
  %52 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %53 = icmp ne %struct.spu_context* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %118

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %58 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 3
  store i32* @simple_dir_inode_operations, i32** %60, align 8
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  store i32* @simple_dir_operations, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = load i32, i32* @spufs_dir_nosched_contents, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %72 = call i32 @spufs_fill_dir(%struct.dentry* %68, i32 %69, i32 %70, %struct.spu_context* %71)
  store i32 %72, i32* %9, align 4
  br label %79

73:                                               ; preds = %55
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = load i32, i32* @spufs_dir_contents, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %78 = call i32 @spufs_fill_dir(%struct.dentry* %74, i32 %75, i32 %76, %struct.spu_context* %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %113

83:                                               ; preds = %79
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_3__* @spufs_get_sb_info(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.dentry*, %struct.dentry** %6, align 8
  %93 = load i32, i32* @spufs_dir_debug_contents, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %96 = call i32 @spufs_fill_dir(%struct.dentry* %92, i32 %93, i32 %94, %struct.spu_context* %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %91, %83
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %113

101:                                              ; preds = %97
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i32 @d_instantiate(%struct.dentry* %102, %struct.inode* %103)
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = call i32 @dget(%struct.dentry* %105)
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = call i32 @inc_nlink(%struct.inode* %107)
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  %111 = load %struct.inode*, %struct.inode** %110, align 8
  %112 = call i32 @inc_nlink(%struct.inode* %111)
  br label %121

113:                                              ; preds = %100, %82
  %114 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %115 = call i32 @spu_forget(%struct.spu_context* %114)
  %116 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  %117 = call i32 @put_spu_context(%struct.spu_context* %116)
  br label %118

118:                                              ; preds = %113, %54
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = call i32 @iput(%struct.inode* %119)
  br label %121

121:                                              ; preds = %118, %101, %23
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local %struct.inode* @spufs_new_inode(i32, i32) #1

declare dso_local %struct.spu_context* @alloc_spu_context(i32) #1

declare dso_local %struct.TYPE_4__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @spufs_fill_dir(%struct.dentry*, i32, i32, %struct.spu_context*) #1

declare dso_local %struct.TYPE_3__* @spufs_get_sb_info(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @spu_forget(%struct.spu_context*) #1

declare dso_local i32 @put_spu_context(%struct.spu_context*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
