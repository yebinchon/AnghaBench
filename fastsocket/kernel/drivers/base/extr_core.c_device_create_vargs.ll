; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_create_vargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c_device_create_vargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32 }
%struct.device = type { i32, i32, %struct.device*, %struct.class*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_create_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @device_create_vargs(%struct.class* %0, %struct.device* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.class*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.device* null, %struct.device** %14, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.class*, %struct.class** %8, align 8
  %19 = icmp eq %struct.class* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load %struct.class*, %struct.class** %8, align 8
  %22 = call i64 @IS_ERR(%struct.class* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %6
  br label %65

25:                                               ; preds = %20
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.device* @kzalloc(i32 32, i32 %26)
  store %struct.device* %27, %struct.device** %14, align 8
  %28 = load %struct.device*, %struct.device** %14, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %65

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.device*, %struct.device** %14, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.class*, %struct.class** %8, align 8
  %38 = load %struct.device*, %struct.device** %14, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 3
  store %struct.class* %37, %struct.class** %39, align 8
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load %struct.device*, %struct.device** %14, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 2
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load i32, i32* @device_create_release, align 4
  %44 = load %struct.device*, %struct.device** %14, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.device*, %struct.device** %14, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @dev_set_drvdata(%struct.device* %46, i8* %47)
  %49 = load %struct.device*, %struct.device** %14, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @kobject_set_name_vargs(i32* %50, i8* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %65

57:                                               ; preds = %33
  %58 = load %struct.device*, %struct.device** %14, align 8
  %59 = call i32 @device_register(%struct.device* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %65

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %64, %struct.device** %7, align 8
  br label %70

65:                                               ; preds = %62, %56, %30, %24
  %66 = load %struct.device*, %struct.device** %14, align 8
  %67 = call i32 @put_device(%struct.device* %66)
  %68 = load i32, i32* %15, align 4
  %69 = call %struct.device* @ERR_PTR(i32 %68)
  store %struct.device* %69, %struct.device** %7, align 8
  br label %70

70:                                               ; preds = %65, %63
  %71 = load %struct.device*, %struct.device** %7, align 8
  ret %struct.device* %71
}

declare dso_local i64 @IS_ERR(%struct.class*) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local i32 @kobject_set_name_vargs(i32*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
