; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@macvtap_major = common dso_local global i32 0, align 4
@MACVTAP_NUM_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"macvtap\00", align 1
@macvtap_cdev = common dso_local global i32 0, align 4
@macvtap_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@macvtap_class = common dso_local global i32 0, align 4
@macvtap_link_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @macvtap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MACVTAP_NUM_DEVS, align 4
  %4 = call i32 @alloc_chrdev_region(i32* @macvtap_major, i32 0, i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %40

8:                                                ; preds = %0
  %9 = call i32 @cdev_init(i32* @macvtap_cdev, i32* @macvtap_fops)
  %10 = load i32, i32* @macvtap_major, align 4
  %11 = load i32, i32* @MACVTAP_NUM_DEVS, align 4
  %12 = call i32 @cdev_add(i32* @macvtap_cdev, i32 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %36

16:                                               ; preds = %8
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = call i32 @class_create(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* @macvtap_class, align 4
  %19 = load i32, i32* @macvtap_class, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @macvtap_class, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %16
  %26 = call i32 @macvlan_link_register(i32* @macvtap_link_ops)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %42

31:                                               ; preds = %29
  %32 = load i32, i32* @macvtap_class, align 4
  %33 = call i32 @class_unregister(i32 %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = call i32 @cdev_del(i32* @macvtap_cdev)
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* @macvtap_major, align 4
  %38 = load i32, i32* @MACVTAP_NUM_DEVS, align 4
  %39 = call i32 @unregister_chrdev_region(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %7
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local i32 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @macvlan_link_register(i32*) #1

declare dso_local i32 @class_unregister(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
