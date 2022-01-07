; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_api.c_zcrypt_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@zcrypt_device_attr_group = common dso_local global i32 0, align 4
@zcrypt_device_lock = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dev%04xo%dreg\00", align 1
@zcrypt_device_list = common dso_local global i32 0, align 4
@zcrypt_device_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcrypt_device_register(%struct.zcrypt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zcrypt_device*, align 8
  %4 = alloca i32, align 4
  store %struct.zcrypt_device* %0, %struct.zcrypt_device** %3, align 8
  %5 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %6 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %14 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @sysfs_create_group(i32* %17, i32* @zcrypt_device_attr_group)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %87

22:                                               ; preds = %12
  %23 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %24 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @get_device(%struct.TYPE_7__* %26)
  %28 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %29 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %28, i32 0, i32 4
  %30 = call i32 @kref_init(i32* %29)
  %31 = call i32 @spin_lock_bh(i32* @zcrypt_device_lock)
  %32 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %33 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @DBF_INFO, align 4
  %35 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %36 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %37 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %42 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ZCRYPT_DBF_DEV(i32 %34, %struct.zcrypt_device* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %46 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %45, i32 0, i32 2
  %47 = call i32 @list_add_tail(i32* %46, i32* @zcrypt_device_list)
  %48 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %49 = call i32 @__zcrypt_increase_preference(%struct.zcrypt_device* %48)
  %50 = load i32, i32* @zcrypt_device_count, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @zcrypt_device_count, align 4
  %52 = call i32 @spin_unlock_bh(i32* @zcrypt_device_lock)
  %53 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %54 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %22
  %60 = call i32 (...) @zcrypt_rng_device_add()
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %66

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %22
  store i32 0, i32* %2, align 4
  br label %89

66:                                               ; preds = %63
  %67 = call i32 @spin_lock_bh(i32* @zcrypt_device_lock)
  %68 = load i32, i32* @zcrypt_device_count, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* @zcrypt_device_count, align 4
  %70 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %71 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %70, i32 0, i32 2
  %72 = call i32 @list_del_init(i32* %71)
  %73 = call i32 @spin_unlock_bh(i32* @zcrypt_device_lock)
  %74 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %75 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @sysfs_remove_group(i32* %78, i32* @zcrypt_device_attr_group)
  %80 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %81 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i32 @put_device(%struct.TYPE_7__* %83)
  %85 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %86 = call i32 @zcrypt_device_put(%struct.zcrypt_device* %85)
  br label %87

87:                                               ; preds = %66, %21
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %65, %9
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @get_device(%struct.TYPE_7__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ZCRYPT_DBF_DEV(i32, %struct.zcrypt_device*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__zcrypt_increase_preference(%struct.zcrypt_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @zcrypt_rng_device_add(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @zcrypt_device_put(%struct.zcrypt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
