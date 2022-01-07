; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@zcrypt_device_lock = common dso_local global i32 0, align 4
@zcrypt_device_count = common dso_local global i32 0, align 4
@zcrypt_device_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcrypt_device_unregister(%struct.zcrypt_device* %0) #0 {
  %2 = alloca %struct.zcrypt_device*, align 8
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %2, align 8
  %3 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  %4 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @zcrypt_rng_device_remove()
  br label %11

11:                                               ; preds = %9, %1
  %12 = call i32 @spin_lock_bh(i32* @zcrypt_device_lock)
  %13 = load i32, i32* @zcrypt_device_count, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @zcrypt_device_count, align 4
  %15 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  %16 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = call i32 @spin_unlock_bh(i32* @zcrypt_device_lock)
  %19 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  %20 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_group(i32* %23, i32* @zcrypt_device_attr_group)
  %25 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  %26 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @put_device(%struct.TYPE_6__* %28)
  %30 = load %struct.zcrypt_device*, %struct.zcrypt_device** %2, align 8
  %31 = call i32 @zcrypt_device_put(%struct.zcrypt_device* %30)
  ret void
}

declare dso_local i32 @zcrypt_rng_device_remove(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @zcrypt_device_put(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
