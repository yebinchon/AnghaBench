; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Setting promiscuous mode.\0A\00", align 1
@SetRxFilter = common dso_local global i16 0, align 2
@RxStation = common dso_local global i16 0, align 2
@RxMulticast = common dso_local global i16 0, align 2
@RxBroadcast = common dso_local global i16 0, align 2
@RxProm = common dso_local global i16 0, align 2
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @corkscrew_debug, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i16, i16* @SetRxFilter, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @RxStation, align 2
  %26 = sext i16 %25 to i32
  %27 = or i32 %24, %26
  %28 = load i16, i16* @RxMulticast, align 2
  %29 = sext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i16, i16* @RxBroadcast, align 2
  %32 = sext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i16, i16* @RxProm, align 2
  %35 = sext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %4, align 2
  br label %74

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_ALLMULTI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43, %38
  %51 = load i16, i16* @SetRxFilter, align 2
  %52 = sext i16 %51 to i32
  %53 = load i16, i16* @RxStation, align 2
  %54 = sext i16 %53 to i32
  %55 = or i32 %52, %54
  %56 = load i16, i16* @RxMulticast, align 2
  %57 = sext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = load i16, i16* @RxBroadcast, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %4, align 2
  br label %73

63:                                               ; preds = %43
  %64 = load i16, i16* @SetRxFilter, align 2
  %65 = sext i16 %64 to i32
  %66 = load i16, i16* @RxStation, align 2
  %67 = sext i16 %66 to i32
  %68 = or i32 %65, %67
  %69 = load i16, i16* @RxBroadcast, align 2
  %70 = sext i16 %69 to i32
  %71 = or i32 %68, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %4, align 2
  br label %73

73:                                               ; preds = %63, %50
  br label %74

74:                                               ; preds = %73, %22
  %75 = load i16, i16* %4, align 2
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @EL3_CMD, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outw(i16 signext %75, i64 %79)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @outw(i16 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
