; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.vfsmount = type { i32 }
%struct.file = type { i32 }
%struct.spu_gang = type { i32 }
%struct.spu_context = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.spu_gang* }

@EPERM = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPU_CREATE_ISOLATE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@isolated_loader = common dso_local global i32 0, align 4
@SPU_CREATE_AFFINITY_MEM = common dso_local global i32 0, align 4
@SPU_CREATE_AFFINITY_SPU = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.vfsmount*, i32, i32, %struct.file*)* @spufs_create_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_create_context(%struct.inode* %0, %struct.dentry* %1, %struct.vfsmount* %2, i32 %3, i32 %4, %struct.file* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.vfsmount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.spu_gang*, align 8
  %16 = alloca %struct.spu_context*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.vfsmount* %2, %struct.vfsmount** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.file* %5, %struct.file** %12, align 8
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i32, i32* @CAP_SYS_NICE, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %152

28:                                               ; preds = %23, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %33 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %152

39:                                               ; preds = %28
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @isolated_loader, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %152

50:                                               ; preds = %46, %39
  store %struct.spu_gang* null, %struct.spu_gang** %15, align 8
  store %struct.spu_context* null, %struct.spu_context** %16, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SPU_CREATE_AFFINITY_MEM, align 4
  %53 = load i32, i32* @SPU_CREATE_AFFINITY_SPU, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.spu_gang*, %struct.spu_gang** %61, align 8
  store %struct.spu_gang* %62, %struct.spu_gang** %15, align 8
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  %65 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %66 = icmp ne %struct.spu_gang* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %152

68:                                               ; preds = %58
  %69 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %70 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %74 = load %struct.file*, %struct.file** %12, align 8
  %75 = call %struct.spu_context* @spufs_assert_affinity(i32 %72, %struct.spu_gang* %73, %struct.file* %74)
  store %struct.spu_context* %75, %struct.spu_context** %16, align 8
  %76 = load %struct.spu_context*, %struct.spu_context** %16, align 8
  %77 = call i64 @IS_ERR(%struct.spu_context* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.spu_context*, %struct.spu_context** %16, align 8
  %81 = call i32 @PTR_ERR(%struct.spu_context* %80)
  store i32 %81, i32* %13, align 4
  br label %144

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %50
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = load %struct.dentry*, %struct.dentry** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @S_IRWXUGO, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @spufs_mkdir(%struct.inode* %84, %struct.dentry* %85, i32 %86, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %144

94:                                               ; preds = %83
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  %101 = load %struct.inode*, %struct.inode** %100, align 8
  %102 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.spu_context*, %struct.spu_context** %16, align 8
  %106 = call i32 @spufs_set_affinity(i32 %98, i32 %104, %struct.spu_context* %105)
  %107 = load %struct.spu_context*, %struct.spu_context** %16, align 8
  %108 = icmp ne %struct.spu_context* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.spu_context*, %struct.spu_context** %16, align 8
  %111 = call i32 @put_spu_context(%struct.spu_context* %110)
  br label %112

112:                                              ; preds = %109, %97
  br label %113

113:                                              ; preds = %112, %94
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  %115 = call i32 @dget(%struct.dentry* %114)
  %116 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %117 = call i32 @mntget(%struct.vfsmount* %116)
  %118 = call i32 @spufs_context_open(i32 %115, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %113
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = call i32 @spufs_rmdir(%struct.inode* %122, %struct.dentry* %123)
  %125 = call i32 @WARN_ON(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %130 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.dentry*, %struct.dentry** %8, align 8
  %137 = getelementptr inbounds %struct.dentry, %struct.dentry* %136, i32 0, i32 0
  %138 = load %struct.inode*, %struct.inode** %137, align 8
  %139 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @spu_forget(i32 %141)
  br label %156

143:                                              ; preds = %113
  br label %144

144:                                              ; preds = %143, %93, %79
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.spu_gang*, %struct.spu_gang** %15, align 8
  %149 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  br label %151

151:                                              ; preds = %147, %144
  br label %152

152:                                              ; preds = %151, %67, %49, %38, %27
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  br label %156

156:                                              ; preds = %152, %132
  %157 = load %struct.dentry*, %struct.dentry** %8, align 8
  %158 = call i32 @dput(%struct.dentry* %157)
  %159 = load i32, i32* %13, align 4
  ret i32 %159
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.TYPE_2__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.spu_context* @spufs_assert_affinity(i32, %struct.spu_gang*, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.spu_context*) #1

declare dso_local i32 @PTR_ERR(%struct.spu_context*) #1

declare dso_local i32 @spufs_mkdir(%struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @spufs_set_affinity(i32, i32, %struct.spu_context*) #1

declare dso_local i32 @put_spu_context(%struct.spu_context*) #1

declare dso_local i32 @spufs_context_open(i32, i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spufs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spu_forget(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
