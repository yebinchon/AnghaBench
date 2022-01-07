; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c___hid_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c___hid_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_driver = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, %struct.module*, i32*, i32 }
%struct.module = type { i32 }

@hid_bus_type = common dso_local global i32 0, align 4
@driver_attr_new_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hid_register_driver(%struct.hid_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_driver* %0, %struct.hid_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %10 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %13 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %16 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32* @hid_bus_type, i32** %17, align 8
  %18 = load %struct.module*, %struct.module** %6, align 8
  %19 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %20 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.module* %18, %struct.module** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %24 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %27 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %26, i32 0, i32 2
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %30 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %33 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_register(%struct.TYPE_4__* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %41 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %40, i32 0, i32 0
  %42 = call i32 @driver_create_file(%struct.TYPE_4__* %41, i32* @driver_attr_new_id)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.hid_driver*, %struct.hid_driver** %5, align 8
  %47 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %46, i32 0, i32 0
  %48 = call i32 @driver_unregister(%struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

declare dso_local i32 @driver_create_file(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
