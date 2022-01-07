; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_devtmpfs_create_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_devtmpfs_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.device = type { i32 }
%struct.cred = type { i32 }
%struct.nameidata = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dentry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__** }

@dev_mnt = common dso_local global %struct.TYPE_9__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@init_cred = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devtmpfs_create_node(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %115

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i8* @device_get_devnode(%struct.device* %16, i32* %7, i8** %4)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 384, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i64 @is_blockdev(%struct.device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @S_IFBLK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @S_IFCHR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = call %struct.cred* @override_creds(i32* @init_cred)
  store %struct.cred* %40, %struct.cred** %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @LOOKUP_PARENT, align 4
  %47 = call i32 @vfs_path_lookup(i32 %43, %struct.TYPE_9__* %44, i8* %45, i32 %46, %struct.nameidata* %8)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %39
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @create_path(i8* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_mnt, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @LOOKUP_PARENT, align 4
  %61 = call i32 @vfs_path_lookup(i32 %57, %struct.TYPE_9__* %58, i8* %59, i32 %60, %struct.nameidata* %8)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %109

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %39
  %67 = call %struct.dentry* @lookup_create(%struct.nameidata* %8, i32 0)
  store %struct.dentry* %67, %struct.dentry** %9, align 8
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = call i32 @IS_ERR(%struct.dentry* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %66
  %72 = call i32 @sys_umask(i32 0)
  store i32 %72, i32* %11, align 4
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vfs_mknod(%struct.TYPE_10__* %77, %struct.dentry* %78, i32 %79, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @sys_umask(i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %71
  %89 = load %struct.dentry*, %struct.dentry** %9, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store %struct.TYPE_9__** @dev_mnt, %struct.TYPE_9__*** %92, align 8
  br label %93

93:                                               ; preds = %88, %71
  %94 = load %struct.dentry*, %struct.dentry** %9, align 8
  %95 = call i32 @dput(%struct.dentry* %94)
  br label %99

96:                                               ; preds = %66
  %97 = load %struct.dentry*, %struct.dentry** %9, align 8
  %98 = call i32 @PTR_ERR(%struct.dentry* %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %108 = call i32 @path_put(%struct.TYPE_11__* %107)
  br label %109

109:                                              ; preds = %99, %64
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 @kfree(i8* %110)
  %112 = load %struct.cred*, %struct.cred** %6, align 8
  %113 = call i32 @revert_creds(%struct.cred* %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %20, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i8* @device_get_devnode(%struct.device*, i32*, i8**) #1

declare dso_local i64 @is_blockdev(%struct.device*) #1

declare dso_local %struct.cred* @override_creds(i32*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_9__*, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @create_path(i8*) #1

declare dso_local %struct.dentry* @lookup_create(%struct.nameidata*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @sys_umask(i32) #1

declare dso_local i32 @vfs_mknod(%struct.TYPE_10__*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @path_put(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
