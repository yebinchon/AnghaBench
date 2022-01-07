; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.sgiseeq_private = type { i8 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SEEQ_RCMD_RANY = common dso_local global i8 0, align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@SEEQ_RCMD_RBMCAST = common dso_local global i8 0, align 1
@SEEQ_RCMD_RBCAST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sgiseeq_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgiseeq_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sgiseeq_private*, align 8
  %4 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sgiseeq_private* %6, %struct.sgiseeq_private** %3, align 8
  %7 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %8 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8, i8* @SEEQ_RCMD_RANY, align 1
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 0
  store i8 %17, i8* %19, align 1
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_ALLMULTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %20
  %33 = load i8, i8* @SEEQ_RCMD_RBMCAST, align 1
  %34 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %35 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 1
  br label %40

36:                                               ; preds = %27
  %37 = load i8, i8* @SEEQ_RCMD_RBCAST, align 1
  %38 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %39 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 1
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %45 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @sgiseeq_reset(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %41
  ret void
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sgiseeq_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
