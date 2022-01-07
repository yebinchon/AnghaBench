; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmlogrdr_iucv_handler = common dso_local global i32 0, align 4
@vmlogrdr_driver = common dso_local global i32 0, align 4
@driver_attr_recording_status = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vmlogrdr\00", align 1
@vmlogrdr_class = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmlogrdr_register_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_register_driver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @iucv_register(i32* @vmlogrdr_iucv_handler, i32 1)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %33

7:                                                ; preds = %0
  %8 = call i32 @driver_register(i32* @vmlogrdr_driver)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %31

12:                                               ; preds = %7
  %13 = call i32 @driver_create_file(i32* @vmlogrdr_driver, i32* @driver_attr_recording_status)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %29

17:                                               ; preds = %12
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = call i32* @class_create(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** @vmlogrdr_class, align 8
  %20 = load i32*, i32** @vmlogrdr_class, align 8
  %21 = call i64 @IS_ERR(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** @vmlogrdr_class, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %2, align 4
  store i32* null, i32** @vmlogrdr_class, align 8
  br label %27

26:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %35

27:                                               ; preds = %23
  %28 = call i32 @driver_remove_file(i32* @vmlogrdr_driver, i32* @driver_attr_recording_status)
  br label %29

29:                                               ; preds = %27, %16
  %30 = call i32 @driver_unregister(i32* @vmlogrdr_driver)
  br label %31

31:                                               ; preds = %29, %11
  %32 = call i32 @iucv_unregister(i32* @vmlogrdr_iucv_handler, i32 1)
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i32, i32* %2, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @iucv_register(i32*, i32) #1

declare dso_local i32 @driver_register(i32*) #1

declare dso_local i32 @driver_create_file(i32*, i32*) #1

declare dso_local i32* @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @driver_remove_file(i32*, i32*) #1

declare dso_local i32 @driver_unregister(i32*) #1

declare dso_local i32 @iucv_unregister(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
