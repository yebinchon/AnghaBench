; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_cpuidle_add_state_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_cpuidle_add_state_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32, %struct.cpuidle_state_kobj**, i32, i32* }
%struct.cpuidle_state_kobj = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ktype_state_cpuidle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"state%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuidle_state_kobj*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.cpuidle_state_kobj* @kzalloc(i32 16, i32 %16)
  store %struct.cpuidle_state_kobj* %17, %struct.cpuidle_state_kobj** %6, align 8
  %18 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %19 = icmp ne %struct.cpuidle_state_kobj* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %60

21:                                               ; preds = %15
  %22 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %23 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %29 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %31 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %30, i32 0, i32 1
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %34 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %33, i32 0, i32 0
  %35 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %36 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %35, i32 0, i32 2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @kobject_init_and_add(i32* %34, i32* @ktype_state_cpuidle, i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %43 = call i32 @kfree(%struct.cpuidle_state_kobj* %42)
  br label %60

44:                                               ; preds = %21
  %45 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %46 = getelementptr inbounds %struct.cpuidle_state_kobj, %struct.cpuidle_state_kobj* %45, i32 0, i32 0
  %47 = load i32, i32* @KOBJ_ADD, align 4
  %48 = call i32 @kobject_uevent(i32* %46, i32 %47)
  %49 = load %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %6, align 8
  %50 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %51 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %50, i32 0, i32 1
  %52 = load %struct.cpuidle_state_kobj**, %struct.cpuidle_state_kobj*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cpuidle_state_kobj*, %struct.cpuidle_state_kobj** %52, i64 %54
  store %struct.cpuidle_state_kobj* %49, %struct.cpuidle_state_kobj** %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %9

59:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %75

60:                                               ; preds = %41, %20
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %70, %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @cpuidle_free_state_kobj(%struct.cpuidle_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  br label %63

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %59
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.cpuidle_state_kobj* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cpuidle_state_kobj*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @cpuidle_free_state_kobj(%struct.cpuidle_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
