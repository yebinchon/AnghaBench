; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_network_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_libipw_network_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32 }
%struct.libipw_probe_response = type { i32, i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.libipw_rx_stats* }
%struct.libipw_network = type { i32, i32, i32, i32, i32, i32*, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, i8*, i8**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.libipw_rx_stats = type { i64, i64, i32 }

@ssid = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@LIBIPW_52GHZ_BAND = common dso_local global i64 0, align 8
@NETWORK_HAS_CCK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@NETWORK_HAS_OFDM = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Filtered out '%s (%pM)' network.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libipw_device*, %struct.libipw_probe_response*, %struct.libipw_network*, %struct.libipw_rx_stats*)* @libipw_network_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_network_init(%struct.libipw_device* %0, %struct.libipw_probe_response* %1, %struct.libipw_network* %2, %struct.libipw_rx_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.libipw_probe_response*, align 8
  %8 = alloca %struct.libipw_network*, align 8
  %9 = alloca %struct.libipw_rx_stats*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.libipw_probe_response* %1, %struct.libipw_probe_response** %7, align 8
  store %struct.libipw_network* %2, %struct.libipw_network** %8, align 8
  store %struct.libipw_rx_stats* %3, %struct.libipw_rx_stats** %9, align 8
  %10 = load i32, i32* @ssid, align 4
  %11 = call i32 @DECLARE_SSID_BUF(i32 %10)
  %12 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %13 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %16 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %15, i32 0, i32 19
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %19 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %18, i32 0, i32 19
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %22 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %21, i32 0, i32 19
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %25 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %28 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %29, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @memcpy(i32* %26, %struct.libipw_rx_stats* %30, i32 %31)
  %33 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %34 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %39 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %42 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %41, i32 0, i32 18
  store i32 %40, i32* %42, align 8
  %43 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %44 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %50 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %49, i32 0, i32 17
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %54 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %60 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %59, i32 0, i32 17
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %64 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le16_to_cpu(i32 %65)
  %67 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %68 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %67, i32 0, i32 16
  store i8* %66, i8** %68, align 8
  %69 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %70 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %69, i32 0, i32 1
  store i32 10, i32* %70, align 4
  %71 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %72 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %71, i32 0, i32 14
  store i64 0, i64* %72, align 8
  %73 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %74 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %73, i32 0, i32 15
  store i64 0, i64* %74, align 8
  %75 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %76 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %75, i32 0, i32 13
  store i64 0, i64* %76, align 8
  %77 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %78 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %80 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %82 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %81, i32 0, i32 12
  store i64 0, i64* %82, align 8
  %83 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %84 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 3, i32 0
  %91 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %92 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %94 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %4
  %99 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %100 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %103 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  br label %110

104:                                              ; preds = %4
  %105 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %106 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %107 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %112 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %111, i32 0, i32 10
  store i64 0, i64* %112, align 8
  %113 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %114 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %113, i32 0, i32 9
  store i64 0, i64* %114, align 8
  %115 = load %struct.libipw_probe_response*, %struct.libipw_probe_response** %7, align 8
  %116 = getelementptr inbounds %struct.libipw_probe_response, %struct.libipw_probe_response* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %119 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, 32
  %122 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %123 = call i64 @libipw_parse_info_param(i32 %117, i64 %121, %struct.libipw_network* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  store i32 1, i32* %5, align 4
  br label %188

126:                                              ; preds = %110
  %127 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %128 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %127, i32 0, i32 8
  store i32 0, i32* %128, align 4
  %129 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %130 = getelementptr inbounds %struct.libipw_rx_stats, %struct.libipw_rx_stats* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @LIBIPW_52GHZ_BAND, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @IEEE_A, align 4
  %136 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %137 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  br label %165

138:                                              ; preds = %126
  %139 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %140 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @NETWORK_HAS_OFDM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @IEEE_G, align 4
  %147 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %148 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %153 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load i32, i32* @IEEE_B, align 4
  %160 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %161 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %158, %151
  br label %165

165:                                              ; preds = %164, %134
  %166 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %167 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i32, i32* @ssid, align 4
  %172 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %173 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %176 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @print_ssid(i32 %171, i32 %174, i64 %177)
  %179 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %180 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @LIBIPW_DEBUG_SCAN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %178, i32* %181)
  store i32 1, i32* %5, align 4
  br label %188

183:                                              ; preds = %165
  %184 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %185 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %184, i32 0, i32 4
  %186 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %9, align 8
  %187 = call i32 @memcpy(i32* %185, %struct.libipw_rx_stats* %186, i32 4)
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %183, %170, %125
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.libipw_rx_stats*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @libipw_parse_info_param(i32, i64, %struct.libipw_network*) #1

declare dso_local i32 @LIBIPW_DEBUG_SCAN(i8*, i32, i32*) #1

declare dso_local i32 @print_ssid(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
