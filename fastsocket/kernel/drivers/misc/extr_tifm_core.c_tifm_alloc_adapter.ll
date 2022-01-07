; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_alloc_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_alloc_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tifm_adapter_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tifm_adapter* @tifm_alloc_adapter(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tifm_adapter*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = mul i64 8, %7
  %9 = add i64 24, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tifm_adapter* @kzalloc(i32 %10, i32 %11)
  store %struct.tifm_adapter* %12, %struct.tifm_adapter** %5, align 8
  %13 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %14 = icmp ne %struct.tifm_adapter* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* @tifm_adapter_class, i32** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %23, i32 0, i32 2
  %25 = call i32 @device_initialize(%struct.TYPE_2__* %24)
  %26 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %15, %2
  %33 = load %struct.tifm_adapter*, %struct.tifm_adapter** %5, align 8
  ret %struct.tifm_adapter* %33
}

declare dso_local %struct.tifm_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
