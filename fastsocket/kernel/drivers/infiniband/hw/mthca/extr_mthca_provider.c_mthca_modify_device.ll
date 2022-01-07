; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_modify_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_modify = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* @mthca_modify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device_modify*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %21
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %35 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 64)
  %38 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %39 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %30, %16
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %27, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
