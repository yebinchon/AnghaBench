; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_84833_cmd_hdlr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_84833_cmd_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@MDIO_84833_CMD_HDLR_STATUS = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_OPEN_OVERRIDE = common dso_local global i64 0, align 8
@PHY84833_CMDHDLR_WAIT = common dso_local global i32 0, align 4
@PHY84833_STATUS_CMD_OPEN_FOR_CMDS = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FW cmd: FW not ready.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_84833_CMD_HDLR_DATA1 = common dso_local global i64 0, align 8
@MDIO_84833_CMD_HDLR_COMMAND = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_COMPLETE_PASS = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_COMPLETE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"FW cmd failed.\0A\00", align 1
@PHY84833_STATUS_CMD_CLEAR_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, i64, i64*, i32)* @bnx2x_84833_cmd_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_84833_cmd_hdlr(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_phy*, align 8
  %8 = alloca %struct.link_params*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %7, align 8
  store %struct.link_params* %1, %struct.link_params** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.link_params*, %struct.link_params** %8, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  store %struct.bnx2x* %17, %struct.bnx2x** %14, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %20 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %21 = load i64, i64* @MDIO_84833_CMD_HDLR_STATUS, align 8
  %22 = load i64, i64* @PHY84833_STATUS_CMD_OPEN_OVERRIDE, align 8
  %23 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, i32 %20, i64 %21, i64 %22)
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %40, %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @PHY84833_CMDHDLR_WAIT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %30 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %31 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %32 = load i64, i64* @MDIO_84833_CMD_HDLR_STATUS, align 8
  %33 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %29, %struct.bnx2x_phy* %30, i32 %31, i64 %32, i64* %13)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @PHY84833_STATUS_CMD_OPEN_FOR_CMDS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %43

38:                                               ; preds = %28
  %39 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %24

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @PHY84833_CMDHDLR_WAIT, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @NETIF_MSG_LINK, align 4
  %49 = call i32 @DP(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %145

52:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %60 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %61 = load i64, i64* @MDIO_84833_CMD_HDLR_DATA1, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %58, %struct.bnx2x_phy* %59, i32 %60, i64 %64, i64 %69)
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %76 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %77 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %78 = load i64, i64* @MDIO_84833_CMD_HDLR_COMMAND, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %75, %struct.bnx2x_phy* %76, i32 %77, i64 %78, i64 %79)
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %101, %74
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @PHY84833_CMDHDLR_WAIT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %87 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %88 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %89 = load i64, i64* @MDIO_84833_CMD_HDLR_STATUS, align 8
  %90 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %86, %struct.bnx2x_phy* %87, i32 %88, i64 %89, i64* %13)
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_PASS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %85
  br label %104

99:                                               ; preds = %94
  %100 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %81

104:                                              ; preds = %98, %81
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @PHY84833_CMDHDLR_WAIT, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %104
  %113 = load i32, i32* @NETIF_MSG_LINK, align 4
  %114 = call i32 @DP(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %145

117:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %135, %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %124 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %125 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %126 = load i64, i64* @MDIO_84833_CMD_HDLR_DATA1, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = load i64*, i64** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %123, %struct.bnx2x_phy* %124, i32 %125, i64 %129, i64* %133)
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %118

138:                                              ; preds = %118
  %139 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %140 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %141 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %142 = load i64, i64* @MDIO_84833_CMD_HDLR_STATUS, align 8
  %143 = load i64, i64* @PHY84833_STATUS_CMD_CLEAR_COMPLETE, align 8
  %144 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %139, %struct.bnx2x_phy* %140, i32 %141, i64 %142, i64 %143)
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %138, %112, %47
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i64) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
