; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_read_mb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_read_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.at91_priv = type { i32 }

@AT91_MID_MIDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@AT91_MSR_MRTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@__u8 = common dso_local global i32 0, align 4
@AT91_MB_RX_LAST = common dso_local global i32 0, align 4
@AT91_MSR_MMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, %struct.can_frame*)* @at91_read_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_read_mb(%struct.net_device* %0, i32 %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.at91_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.at91_priv* %11, %struct.at91_priv** %7, align 8
  %12 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AT91_MID(i32 %13)
  %15 = call i32 @at91_read(%struct.at91_priv* %12, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AT91_MID_MIDE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 0
  %23 = load i32, i32* @CAN_EFF_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @CAN_EFF_FLAG, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %28 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 18
  %32 = load i32, i32* @CAN_SFF_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AT91_MSR(i32 %38)
  %40 = call i32 @at91_read(%struct.at91_priv* %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AT91_MSR_MRTR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @CAN_RTR_FLAG, align 4
  %47 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %48 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %36
  %52 = load i32, i32* @__u8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 15
  %56 = call i32 @min_t(i32 %52, i32 %55, i32 8)
  %57 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @AT91_MDL(i32 %60)
  %62 = call i32 @at91_read(%struct.at91_priv* %59, i32 %61)
  %63 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 0
  %67 = inttoptr i64 %66 to i32*
  store i32 %62, i32* %67, align 4
  %68 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @AT91_MDH(i32 %69)
  %71 = call i32 @at91_read(%struct.at91_priv* %68, i32 %70)
  %72 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %73 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 4
  %76 = inttoptr i64 %75 to i32*
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @AT91_MB_RX_LAST, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %51
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @AT91_MSR_MMI, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %80, %51
  %86 = phi i1 [ false, %51 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @at91_rx_overflow_err(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %90, %85
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @AT91_MID(i32) #1

declare dso_local i32 @AT91_MSR(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @AT91_MDL(i32) #1

declare dso_local i32 @AT91_MDH(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @at91_rx_overflow_err(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
