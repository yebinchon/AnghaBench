; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_create_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_create_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.nameidata = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_mnt = common dso_local global %struct.TYPE_7__* null, align 8
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nameidata, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kstrdup(i8* %9, i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_mnt, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev_mnt, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @LOOKUP_PARENT, align 4
  %24 = call i32 @vfs_path_lookup(i32 %20, %struct.TYPE_7__* %21, i8* %22, i32 %23, %struct.nameidata* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = call %struct.dentry* @lookup_create(%struct.nameidata* %5, i32 1)
  store %struct.dentry* %28, %struct.dentry** %7, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call i32 @IS_ERR(%struct.dentry* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call i32 @vfs_mkdir(%struct.TYPE_8__* %37, %struct.dentry* %38, i32 493)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = call i32 @dput(%struct.dentry* %40)
  br label %42

42:                                               ; preds = %32, %27
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %51 = call i32 @path_put(%struct.TYPE_9__* %50)
  br label %85

52:                                               ; preds = %17
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %57, %78
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 47)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %83

65:                                               ; preds = %59
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @dev_mkdir(i8* %68, i32 493)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @EEXIST, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72, %65
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 47, i8* %80, align 1
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %8, align 8
  br label %59

83:                                               ; preds = %77, %64
  br label %84

84:                                               ; preds = %83, %52
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_7__*, i8*, i32, %struct.nameidata*) #1

declare dso_local %struct.dentry* @lookup_create(%struct.nameidata*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_8__*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.TYPE_9__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_mkdir(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
