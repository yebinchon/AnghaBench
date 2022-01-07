; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32 }

@igb_gstrings_test = common dso_local global i32* null, align 8
@IGB_TEST_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@IGB_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_stats = common dso_local global %struct.TYPE_3__* null, align 8
@IGB_NETDEV_STATS_LEN = common dso_local global i32 0, align 4
@igb_gstrings_net_stats = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"tx_queue_%u_packets\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_queue_%u_bytes\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tx_queue_%u_restart\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"rx_queue_%u_packets\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_bytes\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"rx_queue_%u_drops\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"rx_queue_%u_csum_err\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"rx_queue_%u_alloc_failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @igb_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igb_adapter* %11, %struct.igb_adapter** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %145 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** @igb_gstrings_test, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IGB_TEST_LEN, align 4
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @memcpy(i32* %15, i32 %17, i32 %20)
  br label %145

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IGB_GLOBAL_STATS_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @igb_gstrings_stats, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %36 = call i32 @memcpy(i32* %28, i32 %34, i32 %35)
  %37 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IGB_NETDEV_STATS_LEN, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @igb_gstrings_net_stats, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %58 = call i32 @memcpy(i32* %50, i32 %56, i32 %57)
  %59 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %45

66:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %70 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @sprintf(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @sprintf(i32* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @sprintf(i32* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %67

98:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %141, %98
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %102 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %144

105:                                              ; preds = %99
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @sprintf(i32* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %8, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @sprintf(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %8, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @sprintf(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %8, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @sprintf(i32* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %8, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @sprintf(i32* %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %8, align 8
  br label %141

141:                                              ; preds = %105
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %99

144:                                              ; preds = %99
  br label %145

145:                                              ; preds = %3, %144, %14
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
