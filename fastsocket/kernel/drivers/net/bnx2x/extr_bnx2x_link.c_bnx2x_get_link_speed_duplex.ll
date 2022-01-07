; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_get_link_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_get_link_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32, i32, i32, i32 }

@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_ENABLED = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"phy link up\0A\00", align 1
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@LINK_10TFD = common dso_local global i32 0, align 4
@LINK_10THD = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@LINK_100TXFD = common dso_local global i32 0, align 4
@LINK_100TXHD = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@LINK_1000TFD = common dso_local global i32 0, align 4
@LINK_1000THD = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@LINK_2500TFD = common dso_local global i32 0, align 4
@LINK_2500THD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"link speed unsupported  gp_status 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@LINK_10GTFD = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i32 0, align 4
@LINK_20GTFD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"link speed unsupported gp_status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"phy link down\0A\00", align 1
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@MAC_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c" phy_link_up %x line_speed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32, i32, i32)* @bnx2x_get_link_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_link_speed_duplex(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_phy*, align 8
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca %struct.link_vars*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %8, align 8
  store %struct.link_params* %1, %struct.link_params** %9, align 8
  store %struct.link_vars* %2, %struct.link_vars** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.link_params*, %struct.link_params** %9, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  store %struct.bnx2x* %17, %struct.bnx2x** %14, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %8, align 8
  %19 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_ENABLED, align 4
  %25 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %26 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %154

32:                                               ; preds = %29
  %33 = load i32, i32* @NETIF_MSG_LINK, align 4
  %34 = call i32 (i32, i8*, ...) @DP(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %38 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %39 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %12, align 4
  switch i32 %42, label %147 [
    i32 135, label %43
    i32 142, label %63
    i32 134, label %83
    i32 133, label %83
    i32 130, label %103
    i32 129, label %123
    i32 128, label %123
    i32 138, label %129
    i32 140, label %129
    i32 141, label %129
    i32 139, label %129
    i32 137, label %129
    i32 136, label %129
    i32 132, label %138
    i32 131, label %138
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @SPEED_10, align 4
  %45 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %46 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @DUPLEX_FULL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @LINK_10TFD, align 4
  %52 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %53 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %62

56:                                               ; preds = %43
  %57 = load i32, i32* @LINK_10THD, align 4
  %58 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %59 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %153

63:                                               ; preds = %32
  %64 = load i32, i32* @SPEED_100, align 4
  %65 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %66 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @DUPLEX_FULL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @LINK_100TXFD, align 4
  %72 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %73 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load i32, i32* @LINK_100TXHD, align 4
  %78 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %79 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %153

83:                                               ; preds = %32, %32
  %84 = load i32, i32* @SPEED_1000, align 4
  %85 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %86 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @DUPLEX_FULL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @LINK_1000TFD, align 4
  %92 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %93 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %102

96:                                               ; preds = %83
  %97 = load i32, i32* @LINK_1000THD, align 4
  %98 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %99 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %90
  br label %153

103:                                              ; preds = %32
  %104 = load i32, i32* @SPEED_2500, align 4
  %105 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %106 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @DUPLEX_FULL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @LINK_2500TFD, align 4
  %112 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %113 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %122

116:                                              ; preds = %103
  %117 = load i32, i32* @LINK_2500THD, align 4
  %118 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %119 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %110
  br label %153

123:                                              ; preds = %32, %32
  %124 = load i32, i32* @NETIF_MSG_LINK, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i32, i8*, ...) @DP(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %177

129:                                              ; preds = %32, %32, %32, %32, %32, %32
  %130 = load i32, i32* @SPEED_10000, align 4
  %131 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %132 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @LINK_10GTFD, align 4
  %134 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %135 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %153

138:                                              ; preds = %32, %32
  %139 = load i32, i32* @SPEED_20000, align 4
  %140 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %141 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @LINK_20GTFD, align 4
  %143 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %144 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %153

147:                                              ; preds = %32
  %148 = load i32, i32* @NETIF_MSG_LINK, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 (i32, i8*, ...) @DP(i32 %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %7, align 4
  br label %177

153:                                              ; preds = %138, %129, %122, %102, %82, %62
  br label %168

154:                                              ; preds = %29
  %155 = load i32, i32* @NETIF_MSG_LINK, align 4
  %156 = call i32 (i32, i8*, ...) @DP(i32 %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %157 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %158 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %157, i32 0, i32 0
  store i32 0, i32* %158, align 4
  %159 = load i32, i32* @DUPLEX_FULL, align 4
  %160 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %161 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %163 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %164 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @MAC_TYPE_NONE, align 4
  %166 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %167 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %154, %153
  %169 = load i32, i32* @NETIF_MSG_LINK, align 4
  %170 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %171 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.link_vars*, %struct.link_vars** %10, align 8
  %174 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @DP(i32 %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %175)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %168, %147, %123
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @DP(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
