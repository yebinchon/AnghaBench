; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_init_ieee1394_nodemgr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_init_ieee1394_nodemgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@nodemgr_ne_class = common dso_local global i32 0, align 4
@nodemgr_ud_class = common dso_local global i32 0, align 4
@nodemgr_mid_layer_driver = common dso_local global i32 0, align 4
@nodemgr_dev_template_host = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nodemgr_highlevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_ieee1394_nodemgr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @class_register(i32* @nodemgr_ne_class)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %23

7:                                                ; preds = %0
  %8 = call i32 @class_register(i32* @nodemgr_ud_class)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %21

12:                                               ; preds = %7
  %13 = call i32 @driver_register(i32* @nodemgr_mid_layer_driver)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %12
  store i32* @nodemgr_mid_layer_driver, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nodemgr_dev_template_host, i32 0, i32 0), align 8
  %18 = call i32 @hpsb_register_highlevel(i32* @nodemgr_highlevel)
  store i32 0, i32* %1, align 4
  br label %25

19:                                               ; preds = %16
  %20 = call i32 @class_unregister(i32* @nodemgr_ud_class)
  br label %21

21:                                               ; preds = %19, %11
  %22 = call i32 @class_unregister(i32* @nodemgr_ne_class)
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @class_register(i32*) #1

declare dso_local i32 @driver_register(i32*) #1

declare dso_local i32 @hpsb_register_highlevel(i32*) #1

declare dso_local i32 @class_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
