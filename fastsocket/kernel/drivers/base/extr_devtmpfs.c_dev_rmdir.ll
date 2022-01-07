; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_dev_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_dev_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dentry = type { i64 }

@dev_mnt = common dso_local global %struct.TYPE_9__* null, align 8
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dev_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rmdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nameidata, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @LOOKUP_PARENT, align 4
  %13 = call i32 @vfs_path_lookup(i32 %9, %struct.TYPE_9__* %10, i8* %11, i32 %12, %struct.nameidata* %4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %73

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* @I_MUTEX_PARENT, align 4
  %26 = call i32 @mutex_lock_nested(i32* %24, i32 %25)
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.dentry* @lookup_one_len(i32 %29, %struct.TYPE_11__* %32, i32 %35)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @IS_ERR(%struct.dentry* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %18
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = call i32 @vfs_rmdir(%struct.TYPE_8__* %50, %struct.dentry* %51)
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  br label %62

59:                                               ; preds = %18
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = call i32 @PTR_ERR(%struct.dentry* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %71 = call i32 @path_put(%struct.TYPE_10__* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %62, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_9__*, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_rmdir(%struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
