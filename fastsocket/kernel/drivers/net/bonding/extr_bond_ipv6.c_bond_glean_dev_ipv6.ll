; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_ipv6.c_bond_glean_dev_ipv6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_ipv6.c_bond_glean_dev_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.inet6_ifaddr* }
%struct.inet6_ifaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.in6_addr*)* @bond_glean_dev_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_glean_dev_ipv6(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.inet6_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %11)
  store %struct.inet6_dev* %12, %struct.inet6_dev** %5, align 8
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %14 = icmp ne %struct.inet6_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %39

16:                                               ; preds = %10
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 0
  %19 = call i32 @read_lock_bh(i32* %18)
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %21 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %20, i32 0, i32 1
  %22 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %21, align 8
  store %struct.inet6_ifaddr* %22, %struct.inet6_ifaddr** %6, align 8
  %23 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %24 = icmp ne %struct.inet6_ifaddr* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 0
  %29 = call i32 @ipv6_addr_copy(%struct.in6_addr* %26, i32* %28)
  br label %33

30:                                               ; preds = %16
  %31 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %32 = call i32 @ipv6_addr_set(%struct.in6_addr* %31, i32 0, i32 0, i32 0, i32 0)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %35 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %34, i32 0, i32 0
  %36 = call i32 @read_unlock_bh(i32* %35)
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %38 = call i32 @in6_dev_put(%struct.inet6_dev* %37)
  br label %39

39:                                               ; preds = %33, %15, %9
  ret void
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ipv6_addr_copy(%struct.in6_addr*, i32*) #1

declare dso_local i32 @ipv6_addr_set(%struct.in6_addr*, i32, i32, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
