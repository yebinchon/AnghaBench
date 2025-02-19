; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pf_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_sony-laptop.c_sony_pf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sony_pf_users = common dso_local global i32 0, align 4
@sony_pf_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sony-laptop\00", align 1
@sony_pf_device = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sony_pf_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_pf_add() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @atomic_add_return(i32 1, i32* @sony_pf_users)
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

6:                                                ; preds = %0
  %7 = call i32 @platform_driver_register(i32* @sony_pf_driver)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %30

11:                                               ; preds = %6
  %12 = call i32* @platform_device_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %12, i32** @sony_pf_device, align 8
  %13 = load i32*, i32** @sony_pf_device, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %11
  %19 = load i32*, i32** @sony_pf_device, align 8
  %20 = call i32 @platform_device_add(i32* %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %33

25:                                               ; preds = %23
  %26 = load i32*, i32** @sony_pf_device, align 8
  %27 = call i32 @platform_device_put(i32* %26)
  store i32* null, i32** @sony_pf_device, align 8
  br label %28

28:                                               ; preds = %25, %15
  %29 = call i32 @platform_driver_unregister(i32* @sony_pf_driver)
  br label %30

30:                                               ; preds = %28, %10
  %31 = call i32 @atomic_dec(i32* @sony_pf_users)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %24, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local i32* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add(i32*) #1

declare dso_local i32 @platform_device_put(i32*) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
