; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_set_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_set_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }

@nvme_instance_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dev_list_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*)* @nvme_set_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_set_instance(%struct.nvme_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @ida_pre_get(i32* @nvme_instance_ida, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %6
  %14 = call i32 @spin_lock(i32* @dev_list_lock)
  %15 = call i32 @ida_get_new(i32* @nvme_instance_ida, i32* %4)
  store i32 %15, i32* %5, align 4
  %16 = call i32 @spin_unlock(i32* @dev_list_lock)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %6, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
