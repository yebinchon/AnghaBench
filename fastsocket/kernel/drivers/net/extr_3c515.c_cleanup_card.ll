; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_cleanup_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_cleanup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64 }
%struct.corkscrew_private = type { i64, i32 }

@TotalReset = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@CORKSCREW_TOTAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cleanup_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_card(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.corkscrew_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %4)
  store %struct.corkscrew_private* %5, %struct.corkscrew_private** %3, align 8
  %6 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %7 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %6, i32 0, i32 1
  %8 = call i32 @list_del_init(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @free_dma(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @TotalReset, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EL3_CMD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outw(i32 %19, i64 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @CORKSCREW_TOTAL_SIZE, align 4
  %30 = call i32 @release_region(i64 %28, i32 %29)
  %31 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %32 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %37 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @to_pnp_dev(i64 %38)
  %40 = call i32 @pnp_device_detach(i32 %39)
  br label %41

41:                                               ; preds = %35, %18
  ret void
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @pnp_device_detach(i32) #1

declare dso_local i32 @to_pnp_dev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
