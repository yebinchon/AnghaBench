; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, i64 }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }
%struct.alias_lcu = type { i32, i32, i32 }

@UPDATE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_add_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca %struct.dasd_eckd_private*, align 8
  %4 = alloca %struct.alias_lcu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %10, %struct.dasd_eckd_private** %3, align 8
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %11, i32 0, i32 0
  %13 = load %struct.alias_lcu*, %struct.alias_lcu** %12, align 8
  store %struct.alias_lcu* %13, %struct.alias_lcu** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_ccwdev_lock(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %21 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %24 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UPDATE_PENDING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %1
  %30 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %31 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %32 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %33 = call i32 @_add_device_to_lcu(%struct.alias_lcu* %30, %struct.dasd_device* %31, %struct.dasd_device* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @UPDATE_PENDING, align 4
  %38 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %39 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %45 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UPDATE_PENDING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 1
  %53 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %54 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %53, i32 0, i32 2
  %55 = call i32 @list_move(i32* %52, i32* %54)
  %56 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %57 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %58 = call i32 @_schedule_lcu_update(%struct.alias_lcu* %56, %struct.dasd_device* %57)
  br label %59

59:                                               ; preds = %50, %43
  %60 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %61 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %64 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_ccwdev_lock(i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32 %66, i64 %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_add_device_to_lcu(%struct.alias_lcu*, %struct.dasd_device*, %struct.dasd_device*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @_schedule_lcu_update(%struct.alias_lcu*, %struct.dasd_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
