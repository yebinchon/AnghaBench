; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_free_ncci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capifs.c_capifs_free_ncci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@capifs_root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @capifs_free_ncci(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.dentry* @get_node(i32 %5)
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call i32 @IS_ERR(%struct.dentry* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = call i32 @d_delete(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @dput(%struct.dentry* %23)
  br label %25

25:                                               ; preds = %16, %10
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i32 @dput(%struct.dentry* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @capifs_root, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local %struct.dentry* @get_node(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
