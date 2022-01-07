; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_reset_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_reset_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.eth1394_priv = type { i32, i32, i32, i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@IEEE1394_SPEED_MAX = common dso_local global i32 0, align 4
@SELFID_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IEEE1394_SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ether1394_reset_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_reset_priv(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.eth1394_priv*, align 8
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.eth1394_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.eth1394_priv* %12, %struct.eth1394_priv** %7, align 8
  %13 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %14 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %13, i32 0, i32 4
  %15 = load %struct.hpsb_host*, %struct.hpsb_host** %14, align 8
  store %struct.hpsb_host* %15, %struct.hpsb_host** %8, align 8
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %17 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = call i32 @get_unaligned(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @IEEE1394_SPEED_MAX, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %26 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %25, i32 0, i32 2
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %30 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %34 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %33, i32 0, i32 0
  store i32 512, i32* %34, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %72, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %38 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %35
  %42 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %43 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SELFID_SPEED_UNKNOWN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @IEEE1394_SPEED_100, align 4
  store i32 %52, i32* %10, align 4
  br label %75

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %56 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %54, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %65 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %35

75:                                               ; preds = %51, %35
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %78 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %83 = call i32 @ether1394_max_mtu(%struct.hpsb_host* %82)
  %84 = call i32 @min(i32 1500, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %89, i32* %9, i32 4)
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memset(i32 %93, i32 255, i32 4)
  br label %95

95:                                               ; preds = %81, %75
  %96 = load %struct.eth1394_priv*, %struct.eth1394_priv** %7, align 8
  %97 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %96, i32 0, i32 2
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  ret void
}

declare dso_local %struct.eth1394_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ether1394_max_mtu(%struct.hpsb_host*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
