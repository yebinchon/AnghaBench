; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32 }

@qlcnic_gstrings_test = common dso_local global i32* null, align 8
@QLCNIC_TEST_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@QLCNIC_STATS_LEN = common dso_local global i32 0, align 4
@qlcnic_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@qlcnic_83xx_tx_stats_strings = common dso_local global i32* null, align 8
@qlcnic_83xx_mac_stats_strings = common dso_local global i32* null, align 8
@qlcnic_83xx_rx_stats_strings = common dso_local global i32* null, align 8
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@qlcnic_device_gstrings_stats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @qlcnic_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %190 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @qlcnic_gstrings_test, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QLCNIC_TEST_LEN, align 4
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @memcpy(i32* %15, i32 %17, i32 %20)
  br label %190

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @QLCNIC_STATS_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qlcnic_gstrings_stats, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %41 = call i32 @memcpy(i32* %33, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %47 = call i32 @qlcnic_83xx_check(%struct.qlcnic_adapter* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %128

49:                                               ; preds = %45
  %50 = load i32*, i32** @qlcnic_83xx_tx_stats_strings, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  store i32 %51, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %70, %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32*, i32** @qlcnic_83xx_tx_stats_strings, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %69 = call i32 @memcpy(i32* %62, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load i32*, i32** @qlcnic_83xx_mac_stats_strings, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %96, %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32*, i32** @qlcnic_83xx_mac_stats_strings, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %95 = call i32 @memcpy(i32* %88, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load i32*, i32** @qlcnic_83xx_rx_stats_strings, align 8
  %103 = call i32 @ARRAY_SIZE(i32* %102)
  store i32 %103, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %122, %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32*, i32** @qlcnic_83xx_rx_stats_strings, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %121 = call i32 @memcpy(i32* %114, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %104

127:                                              ; preds = %104
  br label %190

128:                                              ; preds = %45
  %129 = load i32*, i32** @qlcnic_83xx_mac_stats_strings, align 8
  %130 = call i32 @ARRAY_SIZE(i32* %129)
  store i32 %130, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %149, %128
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %131
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32*, i32** @qlcnic_83xx_mac_stats_strings, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %148 = call i32 @memcpy(i32* %141, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %131

154:                                              ; preds = %131
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %157 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %155
  br label %190

163:                                              ; preds = %155
  %164 = load i32*, i32** @qlcnic_device_gstrings_stats, align 8
  %165 = call i32 @ARRAY_SIZE(i32* %164)
  store i32 %165, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %184, %163
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32*, i32** @qlcnic_device_gstrings_stats, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %183 = call i32 @memcpy(i32* %176, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %170
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %166

189:                                              ; preds = %166
  br label %190

190:                                              ; preds = %127, %162, %189, %3, %14
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
