; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i64, %struct.dev_mc_list* }
%struct.ql_adapter = type { i32, i32 }

@SEM_RT_IDX_MASK = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@QL_PROMISCUOUS = common dso_local global i32 0, align 4
@RT_IDX_PROMISCUOUS_SLOT = common dso_local global i32 0, align 4
@RT_IDX_VALID = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to set promiscous mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to clear promiscous mode.\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_MULTICAST_ENTRIES = common dso_local global i64 0, align 8
@QL_ALLMULTI = common dso_local global i32 0, align 4
@RT_IDX_ALLMULTI_SLOT = common dso_local global i32 0, align 4
@RT_IDX_MCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set all-multi mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to clear all-multi mode.\0A\00", align 1
@SEM_MAC_ADDR_MASK = common dso_local global i32 0, align 4
@MAC_ADDR_TYPE_MULTI_MAC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to loadmulticast address.\0A\00", align 1
@RT_IDX_MCAST_MATCH_SLOT = common dso_local global i32 0, align 4
@RT_IDX_MCAST_MATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to set multicast match mode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlge_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ql_adapter* %8, %struct.ql_adapter** %3, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %11 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %212

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = load i32, i32* @QL_PROMISCUOUS, align 4
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %22
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = load i32, i32* @RT_IDX_PROMISCUOUS_SLOT, align 4
  %31 = load i32, i32* @RT_IDX_VALID, align 4
  %32 = call i64 @ql_set_routing_reg(%struct.ql_adapter* %29, i32 %30, i32 %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_err(%struct.ql_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* @QL_PROMISCUOUS, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %22
  br label %74

48:                                               ; preds = %15
  %49 = load i32, i32* @QL_PROMISCUOUS, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %56 = load i32, i32* @RT_IDX_PROMISCUOUS_SLOT, align 4
  %57 = load i32, i32* @RT_IDX_VALID, align 4
  %58 = call i64 @ql_set_routing_reg(%struct.ql_adapter* %55, i32 %56, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = load i32, i32* @hw, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netif_err(%struct.ql_adapter* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %72

67:                                               ; preds = %54
  %68 = load i32, i32* @QL_PROMISCUOUS, align 4
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %69, i32 0, i32 0
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %60
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IFF_ALLMULTI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAX_MULTICAST_ENTRIES, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %81, %74
  %88 = load i32, i32* @QL_ALLMULTI, align 4
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %89, i32 0, i32 0
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %87
  %94 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %95 = load i32, i32* @RT_IDX_ALLMULTI_SLOT, align 4
  %96 = load i32, i32* @RT_IDX_MCAST, align 4
  %97 = call i64 @ql_set_routing_reg(%struct.ql_adapter* %94, i32 %95, i32 %96, i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %101 = load i32, i32* @hw, align 4
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @netif_err(%struct.ql_adapter* %100, i32 %101, i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %111

106:                                              ; preds = %93
  %107 = load i32, i32* @QL_ALLMULTI, align 4
  %108 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %108, i32 0, i32 0
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %87
  br label %139

113:                                              ; preds = %81
  %114 = load i32, i32* @QL_ALLMULTI, align 4
  %115 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %115, i32 0, i32 0
  %117 = call i64 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %121 = load i32, i32* @RT_IDX_ALLMULTI_SLOT, align 4
  %122 = load i32, i32* @RT_IDX_MCAST, align 4
  %123 = call i64 @ql_set_routing_reg(%struct.ql_adapter* %120, i32 %121, i32 %122, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %127 = load i32, i32* @hw, align 4
  %128 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @netif_err(%struct.ql_adapter* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %137

132:                                              ; preds = %119
  %133 = load i32, i32* @QL_ALLMULTI, align 4
  %134 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %134, i32 0, i32 0
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %132, %125
  br label %138

138:                                              ; preds = %137, %113
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %207

144:                                              ; preds = %139
  %145 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %146 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %147 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %208

151:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 2
  %154 = load %struct.dev_mc_list*, %struct.dev_mc_list** %153, align 8
  store %struct.dev_mc_list* %154, %struct.dev_mc_list** %4, align 8
  br label %155

155:                                              ; preds = %179, %151
  %156 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %157 = icmp ne %struct.dev_mc_list* %156, null
  br i1 %157, label %158, label %185

158:                                              ; preds = %155
  %159 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %160 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %161 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i32*
  %164 = load i32, i32* @MAC_ADDR_TYPE_MULTI_MAC, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @ql_set_mac_addr_reg(%struct.ql_adapter* %159, i32* %163, i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %158
  %169 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %170 = load i32, i32* @hw, align 4
  %171 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %172 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @netif_err(%struct.ql_adapter* %169, i32 %170, i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %175 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %176 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %177 = call i32 @ql_sem_unlock(%struct.ql_adapter* %175, i32 %176)
  br label %208

178:                                              ; preds = %158
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  %182 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %183 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %182, i32 0, i32 1
  %184 = load %struct.dev_mc_list*, %struct.dev_mc_list** %183, align 8
  store %struct.dev_mc_list* %184, %struct.dev_mc_list** %4, align 8
  br label %155

185:                                              ; preds = %155
  %186 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %187 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %188 = call i32 @ql_sem_unlock(%struct.ql_adapter* %186, i32 %187)
  %189 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %190 = load i32, i32* @RT_IDX_MCAST_MATCH_SLOT, align 4
  %191 = load i32, i32* @RT_IDX_MCAST_MATCH, align 4
  %192 = call i64 @ql_set_routing_reg(%struct.ql_adapter* %189, i32 %190, i32 %191, i32 1)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %196 = load i32, i32* @hw, align 4
  %197 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @netif_err(%struct.ql_adapter* %195, i32 %196, i32 %199, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %206

201:                                              ; preds = %185
  %202 = load i32, i32* @QL_ALLMULTI, align 4
  %203 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %204 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %203, i32 0, i32 0
  %205 = call i32 @set_bit(i32 %202, i32* %204)
  br label %206

206:                                              ; preds = %201, %194
  br label %207

207:                                              ; preds = %206, %139
  br label %208

208:                                              ; preds = %207, %168, %150
  %209 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %210 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %211 = call i32 @ql_sem_unlock(%struct.ql_adapter* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %14
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ql_set_routing_reg(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @ql_set_mac_addr_reg(%struct.ql_adapter*, i32*, i32, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
