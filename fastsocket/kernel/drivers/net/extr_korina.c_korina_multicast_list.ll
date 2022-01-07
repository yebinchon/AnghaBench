; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.korina_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ETH_ARC_AB = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@ETH_ARC_PRO = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ARC_AM = common dso_local global i32 0, align 4
@ETH_ARC_AFM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @korina_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @korina_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.korina_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.korina_private* @netdev_priv(%struct.net_device* %11)
  store %struct.korina_private* %12, %struct.korina_private** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %14, align 8
  store %struct.dev_mc_list* %15, %struct.dev_mc_list** %5, align 8
  %16 = load i32, i32* @ETH_ARC_AB, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @ETH_ARC_PRO, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IFF_ALLMULTI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @ETH_ARC_AM, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %124

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %57, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %55
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %50

60:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %95, %60
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %69 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  %71 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %72 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %71, i32 0, i32 1
  %73 = load %struct.dev_mc_list*, %struct.dev_mc_list** %72, align 8
  store %struct.dev_mc_list* %73, %struct.dev_mc_list** %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %67
  br label %95

80:                                               ; preds = %67
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @ether_crc_le(i32 6, i8* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 26
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 15
  %87 = sub nsw i32 15, %86
  %88 = shl i32 1, %87
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %80, %79
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %61

98:                                               ; preds = %61
  %99 = load i32, i32* @ETH_ARC_AFM, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = or i32 %104, %106
  %108 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %109 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = call i32 @writel(i32 %107, i32* %111)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %115, %117
  %119 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %120 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = call i32 @writel(i32 %118, i32* %122)
  br label %124

124:                                              ; preds = %98, %44
  %125 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %126 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %125, i32 0, i32 0
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %131 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 @writel(i32 %129, i32* %133)
  %135 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %136 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %135, i32 0, i32 0
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  ret void
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
