; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@zcrypt_dbf_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zcrypt_device* @zcrypt_device_alloc(i64 %0) #0 {
  %2 = alloca %struct.zcrypt_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_device*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.zcrypt_device* @kzalloc(i32 32, i32 %5)
  store %struct.zcrypt_device* %6, %struct.zcrypt_device** %4, align 8
  %7 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %8 = icmp ne %struct.zcrypt_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kmalloc(i64 %11, i32 %12)
  %14 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %15 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %18 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %38

23:                                               ; preds = %10
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %26 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %29 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %28, i32 0, i32 2
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %32 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* @zcrypt_dbf_devices, align 4
  %35 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %36 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  store %struct.zcrypt_device* %37, %struct.zcrypt_device** %2, align 8
  br label %41

38:                                               ; preds = %22
  %39 = load %struct.zcrypt_device*, %struct.zcrypt_device** %4, align 8
  %40 = call i32 @kfree(%struct.zcrypt_device* %39)
  store %struct.zcrypt_device* null, %struct.zcrypt_device** %2, align 8
  br label %41

41:                                               ; preds = %38, %23, %9
  %42 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  ret %struct.zcrypt_device* %42
}

declare dso_local %struct.zcrypt_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
