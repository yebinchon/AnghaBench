; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_cdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_cdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.cdev = type { i32, %struct.file_operations*, i32 }
%struct.device = type { i32 }

@qib_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not allocate cdev for minor %d, %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not add cdev for minor %d, %s (err %d)\0A\00", align 1
@qib_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Could not create device for minor %d, %s (err %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_cdev_init(i32 %0, i8* %1, %struct.file_operations* %2, %struct.cdev** %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file_operations*, align 8
  %9 = alloca %struct.cdev**, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdev*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.file_operations* %2, %struct.file_operations** %8, align 8
  store %struct.cdev** %3, %struct.cdev*** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %15 = load i32, i32* @qib_dev, align 4
  %16 = call i32 @MAJOR(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MKDEV(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  store %struct.device* null, %struct.device** %13, align 8
  %19 = call %struct.cdev* (...) @cdev_alloc()
  store %struct.cdev* %19, %struct.cdev** %12, align 8
  %20 = load %struct.cdev*, %struct.cdev** %12, align 8
  %21 = icmp ne %struct.cdev* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %14, align 4
  br label %70

28:                                               ; preds = %5
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = load %struct.cdev*, %struct.cdev** %12, align 8
  %31 = getelementptr inbounds %struct.cdev, %struct.cdev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.file_operations*, %struct.file_operations** %8, align 8
  %33 = load %struct.cdev*, %struct.cdev** %12, align 8
  %34 = getelementptr inbounds %struct.cdev, %struct.cdev* %33, i32 0, i32 1
  store %struct.file_operations* %32, %struct.file_operations** %34, align 8
  %35 = load %struct.cdev*, %struct.cdev** %12, align 8
  %36 = getelementptr inbounds %struct.cdev, %struct.cdev* %35, i32 0, i32 0
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @kobject_set_name(i32* %36, i8* %37)
  %39 = load %struct.cdev*, %struct.cdev** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @cdev_add(%struct.cdev* %39, i32 %40, i32 1)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46, i32 %48)
  br label %67

50:                                               ; preds = %28
  %51 = load i32, i32* @qib_class, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call %struct.device* @device_create(i32 %51, i32* null, i32 %52, i32* null, i8* %53)
  store %struct.device* %54, %struct.device** %13, align 8
  %55 = load %struct.device*, %struct.device** %13, align 8
  %56 = call i32 @IS_ERR(%struct.device* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %70

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %13, align 8
  %61 = call i32 @PTR_ERR(%struct.device* %60)
  store i32 %61, i32* %14, align 4
  store %struct.device* null, %struct.device** %13, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 (i8*, i32, i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* %63, i32 %65)
  br label %67

67:                                               ; preds = %59, %44
  %68 = load %struct.cdev*, %struct.cdev** %12, align 8
  %69 = call i32 @cdev_del(%struct.cdev* %68)
  store %struct.cdev* null, %struct.cdev** %12, align 8
  br label %70

70:                                               ; preds = %67, %58, %22
  %71 = load %struct.cdev*, %struct.cdev** %12, align 8
  %72 = load %struct.cdev**, %struct.cdev*** %9, align 8
  store %struct.cdev* %71, %struct.cdev** %72, align 8
  %73 = load %struct.device*, %struct.device** %13, align 8
  %74 = load %struct.device**, %struct.device*** %10, align 8
  store %struct.device* %73, %struct.device** %74, align 8
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.cdev* @cdev_alloc(...) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, ...) #1

declare dso_local i32 @kobject_set_name(i32*, i8*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cdev_del(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
