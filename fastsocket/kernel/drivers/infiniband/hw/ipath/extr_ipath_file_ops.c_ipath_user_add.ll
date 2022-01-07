; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_user_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_user_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32 }

@user_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to set up user support: error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ipath\00", align 1
@ipath_file_ops = common dso_local global i32 0, align 4
@wildcard_cdev = common dso_local global i32 0, align 4
@wildcard_dev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Could not create wildcard minor: error %d\0A\00", align 1
@user_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ipath%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Could not create user minor %d, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_user_add(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %5 = call i32 @atomic_inc_return(i32* @user_count)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = call i32 (...) @user_init()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 (%struct.ipath_devdata*, i8*, i32, ...) @ipath_dev_err(%struct.ipath_devdata* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %56

16:                                               ; preds = %7
  %17 = call i32 @init_cdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @ipath_file_ops, i32* @wildcard_cdev, i32* @wildcard_dev)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 (%struct.ipath_devdata*, i8*, i32, ...) @ipath_dev_err(%struct.ipath_devdata* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %54

25:                                               ; preds = %16
  %26 = call i32 @atomic_set(i32* @user_setup, i32 1)
  br label %27

27:                                               ; preds = %25, %1
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snprintf(i8* %28, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 2
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 1
  %42 = call i32 @init_cdev(i32 %36, i8* %37, i32* @ipath_file_ops, i32* %39, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %27
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %52 = call i32 (%struct.ipath_devdata*, i8*, i32, ...) @ipath_dev_err(%struct.ipath_devdata* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %45, %27
  br label %56

54:                                               ; preds = %20
  %55 = call i32 (...) @user_cleanup()
  br label %56

56:                                               ; preds = %54, %53, %11
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @user_init(...) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32, ...) #1

declare dso_local i32 @init_cdev(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @user_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
