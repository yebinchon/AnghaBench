; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_SetMulticastList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_SetMulticastList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list*, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@TLAN_NET_CMD = common dso_local global i32 0, align 4
@TLAN_NET_CMD_CAF = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@TLAN_HASH_1 = common dso_local global i32 0, align 4
@TLAN_HASH_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_SetMulticastList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_SetMulticastList(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %10, align 8
  store %struct.dev_mc_list* %11, %struct.dev_mc_list** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TLAN_NET_CMD, align 4
  %23 = call i32 @TLan_DioRead8(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TLAN_NET_CMD, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TLAN_NET_CMD_CAF, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @TLan_DioWrite8(i32 %26, i32 %27, i32 %30)
  br label %145

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TLAN_NET_CMD, align 4
  %37 = call i32 @TLan_DioRead8(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TLAN_NET_CMD, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TLAN_NET_CMD_CAF, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @TLan_DioWrite8(i32 %40, i32 %41, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_ALLMULTI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %62, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @TLan_SetMac(%struct.net_device* %58, i32 %60, i8* null)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %54

65:                                               ; preds = %54
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TLAN_HASH_1, align 4
  %70 = call i32 @TLan_DioWrite32(i32 %68, i32 %69, i32 -1)
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TLAN_HASH_2, align 4
  %75 = call i32 @TLan_DioWrite32(i32 %73, i32 %74, i32 -1)
  br label %144

76:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %116, %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %91 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %90, i32 0, i32 1
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 @TLan_SetMac(%struct.net_device* %87, i32 %89, i8* %92)
  br label %112

94:                                               ; preds = %83
  %95 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %96 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %95, i32 0, i32 1
  %97 = call i32 @TLan_HashFunc(i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = shl i32 1, %101
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %111

105:                                              ; preds = %94
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 32
  %108 = shl i32 1, %107
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %86
  %113 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %114 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %113, i32 0, i32 0
  %115 = load %struct.dev_mc_list*, %struct.dev_mc_list** %114, align 8
  store %struct.dev_mc_list* %115, %struct.dev_mc_list** %3, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %77

119:                                              ; preds = %77
  br label %120

120:                                              ; preds = %128, %119
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @TLan_SetMac(%struct.net_device* %124, i32 %126, i8* null)
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %120

131:                                              ; preds = %120
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TLAN_HASH_1, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @TLan_DioWrite32(i32 %134, i32 %135, i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TLAN_HASH_2, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @TLan_DioWrite32(i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %131, %65
  br label %145

145:                                              ; preds = %144, %18
  ret void
}

declare dso_local i32 @TLan_DioRead8(i32, i32) #1

declare dso_local i32 @TLan_DioWrite8(i32, i32, i32) #1

declare dso_local i32 @TLan_SetMac(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @TLan_DioWrite32(i32, i32, i32) #1

declare dso_local i32 @TLan_HashFunc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
