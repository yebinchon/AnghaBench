; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_register_dca_provider.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dca/extr_dca-core.c_register_dca_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.dca_domain = type { i32 }

@dca_lock = common dso_local global i32 0, align 4
@dca_providers_blocked = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@dca_provider_chain = common dso_local global i32 0, align 4
@DCA_PROVIDER_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_dca_provider(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dca_domain*, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @dca_lock, i64 %9)
  %11 = load i64, i64* @dca_providers_blocked, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* @dca_lock, i64 %14)
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @dca_lock, i64 %19)
  %21 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dca_sysfs_add_provider(%struct.dca_provider* %21, %struct.device* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @dca_lock, i64 %29)
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.dca_domain* @dca_get_domain(%struct.device* %31)
  store %struct.dca_domain* %32, %struct.dca_domain** %8, align 8
  %33 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %34 = icmp ne %struct.dca_domain* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* @dca_providers_blocked, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* @dca_lock, i64 %39)
  %41 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %42 = call i32 @dca_sysfs_remove_provider(%struct.dca_provider* %41)
  %43 = call i32 (...) @unregister_dca_providers()
  br label %47

44:                                               ; preds = %35
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @dca_lock, i64 %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %28
  %51 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %52 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %51, i32 0, i32 0
  %53 = load %struct.dca_domain*, %struct.dca_domain** %8, align 8
  %54 = getelementptr inbounds %struct.dca_domain, %struct.dca_domain* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %52, i32* %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @dca_lock, i64 %56)
  %58 = load i32, i32* @DCA_PROVIDER_ADD, align 4
  %59 = call i32 @blocking_notifier_call_chain(i32* @dca_provider_chain, i32 %58, i32* null)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %47, %26, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dca_sysfs_add_provider(%struct.dca_provider*, %struct.device*) #1

declare dso_local %struct.dca_domain* @dca_get_domain(%struct.device*) #1

declare dso_local i32 @dca_sysfs_remove_provider(%struct.dca_provider*) #1

declare dso_local i32 @unregister_dca_providers(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
