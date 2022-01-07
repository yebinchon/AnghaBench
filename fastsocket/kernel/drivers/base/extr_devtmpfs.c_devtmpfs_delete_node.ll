; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_devtmpfs_delete_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_devtmpfs.c_devtmpfs_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.device = type { i32 }
%struct.cred = type { i32 }
%struct.nameidata = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.kstat = type { i32 }
%struct.iattr = type { i32, i32, i64, i64 }

@dev_mnt = common dso_local global %struct.TYPE_10__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@init_cred = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devtmpfs_delete_node(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.kstat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iattr, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 1, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dev_mnt, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i8* @device_get_devnode(%struct.device* %17, i32* null, i8** %4)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %155

24:                                               ; preds = %16
  %25 = call %struct.cred* @override_creds(i32* @init_cred)
  store %struct.cred* %25, %struct.cred** %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dev_mnt, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dev_mnt, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @LOOKUP_PARENT, align 4
  %32 = call i32 @vfs_path_lookup(i32 %28, %struct.TYPE_10__* %29, i8* %30, i32 %31, %struct.nameidata* %7)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %149

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* @I_MUTEX_PARENT, align 4
  %44 = call i32 @mutex_lock_nested(i32* %42, i32 %43)
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.dentry* @lookup_one_len(i32 %47, %struct.TYPE_12__* %50, i32 %53)
  store %struct.dentry* %54, %struct.dentry** %8, align 8
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = call i32 @IS_ERR(%struct.dentry* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %126, label %58

58:                                               ; preds = %36
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %120

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = call i32 @vfs_getattr(i32 %66, %struct.dentry* %67, %struct.kstat* %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %119, label %71

71:                                               ; preds = %63
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = call i64 @dev_mynode(%struct.device* %72, %struct.TYPE_13__* %75, %struct.kstat* %9)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.kstat, %struct.kstat* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -512
  %84 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @ATTR_UID, align 4
  %86 = load i32, i32* @ATTR_GID, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @ATTR_MODE, align 4
  %89 = or i32 %87, %88
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.dentry*, %struct.dentry** %8, align 8
  %97 = call i32 @notify_change(%struct.dentry* %96, %struct.iattr* %12)
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load %struct.dentry*, %struct.dentry** %8, align 8
  %109 = call i32 @vfs_unlink(%struct.TYPE_9__* %107, %struct.dentry* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %78
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %78
  store i32 1, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %112
  br label %119

119:                                              ; preds = %118, %71, %63
  br label %123

120:                                              ; preds = %58
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %120, %119
  %124 = load %struct.dentry*, %struct.dentry** %8, align 8
  %125 = call i32 @dput(%struct.dentry* %124)
  br label %129

126:                                              ; preds = %36
  %127 = load %struct.dentry*, %struct.dentry** %8, align 8
  %128 = call i32 @PTR_ERR(%struct.dentry* %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %138 = call i32 @path_put(%struct.TYPE_11__* %137)
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %129
  %142 = load i8*, i8** %5, align 8
  %143 = call i64 @strchr(i8* %142, i8 signext 47)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @delete_path(i8* %146)
  br label %148

148:                                              ; preds = %145, %141, %129
  br label %149

149:                                              ; preds = %148, %35
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @kfree(i8* %150)
  %152 = load %struct.cred*, %struct.cred** %6, align 8
  %153 = call i32 @revert_creds(%struct.cred* %152)
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %21, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i8* @device_get_devnode(%struct.device*, i32*, i8**) #1

declare dso_local %struct.cred* @override_creds(i32*) #1

declare dso_local i32 @vfs_path_lookup(i32, %struct.TYPE_10__*, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @vfs_getattr(i32, %struct.dentry*, %struct.kstat*) #1

declare dso_local i64 @dev_mynode(%struct.device*, %struct.TYPE_13__*, %struct.kstat*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_unlink(%struct.TYPE_9__*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @path_put(%struct.TYPE_11__*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @delete_path(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
