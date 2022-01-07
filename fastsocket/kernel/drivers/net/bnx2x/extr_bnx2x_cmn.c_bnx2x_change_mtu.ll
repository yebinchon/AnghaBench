; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i64 }

@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Can't perform change MTU during parity recovery\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_MIN_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't support requested MTU size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @ETH_HLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @ETH_MIN_PACKET_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %18
  %30 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @bnx2x_reload_if_running(%struct.net_device* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %29, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_reload_if_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
