; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_set_csum_offload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_set_csum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, i8*, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@IBMVETH_ILLAN_IPV4_TCP_CSUM = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_IPV6_TCP_CSUM = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_ACTIVE_TRUNK = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_TRUNK_PRI_MASK = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_PADDED_PKT_CSUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"unable to change IPv4 checksum offload settings. %d rc=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"unable to change IPv6 checksum offload settings. %d rc=%ld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"unable to change checksum offload settings. %d rc=%ld ret_attr=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, void (%struct.net_device*, i8*)*)* @ibmveth_set_csum_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_set_csum_offload(%struct.net_device* %0, i8* %1, void (%struct.net_device*, i8*)* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (%struct.net_device*, i8*)*, align 8
  %7 = alloca %struct.ibmveth_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (%struct.net_device*, i8*)* %2, void (%struct.net_device*, i8*)** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.ibmveth_adapter* %19, %struct.ibmveth_adapter** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  store i32 1, i32* %17, align 4
  %24 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @ibmveth_close(%struct.net_device* %26)
  %28 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %3
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @IBMVETH_ILLAN_IPV4_TCP_CSUM, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* @IBMVETH_ILLAN_IPV6_TCP_CSUM, align 8
  store i64 %35, i64* %11, align 8
  br label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @IBMVETH_ILLAN_IPV4_TCP_CSUM, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @IBMVETH_ILLAN_IPV6_TCP_CSUM, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @h_illan_attributes(i32 %44, i64 0, i64 0, i64* %10)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @H_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %138

49:                                               ; preds = %39
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @IBMVETH_ILLAN_ACTIVE_TRUNK, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %138, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @IBMVETH_ILLAN_TRUNK_PRI_MASK, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %138, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @IBMVETH_ILLAN_PADDED_PKT_CSUM, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %138

64:                                               ; preds = %59
  %65 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @h_illan_attributes(i32 %69, i64 %70, i64 %71, i64* %10)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @H_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %64
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 (%struct.net_device*, i8*, i8*, i64, ...) @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %78, i64 %79)
  %81 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %82 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @h_illan_attributes(i32 %85, i64 %86, i64 %87, i64* %10)
  store i64 %88, i64* %13, align 8
  br label %93

89:                                               ; preds = %64
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %92 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %76
  %94 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @h_illan_attributes(i32 %98, i64 %99, i64 %100, i64* %10)
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @H_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %93
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 (%struct.net_device*, i8*, i8*, i64, ...) @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %107, i64 %108)
  %110 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @h_illan_attributes(i32 %114, i64 %115, i64 %116, i64* %10)
  store i64 %117, i64* %13, align 8
  br label %122

118:                                              ; preds = %93
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %7, align 8
  %121 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %118, %105
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @H_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* @H_SUCCESS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %122
  %131 = load void (%struct.net_device*, i8*)*, void (%struct.net_device*, i8*)** %6, align 8
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = load i8*, i8** %5, align 8
  call void %131(%struct.net_device* %132, i8* %133)
  br label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %130
  br label %146

138:                                              ; preds = %59, %54, %49, %39
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %15, align 4
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 (%struct.net_device*, i8*, i8*, i64, ...) @netdev_err(%struct.net_device* %141, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %142, i64 %143, i64 %144)
  br label %146

146:                                              ; preds = %138, %137
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = call i32 @ibmveth_open(%struct.net_device* %150)
  store i32 %151, i32* %16, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %15, align 4
  br label %159

157:                                              ; preds = %152
  %158 = load i32, i32* %16, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  ret i32 %160
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ibmveth_close(%struct.net_device*) #1

declare dso_local i64 @h_illan_attributes(i32, i64, i64, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*, i64, ...) #1

declare dso_local i32 @ibmveth_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
