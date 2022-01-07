; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, i32, %struct.dev_mc_list* }
%struct.bonding = type { i32, i32, %struct.dev_mc_list* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bond_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bonding* @netdev_priv(%struct.net_device* %5)
  store %struct.bonding* %6, %struct.bonding** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.bonding*, %struct.bonding** %3, align 8
  %15 = getelementptr inbounds %struct.bonding, %struct.bonding* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_PROMISC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.bonding*, %struct.bonding** %3, align 8
  %22 = call i32 @bond_set_promiscuity(%struct.bonding* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %13, %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_PROMISC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.bonding*, %struct.bonding** %3, align 8
  %32 = getelementptr inbounds %struct.bonding, %struct.bonding* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_PROMISC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.bonding*, %struct.bonding** %3, align 8
  %39 = call i32 @bond_set_promiscuity(%struct.bonding* %38, i32 -1)
  br label %40

40:                                               ; preds = %37, %30, %23
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.bonding*, %struct.bonding** %3, align 8
  %49 = getelementptr inbounds %struct.bonding, %struct.bonding* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IFF_ALLMULTI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.bonding*, %struct.bonding** %3, align 8
  %56 = call i32 @bond_set_allmulti(%struct.bonding* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %47, %40
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load %struct.bonding*, %struct.bonding** %3, align 8
  %66 = getelementptr inbounds %struct.bonding, %struct.bonding* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFF_ALLMULTI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.bonding*, %struct.bonding** %3, align 8
  %73 = call i32 @bond_set_allmulti(%struct.bonding* %72, i32 -1)
  br label %74

74:                                               ; preds = %71, %64, %57
  %75 = load %struct.bonding*, %struct.bonding** %3, align 8
  %76 = getelementptr inbounds %struct.bonding, %struct.bonding* %75, i32 0, i32 1
  %77 = call i32 @read_lock(i32* %76)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bonding*, %struct.bonding** %3, align 8
  %82 = getelementptr inbounds %struct.bonding, %struct.bonding* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %84, align 8
  store %struct.dev_mc_list* %85, %struct.dev_mc_list** %4, align 8
  br label %86

86:                                               ; preds = %106, %74
  %87 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %88 = icmp ne %struct.dev_mc_list* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %91 = load %struct.bonding*, %struct.bonding** %3, align 8
  %92 = getelementptr inbounds %struct.bonding, %struct.bonding* %91, i32 0, i32 2
  %93 = load %struct.dev_mc_list*, %struct.dev_mc_list** %92, align 8
  %94 = call i32 @bond_mc_list_find_dmi(%struct.dev_mc_list* %90, %struct.dev_mc_list* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load %struct.bonding*, %struct.bonding** %3, align 8
  %98 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %99 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %102 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bond_mc_add(%struct.bonding* %97, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %96, %89
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %108 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %107, i32 0, i32 2
  %109 = load %struct.dev_mc_list*, %struct.dev_mc_list** %108, align 8
  store %struct.dev_mc_list* %109, %struct.dev_mc_list** %4, align 8
  br label %86

110:                                              ; preds = %86
  %111 = load %struct.bonding*, %struct.bonding** %3, align 8
  %112 = getelementptr inbounds %struct.bonding, %struct.bonding* %111, i32 0, i32 2
  %113 = load %struct.dev_mc_list*, %struct.dev_mc_list** %112, align 8
  store %struct.dev_mc_list* %113, %struct.dev_mc_list** %4, align 8
  br label %114

114:                                              ; preds = %134, %110
  %115 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %116 = icmp ne %struct.dev_mc_list* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 1
  %121 = load %struct.dev_mc_list*, %struct.dev_mc_list** %120, align 8
  %122 = call i32 @bond_mc_list_find_dmi(%struct.dev_mc_list* %118, %struct.dev_mc_list* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %117
  %125 = load %struct.bonding*, %struct.bonding** %3, align 8
  %126 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %127 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %130 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bond_mc_delete(%struct.bonding* %125, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %124, %117
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %136 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %135, i32 0, i32 2
  %137 = load %struct.dev_mc_list*, %struct.dev_mc_list** %136, align 8
  store %struct.dev_mc_list* %137, %struct.dev_mc_list** %4, align 8
  br label %114

138:                                              ; preds = %114
  %139 = load %struct.bonding*, %struct.bonding** %3, align 8
  %140 = call i32 @bond_mc_list_destroy(%struct.bonding* %139)
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load %struct.dev_mc_list*, %struct.dev_mc_list** %142, align 8
  %144 = load %struct.bonding*, %struct.bonding** %3, align 8
  %145 = load i32, i32* @GFP_ATOMIC, align 4
  %146 = call i32 @bond_mc_list_copy(%struct.dev_mc_list* %143, %struct.bonding* %144, i32 %145)
  %147 = load %struct.bonding*, %struct.bonding** %3, align 8
  %148 = getelementptr inbounds %struct.bonding, %struct.bonding* %147, i32 0, i32 1
  %149 = call i32 @read_unlock(i32* %148)
  ret void
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bond_set_promiscuity(%struct.bonding*, i32) #1

declare dso_local i32 @bond_set_allmulti(%struct.bonding*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @bond_mc_list_find_dmi(%struct.dev_mc_list*, %struct.dev_mc_list*) #1

declare dso_local i32 @bond_mc_add(%struct.bonding*, i32, i32) #1

declare dso_local i32 @bond_mc_delete(%struct.bonding*, i32, i32) #1

declare dso_local i32 @bond_mc_list_destroy(%struct.bonding*) #1

declare dso_local i32 @bond_mc_list_copy(%struct.dev_mc_list*, %struct.bonding*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
