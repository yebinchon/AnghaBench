; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_remove_device_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_remove_device_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qib_devdata = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Lookup of %s failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"counters\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"counter_names\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"portcounter_names\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"port%dcounters\00", align 1
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"qsfp%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.qib_devdata*)* @remove_device_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_device_files(%struct.super_block* %0, %struct.qib_devdata* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dentry* @dget(i32 %13)
  store %struct.dentry* %14, %struct.dentry** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i8* %20, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  %29 = call %struct.dentry* @lookup_one_len(i8* %25, %struct.dentry* %26, i32 %28)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = call i64 @IS_ERR(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i32 @PTR_ERR(%struct.dentry* %34)
  store i32 %35, i32* %8, align 4
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %87

38:                                               ; preds = %2
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @remove_file(%struct.dentry* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @remove_file(%struct.dentry* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i32 @remove_file(%struct.dentry* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %74, %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %58 = call i32 @remove_file(%struct.dentry* %56, i8* %57)
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @QIB_HAS_QSFP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %72 = call i32 @remove_file(%struct.dentry* %70, i8* %71)
  br label %73

73:                                               ; preds = %65, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = call i32 @remove_file(%struct.dentry* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = call i32 @d_delete(%struct.dentry* %80)
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = call i32 @simple_rmdir(%struct.TYPE_2__* %84, %struct.dentry* %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %77, %33
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = call i32 @dput(%struct.dentry* %93)
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @remove_file(%struct.dentry*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(%struct.TYPE_2__*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
