; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_core.c_register_miscdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_core.c_register_miscdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@rng_miscdev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dev_attr_rng_current = common dso_local global i32 0, align 4
@dev_attr_rng_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_miscdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_miscdev() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @misc_register(%struct.TYPE_4__* @rng_miscdev)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %19

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rng_miscdev, i32 0, i32 0), align 4
  %8 = call i32 @device_create_file(i32 %7, i32* @dev_attr_rng_current)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %24

12:                                               ; preds = %6
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rng_miscdev, i32 0, i32 0), align 4
  %14 = call i32 @device_create_file(i32 %13, i32* @dev_attr_rng_available)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %21

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %24, %18, %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rng_miscdev, i32 0, i32 0), align 4
  %23 = call i32 @device_remove_file(i32 %22, i32* @dev_attr_rng_current)
  br label %24

24:                                               ; preds = %21, %11
  %25 = call i32 @misc_deregister(%struct.TYPE_4__* @rng_miscdev)
  br label %19
}

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
