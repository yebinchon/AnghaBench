; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_sysfs.c_mlx4_ib_device_register_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_sysfs.c_mlx4_ib_device_register_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_4__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"iov\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mlx4_ib_device_register_sysfs error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_device_register_sysfs(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mlx4_is_master(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

12:                                               ; preds = %1
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @kobject_get(i8* %18)
  %20 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %12
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @kobject_get(i8* %33)
  %35 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %76

45:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %47, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @add_port_entries(%struct.mlx4_ib_dev* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %71

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %66 = call i32 @register_pkey_tree(%struct.mlx4_ib_dev* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %92

71:                                               ; preds = %69, %59
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @kobject_put(i8* %74)
  br label %76

76:                                               ; preds = %71, %42
  %77 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @kobject_put(i8* %79)
  br label %81

81:                                               ; preds = %76, %27
  %82 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @kobject_put(i8* %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %81, %70, %11
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @kobject_get(i8*) #1

declare dso_local i32 @add_port_entries(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @register_pkey_tree(%struct.mlx4_ib_dev*) #1

declare dso_local i32 @kobject_put(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
