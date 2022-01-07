; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_handle_assoc_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_handle_assoc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)*, %struct.net_device* }
%struct.libipw_assoc_response = type opaque
%struct.libipw_network = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32, i32*, i8*, i8*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.libipw_assoc_response.0 = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.libipw_rx_stats* }
%struct.libipw_rx_stats = type { i64, i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@LIBIPW_52GHZ_BAND = common dso_local global i64 0, align 8
@NETWORK_HAS_CCK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@NETWORK_HAS_OFDM = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.libipw_assoc_response.0*, %struct.libipw_rx_stats*)* @libipw_handle_assoc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_handle_assoc_resp(%struct.libipw_device* %0, %struct.libipw_assoc_response.0* %1, %struct.libipw_rx_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libipw_device*, align 8
  %6 = alloca %struct.libipw_assoc_response.0*, align 8
  %7 = alloca %struct.libipw_rx_stats*, align 8
  %8 = alloca %struct.libipw_network, align 8
  %9 = alloca %struct.libipw_network*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %5, align 8
  store %struct.libipw_assoc_response.0* %1, %struct.libipw_assoc_response.0** %6, align 8
  store %struct.libipw_rx_stats* %2, %struct.libipw_rx_stats** %7, align 8
  %11 = bitcast %struct.libipw_network* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 152, i1 false)
  store %struct.libipw_network* %8, %struct.libipw_network** %9, align 8
  %12 = load %struct.libipw_device*, %struct.libipw_device** %5, align 8
  %13 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %10, align 8
  %15 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %16 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %18 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %17, i32 0, i32 16
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %21 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %20, i32 0, i32 16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %24 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %23, i32 0, i32 16
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %27 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %26, i32 0, i32 16
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %30 = getelementptr inbounds %struct.libipw_assoc_response.0, %struct.libipw_assoc_response.0* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %34 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %33, i32 0, i32 15
  store i8* %32, i8** %34, align 8
  %35 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %36 = getelementptr inbounds %struct.libipw_assoc_response.0, %struct.libipw_assoc_response.0* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @le16_to_cpu(i32 %37)
  %39 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %40 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %39, i32 0, i32 14
  store i8* %38, i8** %40, align 8
  %41 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %42 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %41, i32 0, i32 13
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %45 = getelementptr inbounds %struct.libipw_assoc_response.0, %struct.libipw_assoc_response.0* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %46, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32* %43, %struct.libipw_rx_stats* %47, i32 %48)
  %50 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %51 = getelementptr inbounds %struct.libipw_assoc_response.0, %struct.libipw_assoc_response.0* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %56 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %59 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 8
  %60 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %61 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %60, i32 0, i32 10
  store i64 0, i64* %61, align 8
  %62 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %63 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %65 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %67 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %69 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 3, i32 0
  %76 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %77 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %7, align 8
  %79 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %3
  %84 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %7, align 8
  %85 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %88 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  br label %95

89:                                               ; preds = %3
  %90 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %91 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %92 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %97 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %99 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %101 = getelementptr inbounds %struct.libipw_assoc_response.0, %struct.libipw_assoc_response.0* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %7, align 8
  %104 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 24
  %107 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %108 = call i64 @libipw_parse_info_param(i32 %102, i64 %106, %struct.libipw_network* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %169

111:                                              ; preds = %95
  %112 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %113 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %7, align 8
  %115 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @IEEE_A, align 4
  %121 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %122 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  br label %150

123:                                              ; preds = %111
  %124 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %125 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NETWORK_HAS_OFDM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @IEEE_G, align 4
  %132 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %133 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %138 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @IEEE_B, align 4
  %145 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %146 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %119
  %151 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %152 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %151, i32 0, i32 3
  %153 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %7, align 8
  %154 = call i32 @memcpy(i32* %152, %struct.libipw_rx_stats* %153, i32 4)
  %155 = load %struct.libipw_device*, %struct.libipw_device** %5, align 8
  %156 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %155, i32 0, i32 0
  %157 = load i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)*, i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)** %156, align 8
  %158 = icmp ne i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %150
  %160 = load %struct.libipw_device*, %struct.libipw_device** %5, align 8
  %161 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %160, i32 0, i32 0
  %162 = load i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)*, i32 (%struct.net_device*, %struct.libipw_assoc_response*, %struct.libipw_network*)** %161, align 8
  %163 = load %struct.net_device*, %struct.net_device** %10, align 8
  %164 = load %struct.libipw_assoc_response.0*, %struct.libipw_assoc_response.0** %6, align 8
  %165 = bitcast %struct.libipw_assoc_response.0* %164 to %struct.libipw_assoc_response*
  %166 = load %struct.libipw_network*, %struct.libipw_network** %9, align 8
  %167 = call i32 %162(%struct.net_device* %163, %struct.libipw_assoc_response* %165, %struct.libipw_network* %166)
  br label %168

168:                                              ; preds = %159, %150
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %110
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.libipw_rx_stats*, i32) #2

declare dso_local i64 @libipw_parse_info_param(i32, i64, %struct.libipw_network*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
