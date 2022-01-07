; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, i32, %struct.dev_mc_list* }
%struct.ethoc = type { i32 }

@MODER = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@MODER_LOOP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@MODER_BRO = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MODER_PRO = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_HASH0 = common dso_local global i32 0, align 4
@ETH_HASH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ethoc_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethoc_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ethoc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ethoc* @netdev_priv(%struct.net_device* %9)
  store %struct.ethoc* %10, %struct.ethoc** %3, align 8
  %11 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %12 = load i32, i32* @MODER, align 4
  %13 = call i32 @ethoc_read(%struct.ethoc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store %struct.dev_mc_list* null, %struct.dev_mc_list** %5, align 8
  %14 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_LOOPBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @MODER_LOOP, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @MODER_LOOP, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_BROADCAST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @MODER_BRO, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @MODER_BRO, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_PROMISC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @MODER_PRO, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @MODER_PRO, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %64 = load i32, i32* @MODER, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ethoc_write(%struct.ethoc* %63, i32 %64, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IFF_ALLMULTI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -1, i32* %75, align 4
  br label %108

76:                                               ; preds = %62
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  %79 = load %struct.dev_mc_list*, %struct.dev_mc_list** %78, align 8
  store %struct.dev_mc_list* %79, %struct.dev_mc_list** %5, align 8
  br label %80

80:                                               ; preds = %103, %76
  %81 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %82 = icmp ne %struct.dev_mc_list* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %85 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %88 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ether_crc(i32 %86, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 26
  %93 = and i32 %92, 63
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 31
  %96 = shl i32 1, %95
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %83
  %104 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %105 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %104, i32 0, i32 2
  %106 = load %struct.dev_mc_list*, %struct.dev_mc_list** %105, align 8
  store %struct.dev_mc_list* %106, %struct.dev_mc_list** %5, align 8
  br label %80

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107, %73
  %109 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %110 = load i32, i32* @ETH_HASH0, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ethoc_write(%struct.ethoc* %109, i32 %110, i32 %112)
  %114 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %115 = load i32, i32* @ETH_HASH1, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ethoc_write(%struct.ethoc* %114, i32 %115, i32 %117)
  ret void
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ethoc_write(%struct.ethoc*, i32, i32) #1

declare dso_local i32 @ether_crc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
