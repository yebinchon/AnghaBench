; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }
%struct.temac_local = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MULTICAST_CAM_TABLE_NUM = common dso_local global i32 0, align 4
@XTE_AFM_OFFSET = common dso_local global i32 0, align 4
@XTE_AFM_EPPRM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Promiscuous mode enabled.\0A\00", align 1
@XTE_MAW0_OFFSET = common dso_local global i32 0, align 4
@XTE_MAW1_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Promiscuous mode disabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @temac_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @temac_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.temac_local* @netdev_priv(%struct.net_device* %9)
  store %struct.temac_local* %10, %struct.temac_local** %3, align 8
  %11 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %12 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_ALLMULTI, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MULTICAST_CAM_TABLE_NUM, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %35 = load i32, i32* @XTE_AFM_OFFSET, align 4
  %36 = load i32, i32* @XTE_AFM_EPPRM_MASK, align 4
  %37 = call i32 @temac_indirect_out32(%struct.temac_local* %34, i32 %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %144

41:                                               ; preds = %22
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 3
  %49 = load %struct.dev_mc_list*, %struct.dev_mc_list** %48, align 8
  store %struct.dev_mc_list* %49, %struct.dev_mc_list** %8, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %119, %46
  %51 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %52 = icmp ne %struct.dev_mc_list* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %61, label %122

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MULTICAST_CAM_TABLE_NUM, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %122

66:                                               ; preds = %61
  %67 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %68 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 24
  %73 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %74 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 %72, %78
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %81 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %79, %85
  %87 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %88 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %86, %91
  store i32 %92, i32* %4, align 4
  %93 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %94 = load i32, i32* @XTE_MAW0_OFFSET, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @temac_indirect_out32(%struct.temac_local* %93, i32 %94, i32 %95)
  %97 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %98 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %104 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %102, %107
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %113 = load i32, i32* @XTE_MAW1_OFFSET, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @temac_indirect_out32(%struct.temac_local* %112, i32 %113, i32 %114)
  %116 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %117 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %116, i32 0, i32 1
  %118 = load %struct.dev_mc_list*, %struct.dev_mc_list** %117, align 8
  store %struct.dev_mc_list* %118, %struct.dev_mc_list** %8, align 8
  br label %119

119:                                              ; preds = %66
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %50

122:                                              ; preds = %65, %59
  br label %143

123:                                              ; preds = %41
  %124 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %125 = load i32, i32* @XTE_AFM_OFFSET, align 4
  %126 = call i32 @temac_indirect_in32(%struct.temac_local* %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %128 = load i32, i32* @XTE_AFM_OFFSET, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @XTE_AFM_EPPRM_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = call i32 @temac_indirect_out32(%struct.temac_local* %127, i32 %128, i32 %132)
  %134 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %135 = load i32, i32* @XTE_MAW0_OFFSET, align 4
  %136 = call i32 @temac_indirect_out32(%struct.temac_local* %134, i32 %135, i32 0)
  %137 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %138 = load i32, i32* @XTE_MAW1_OFFSET, align 4
  %139 = call i32 @temac_indirect_out32(%struct.temac_local* %137, i32 %138, i32 0)
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 2
  %142 = call i32 @dev_info(i32* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %123, %122
  br label %144

144:                                              ; preds = %143, %28
  %145 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %146 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temac_indirect_out32(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
