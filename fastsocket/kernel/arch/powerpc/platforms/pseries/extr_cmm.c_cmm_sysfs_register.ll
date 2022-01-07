; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_sysfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_sysfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32*, i64 }

@cmm_sysdev_class = common dso_local global i32 0, align 4
@cmm_attrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @cmm_sysfs_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_sysfs_register(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %6 = call i32 @sysdev_class_register(i32* @cmm_sysdev_class)
  store i32 %6, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %2, align 4
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %12 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %14 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %13, i32 0, i32 0
  store i32* @cmm_sysdev_class, i32** %14, align 8
  %15 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %16 = call i32 @sysdev_register(%struct.sys_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %56

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @cmm_attrs, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %27 = load i32*, i32** @cmm_attrs, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sysdev_create_file(%struct.sys_device* %26, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %40

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20

39:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %59

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %47 = load i32*, i32** @cmm_attrs, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sysdev_remove_file(%struct.sys_device* %46, i32 %51)
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %55 = call i32 @sysdev_unregister(%struct.sys_device* %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = call i32 @sysdev_class_unregister(i32* @cmm_sysdev_class)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %39, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @sysdev_class_register(i32*) #1

declare dso_local i32 @sysdev_register(%struct.sys_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sysdev_create_file(%struct.sys_device*, i32) #1

declare dso_local i32 @sysdev_remove_file(%struct.sys_device*, i32) #1

declare dso_local i32 @sysdev_unregister(%struct.sys_device*) #1

declare dso_local i32 @sysdev_class_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
