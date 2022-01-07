; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_dir_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_dir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.spu_context = type { i32 }
%struct.TYPE_6__ = type { %struct.spu_context* }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spufs_dir_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_dir_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.spu_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_6__* @SPUFS_I(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.spu_context*, %struct.spu_context** %22, align 8
  store %struct.spu_context* %23, %struct.spu_context** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* @I_MUTEX_PARENT, align 4
  %27 = call i32 @mutex_lock_nested(i32* %25, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @spufs_rmdir(%struct.inode* %28, %struct.dentry* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %37 = call i32 @spu_forget(%struct.spu_context* %36)
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = call i32 @dcache_dir_close(%struct.inode* %38, %struct.file* %39)
  ret i32 %40
}

declare dso_local %struct.TYPE_6__* @SPUFS_I(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @spufs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spu_forget(%struct.spu_context*) #1

declare dso_local i32 @dcache_dir_close(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
