; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_net_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_net_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tun_struct = type { %struct.TYPE_2__, %struct.tun_file* }
%struct.TYPE_2__ = type { i32 }
%struct.tun_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tun_net_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_net_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.tun_file*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %5)
  store %struct.tun_struct* %6, %struct.tun_struct** %3, align 8
  %7 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %7, i32 0, i32 1
  %9 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  store %struct.tun_file* %9, %struct.tun_file** %4, align 8
  %10 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %11 = icmp ne %struct.tun_file* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @wake_up_all(i32* %15)
  %17 = load %struct.tun_file*, %struct.tun_file** %4, align 8
  %18 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %17, i32 0, i32 0
  %19 = call i64 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %23 = call i32 @__tun_detach(%struct.tun_struct* %22)
  br label %24

24:                                               ; preds = %21, %12
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @__tun_detach(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
