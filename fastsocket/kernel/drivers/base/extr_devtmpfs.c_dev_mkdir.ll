; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_dev_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_dev_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dentry = type { i32 }

@dev_mnt = common dso_local global %struct.TYPE_7__* null, align 8
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dev_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_mkdir(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_mnt, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_mnt, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @LOOKUP_PARENT, align 4
  %15 = call i32 @vfs_path_lookup(i32 %11, %struct.TYPE_7__* %12, i8* %13, i32 %14, %struct.nameidata* %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = call %struct.dentry* @lookup_create(%struct.nameidata* %6, i32 1)
  store %struct.dentry* %21, %struct.dentry** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call i32 @IS_ERR(%struct.dentry* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @vfs_mkdir(%struct.TYPE_8__* %30, %struct.dentry* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = call i32 @dput(%struct.dentry* %34)
  br label %39

36:                                               ; preds = %20
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = call i32 @PTR_ERR(%struct.dentry* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %25
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %48 = call i32 @path_put(%struct.TYPE_9__* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_7__*, i8*, i32, %struct.nameidata*) #1

declare dso_local %struct.dentry* @lookup_create(%struct.nameidata*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_8__*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
