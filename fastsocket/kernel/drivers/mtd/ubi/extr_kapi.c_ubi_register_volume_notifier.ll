; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_register_volume_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_register_volume_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@ubi_notifiers = common dso_local global i32 0, align 4
@ubi_devices_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_register_volume_notifier(%struct.notifier_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %8 = call i32 @blocking_notifier_chain_register(i32* @ubi_notifiers, %struct.notifier_block* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %23

17:                                               ; preds = %13
  %18 = call i32 @mutex_lock(i32* @ubi_devices_mutex)
  %19 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %20 = call i32 @ubi_enumerate_volumes(%struct.notifier_block* %19)
  %21 = call i32 @mutex_unlock(i32* @ubi_devices_mutex)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %16, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_enumerate_volumes(%struct.notifier_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
