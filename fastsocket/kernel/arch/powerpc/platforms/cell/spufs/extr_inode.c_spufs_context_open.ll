; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_context_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_context_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.file = type { i32* }

@O_RDONLY = common dso_local global i32 0, align 4
@spufs_context_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.vfsmount*)* @spufs_context_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_context_open(%struct.dentry* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %7 = call i32 (...) @get_unused_fd()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call i32 @dput(%struct.dentry* %11)
  %13 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %14 = call i32 @mntput(%struct.vfsmount* %13)
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 (...) @current_cred()
  %20 = call %struct.file* @dentry_open(%struct.dentry* %16, %struct.vfsmount* %17, i32 %18, i32 %19)
  store %struct.file* %20, %struct.file** %6, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = call i64 @IS_ERR(%struct.file* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @put_unused_fd(i32 %25)
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.file* %27)
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %15
  %30 = load %struct.file*, %struct.file** %6, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store i32* @spufs_context_fops, i32** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = call i32 @fd_install(i32 %32, %struct.file* %33)
  br label %35

35:                                               ; preds = %29, %24, %10
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @get_unused_fd(...) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.file* @dentry_open(%struct.dentry*, %struct.vfsmount*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
