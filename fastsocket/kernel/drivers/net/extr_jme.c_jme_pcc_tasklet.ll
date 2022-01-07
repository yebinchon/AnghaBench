; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_pcc_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_pcc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@JME_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jme_pcc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_pcc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.jme_adapter*
  store %struct.jme_adapter* %6, %struct.jme_adapter** %3, align 8
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load i32, i32* @JME_FLAG_SHUTDOWN, align 4
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %18 = call i32 @jme_shutdown_nic(%struct.jme_adapter* %17)
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 1
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ true, %19 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %35 = call i32 @jme_stop_pcc_timer(%struct.jme_adapter* %34)
  br label %48

36:                                               ; preds = %28
  %37 = load i32, i32* @JME_FLAG_POLL, align 4
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 0
  %40 = call i32 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %44 = call i32 @jme_dynamic_pcc(%struct.jme_adapter* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %47 = call i32 @jme_start_pcc_timer(%struct.jme_adapter* %46)
  br label %48

48:                                               ; preds = %45, %33, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_shutdown_nic(%struct.jme_adapter*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @jme_stop_pcc_timer(%struct.jme_adapter*) #1

declare dso_local i32 @jme_dynamic_pcc(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_pcc_timer(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
