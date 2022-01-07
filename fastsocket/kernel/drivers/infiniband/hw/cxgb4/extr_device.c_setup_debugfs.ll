; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_setup_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_setup_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"qps\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@qp_debugfs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stags\00", align 1
@stag_debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*)* @setup_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_debugfs(%struct.c4iw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  %5 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %6 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32, i32* @S_IWUSR, align 4
  %12 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %13 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %16 = bitcast %struct.c4iw_dev* %15 to i8*
  %17 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i8* %16, i32* @qp_debugfs_fops)
  store %struct.dentry* %17, %struct.dentry** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %10
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 4096, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20, %10
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %33 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %36 = bitcast %struct.c4iw_dev* %35 to i8*
  %37 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i8* %36, i32* @stag_debugfs_fops)
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = icmp ne %struct.dentry* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 4096, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40, %30
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
