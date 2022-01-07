; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_rewrite_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_rewrite_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32 }
%struct.ethhdr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethhdr*)* @plip_rewrite_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plip_rewrite_address(%struct.net_device* %0, %struct.ethhdr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.in_device*, %struct.in_device** %8, align 8
  store %struct.in_device* %9, %struct.in_device** %5, align 8
  %10 = load %struct.in_device*, %struct.in_device** %5, align 8
  %11 = icmp ne %struct.in_device* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.in_device*, %struct.in_device** %5, align 8
  %14 = getelementptr inbounds %struct.in_device, %struct.in_device* %13, i32 0, i32 0
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %14, align 8
  store %struct.in_ifaddr* %15, %struct.in_ifaddr** %6, align 8
  %16 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %17 = icmp ne %struct.in_ifaddr* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %20 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @memcpy(i64 %21, i32* %24, i32 6)
  %26 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memset(i64 %28, i32 252, i32 2)
  %30 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 2
  %34 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %35 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i64 %33, i32* %35, i32 4)
  br label %37

37:                                               ; preds = %18, %12
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
