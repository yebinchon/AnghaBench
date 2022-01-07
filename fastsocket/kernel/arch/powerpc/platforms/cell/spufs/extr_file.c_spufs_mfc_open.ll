; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mfc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mfc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32, i32 }
%struct.file = type { %struct.spu_context* }
%struct.spu_context = type { i64, i32, i32 }
%struct.spufs_inode_info = type { i32, %struct.spu_context* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spufs_mfc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mfc_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.spufs_inode_info*, align 8
  %7 = alloca %struct.spu_context*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.spufs_inode_info* @SPUFS_I(%struct.inode* %8)
  store %struct.spufs_inode_info* %9, %struct.spufs_inode_info** %6, align 8
  %10 = load %struct.spufs_inode_info*, %struct.spufs_inode_info** %6, align 8
  %11 = getelementptr inbounds %struct.spufs_inode_info, %struct.spufs_inode_info* %10, i32 0, i32 1
  %12 = load %struct.spu_context*, %struct.spu_context** %11, align 8
  store %struct.spu_context* %12, %struct.spu_context** %7, align 8
  %13 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %23
  %32 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.spu_context* %35, %struct.spu_context** %37, align 8
  %38 = load %struct.spufs_inode_info*, %struct.spufs_inode_info** %6, align 8
  %39 = getelementptr inbounds %struct.spufs_inode_info, %struct.spufs_inode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  %48 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.spu_context*, %struct.spu_context** %7, align 8
  %51 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = call i32 @nonseekable_open(%struct.inode* %53, %struct.file* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %28, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.spufs_inode_info* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
