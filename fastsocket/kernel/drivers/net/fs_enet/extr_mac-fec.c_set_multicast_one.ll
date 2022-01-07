; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_mac-fec.c_set_multicast_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_mac-fec.c_set_multicast_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FEC_CRC_POLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @set_multicast_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_one(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fs_enet_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %14)
  store %struct.fs_enet_private* %15, %struct.fs_enet_private** %5, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %49, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %45, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 31
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 1
  %36 = xor i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @FEC_CRC_POLY, align 4
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %25

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 63
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 1
  %58 = shl i32 %57, 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 2
  %61 = shl i32 %60, 2
  %62 = or i32 %58, %61
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 4
  %65 = or i32 %62, %64
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 8
  %68 = ashr i32 %67, 2
  %69 = or i32 %65, %68
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 16
  %72 = ashr i32 %71, 4
  %73 = or i32 %69, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 1, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %52
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.fs_enet_private*, %struct.fs_enet_private** %5, align 8
  %82 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %52
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fs_enet_private*, %struct.fs_enet_private** %5, align 8
  %89 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %79
  ret void
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
