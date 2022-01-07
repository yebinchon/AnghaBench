; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_component_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_enclosure.c_enclosure_component_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { i32, i32, %struct.device }
%struct.device = type { i32, i32, i32 }
%struct.enclosure_device = type { i32, i32, %struct.enclosure_component* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@enclosure_component_release = common dso_local global i32 0, align 4
@enclosure_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.enclosure_component* @enclosure_component_register(%struct.enclosure_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.enclosure_component*, align 8
  %6 = alloca %struct.enclosure_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.enclosure_component*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %15 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.enclosure_component* @ERR_PTR(i32 %20)
  store %struct.enclosure_component* %21, %struct.enclosure_component** %5, align 8
  br label %87

22:                                               ; preds = %4
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %24 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %23, i32 0, i32 2
  %25 = load %struct.enclosure_component*, %struct.enclosure_component** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %25, i64 %27
  store %struct.enclosure_component* %28, %struct.enclosure_component** %10, align 8
  %29 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %30 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.enclosure_component* @ERR_PTR(i32 %35)
  store %struct.enclosure_component* %36, %struct.enclosure_component** %5, align 8
  br label %87

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %40 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %43 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %45 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %44, i32 0, i32 2
  store %struct.device* %45, %struct.device** %11, align 8
  %46 = load %struct.enclosure_device*, %struct.enclosure_device** %6, align 8
  %47 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %46, i32 0, i32 1
  %48 = call i32 @get_device(i32* %47)
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %37
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %11, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %67

63:                                               ; preds = %53, %37
  %64 = load %struct.device*, %struct.device** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @enclosure_component_release, align 4
  %69 = load %struct.device*, %struct.device** %11, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @enclosure_groups, align 4
  %72 = load %struct.device*, %struct.device** %11, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.device*, %struct.device** %11, align 8
  %75 = call i32 @device_register(%struct.device* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  %80 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 4
  %81 = load %struct.device*, %struct.device** %11, align 8
  %82 = call i32 @put_device(%struct.device* %81)
  %83 = load i32, i32* %12, align 4
  %84 = call %struct.enclosure_component* @ERR_PTR(i32 %83)
  store %struct.enclosure_component* %84, %struct.enclosure_component** %5, align 8
  br label %87

85:                                               ; preds = %67
  %86 = load %struct.enclosure_component*, %struct.enclosure_component** %10, align 8
  store %struct.enclosure_component* %86, %struct.enclosure_component** %5, align 8
  br label %87

87:                                               ; preds = %85, %78, %33, %18
  %88 = load %struct.enclosure_component*, %struct.enclosure_component** %5, align 8
  ret %struct.enclosure_component* %88
}

declare dso_local %struct.enclosure_component* @ERR_PTR(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
