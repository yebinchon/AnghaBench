; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vlan_rem_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vlan_rem_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @be_vlan_rem_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_vlan_rem_vid(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %10 = call i64 @lancer_chip(%struct.be_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %14 = call i32 @be_physfn(%struct.be_adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %54

17:                                               ; preds = %12, %2
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = call i64 @lancer_chip(%struct.be_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %54

25:                                               ; preds = %21, %17
  %26 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 0, i32* %30, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %35 = call i64 @be_max_vlans(%struct.be_adapter* %34)
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %39 = call i32 @be_vid_config(%struct.be_adapter* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %25
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %54

48:                                               ; preds = %40
  %49 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %16, %24, %48, %43
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_physfn(%struct.be_adapter*) #1

declare dso_local i64 @be_max_vlans(%struct.be_adapter*) #1

declare dso_local i32 @be_vid_config(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
