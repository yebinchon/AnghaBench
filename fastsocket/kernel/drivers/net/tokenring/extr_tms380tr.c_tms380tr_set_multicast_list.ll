; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.net_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PASS_ADAPTER_MAC_FRAMES = common dso_local global i32 0, align 4
@PASS_ATTENTION_FRAMES = common dso_local global i32 0, align 4
@PASS_BEACON_MAC_FRAMES = common dso_local global i32 0, align 4
@COPY_ALL_MAC_FRAMES = common dso_local global i32 0, align 4
@COPY_ALL_NON_MAC_FRAMES = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@OC_SET_FUNCT_ADDR = common dso_local global i32 0, align 4
@OC_MODIFY_OPEN_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tms380tr_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tms380tr_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %3, align 8
  %9 = load %struct.net_local*, %struct.net_local** %3, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PASS_ADAPTER_MAC_FRAMES, align 4
  %14 = load i32, i32* @PASS_ATTENTION_FRAMES, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PASS_BEACON_MAC_FRAMES, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @COPY_ALL_MAC_FRAMES, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @COPY_ALL_NON_MAC_FRAMES, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %12, %22
  store i32 %23, i32* %4, align 4
  %24 = load %struct.net_local*, %struct.net_local** %3, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @COPY_ALL_NON_MAC_FRAMES, align 4
  %35 = load i32, i32* @COPY_ALL_MAC_FRAMES, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %132

39:                                               ; preds = %1
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.net_local*, %struct.net_local** %3, align 8
  %48 = getelementptr inbounds %struct.net_local, %struct.net_local* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  br label %128

50:                                               ; preds = %39
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 2
  %53 = load %struct.dev_mc_list*, %struct.dev_mc_list** %52, align 8
  store %struct.dev_mc_list* %53, %struct.dev_mc_list** %6, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %124, %50
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %127

60:                                               ; preds = %54
  %61 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %62 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load %struct.net_local*, %struct.net_local** %3, align 8
  %68 = getelementptr inbounds %struct.net_local, %struct.net_local* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = bitcast i32* %69 to i8*
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 4
  %73 = sext i8 %72 to i32
  %74 = or i32 %73, %66
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 4
  %76 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %77 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load %struct.net_local*, %struct.net_local** %3, align 8
  %83 = getelementptr inbounds %struct.net_local, %struct.net_local* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = bitcast i32* %84 to i8*
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = or i32 %88, %81
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1
  %91 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %92 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load %struct.net_local*, %struct.net_local** %3, align 8
  %98 = getelementptr inbounds %struct.net_local, %struct.net_local* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = bitcast i32* %99 to i8*
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 2
  %103 = sext i8 %102 to i32
  %104 = or i32 %103, %96
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 2
  %106 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %107 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load %struct.net_local*, %struct.net_local** %3, align 8
  %113 = getelementptr inbounds %struct.net_local, %struct.net_local* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = bitcast i32* %114 to i8*
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = or i32 %118, %111
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %122 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %121, i32 0, i32 1
  %123 = load %struct.dev_mc_list*, %struct.dev_mc_list** %122, align 8
  store %struct.dev_mc_list* %123, %struct.dev_mc_list** %6, align 8
  br label %124

124:                                              ; preds = %60
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %54

127:                                              ; preds = %54
  br label %128

128:                                              ; preds = %127, %46
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = load i32, i32* @OC_SET_FUNCT_ADDR, align 4
  %131 = call i32 @tms380tr_exec_cmd(%struct.net_device* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %33
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.net_local*, %struct.net_local** %3, align 8
  %135 = getelementptr inbounds %struct.net_local, %struct.net_local* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = load i32, i32* @OC_MODIFY_OPEN_PARMS, align 4
  %139 = call i32 @tms380tr_exec_cmd(%struct.net_device* %137, i32 %138)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tms380tr_exec_cmd(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
