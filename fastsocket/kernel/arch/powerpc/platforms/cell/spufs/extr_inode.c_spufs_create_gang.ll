; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_gang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_gang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }

@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.vfsmount*, i32)* @spufs_create_gang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_create_gang(%struct.inode* %0, %struct.dentry* %1, %struct.vfsmount* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.vfsmount* %2, %struct.vfsmount** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @S_IRWXUGO, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @spufs_mkgang(%struct.inode* %11, %struct.dentry* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i32 @dget(%struct.dentry* %21)
  %23 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %24 = call i32 @mntget(%struct.vfsmount* %23)
  %25 = call i32 @spufs_gang_open(i32 %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = call i32 @simple_rmdir(%struct.inode* %29, %struct.dentry* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @WARN_ON(i32 %32)
  br label %34

34:                                               ; preds = %28, %20
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = call i32 @dput(%struct.dentry* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @spufs_mkgang(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @spufs_gang_open(i32, i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @simple_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
