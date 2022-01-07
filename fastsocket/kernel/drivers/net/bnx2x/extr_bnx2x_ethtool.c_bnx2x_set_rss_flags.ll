; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rss_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rss_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Set rss flags command parameters: flow type = %d, data = %llu\0A\00", align 1
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"rss re-configured, UDP 4-tupple %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.ethtool_rxnfc*)* @bnx2x_set_rss_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_rss_flags(%struct.bnx2x* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @DP(i32 %7, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %145 [
    i32 131, label %18
    i32 130, label %18
    i32 129, label %37
    i32 128, label %37
    i32 136, label %119
    i32 135, label %119
    i32 133, label %134
    i32 143, label %134
    i32 141, label %134
    i32 139, label %134
    i32 132, label %134
    i32 142, label %134
    i32 140, label %134
    i32 138, label %134
    i32 134, label %134
    i32 137, label %134
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RXH_IP_SRC, align 4
  %23 = load i32, i32* @RXH_IP_DST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RXH_L4_B_0_1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RXH_L4_B_2_3, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %148

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %148

37:                                               ; preds = %2, %2
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RXH_IP_SRC, align 4
  %42 = load i32, i32* @RXH_IP_DST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RXH_L4_B_0_1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RXH_L4_B_2_3, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %63

50:                                               ; preds = %37
  %51 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RXH_IP_SRC, align 4
  %55 = load i32, i32* @RXH_IP_DST, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %148

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %85 = call i32 (i32, i8*, ...) @DP(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 0
  %89 = call i32 @bnx2x_config_rss_pf(%struct.bnx2x* %86, %struct.TYPE_2__* %88, i32 0)
  store i32 %89, i32* %3, align 4
  br label %148

90:                                               ; preds = %68, %63
  %91 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %112 = call i32 (i32, i8*, ...) @DP(i32 %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %114 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 0
  %116 = call i32 @bnx2x_config_rss_pf(%struct.bnx2x* %113, %struct.TYPE_2__* %115, i32 0)
  store i32 %116, i32* %3, align 4
  br label %148

117:                                              ; preds = %95, %90
  br label %118

118:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %148

119:                                              ; preds = %2, %2
  %120 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RXH_IP_SRC, align 4
  %124 = load i32, i32* @RXH_IP_DST, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %130 = call i32 (i32, i8*, ...) @DP(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %148

133:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %148

134:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %135 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %136 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %141 = call i32 (i32, i8*, ...) @DP(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %148

144:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %148

145:                                              ; preds = %2
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %144, %139, %133, %128, %118, %102, %75, %59, %36, %31
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_config_rss_pf(%struct.bnx2x*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
