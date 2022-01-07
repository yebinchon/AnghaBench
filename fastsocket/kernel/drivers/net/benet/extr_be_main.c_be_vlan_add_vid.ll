; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vlan_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vlan_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @be_vlan_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_vlan_add_vid(%struct.net_device* %0, i64 %1) #0 {
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
  br label %55

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
  br label %55

25:                                               ; preds = %21, %17
  %26 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 1, i32* %30, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %35 = call i64 @be_max_vlans(%struct.be_adapter* %34)
  %36 = add nsw i64 %35, 1
  %37 = icmp sle i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %40 = call i32 @be_vid_config(%struct.be_adapter* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %16, %24, %49, %44
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
