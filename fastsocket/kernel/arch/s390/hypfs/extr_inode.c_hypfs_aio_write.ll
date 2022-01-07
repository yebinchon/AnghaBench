; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i64, i32 }
%struct.iovec = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Updating the hypfs tree failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @hypfs_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.hypfs_sb_info*, align 8
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.iovec*, %struct.iovec** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @iov_length(%struct.iovec* %13, i64 %14)
  store i64 %15, i64* %12, align 8
  %16 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %17 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %10, align 8
  %26 = load %struct.super_block*, %struct.super_block** %10, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 1
  %28 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %27, align 8
  store %struct.hypfs_sb_info* %28, %struct.hypfs_sb_info** %11, align 8
  %29 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %30 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %33 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 (...) @get_seconds()
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %73

40:                                               ; preds = %4
  %41 = load %struct.super_block*, %struct.super_block** %10, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hypfs_delete_tree(i32 %43)
  %45 = load i64, i64* @MACHINE_IS_VM, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.super_block*, %struct.super_block** %10, align 8
  %49 = load %struct.super_block*, %struct.super_block** %10, align 8
  %50 = getelementptr inbounds %struct.super_block, %struct.super_block* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hypfs_vm_create_files(%struct.super_block* %48, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %59

53:                                               ; preds = %40
  %54 = load %struct.super_block*, %struct.super_block** %10, align 8
  %55 = load %struct.super_block*, %struct.super_block** %10, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hypfs_diag_create_files(%struct.super_block* %54, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.super_block*, %struct.super_block** %10, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @hypfs_delete_tree(i32 %66)
  br label %73

68:                                               ; preds = %59
  %69 = load %struct.super_block*, %struct.super_block** %10, align 8
  %70 = call i32 @hypfs_update_update(%struct.super_block* %69)
  %71 = load i64, i64* %12, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %62, %37
  %74 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %11, align 8
  %75 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @hypfs_delete_tree(i32) #1

declare dso_local i32 @hypfs_vm_create_files(%struct.super_block*, i32) #1

declare dso_local i32 @hypfs_diag_create_files(%struct.super_block*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hypfs_update_update(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
