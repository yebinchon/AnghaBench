; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }
%struct.alias_lcu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_alias_remove_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %10, %struct.dasd_eckd_private** %4, align 8
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %12 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %11, i32 0, i32 0
  %13 = load %struct.alias_lcu*, %struct.alias_lcu** %12, align 8
  store %struct.alias_lcu* %13, %struct.alias_lcu** %5, align 8
  %14 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %15 = icmp ne %struct.alias_lcu* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %19 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = call i32 @_remove_device_from_lcu(%struct.alias_lcu* %22, %struct.dasd_device* %23)
  %25 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %26 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_remove_device_from_lcu(%struct.alias_lcu*, %struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
