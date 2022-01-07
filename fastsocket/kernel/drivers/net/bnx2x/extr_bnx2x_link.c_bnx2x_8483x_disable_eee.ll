; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8483x_disable_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_8483x_disable_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Don't Advertise 10GBase-T EEE\0A\00", align 1
@PHY84833_CMD_SET_EEE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"EEE disable failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8483x_disable_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8483x_disable_eee(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  %11 = load %struct.link_params*, %struct.link_params** %6, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @NETIF_MSG_LINK, align 4
  %15 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %17 = load %struct.link_params*, %struct.link_params** %6, align 8
  %18 = load i32, i32* @PHY84833_CMD_SET_EEE_MODE, align 4
  %19 = call i32 @bnx2x_84833_cmd_hdlr(%struct.bnx2x_phy* %16, %struct.link_params* %17, i32 %18, i32* %10, i32 1)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @NETIF_MSG_LINK, align 4
  %24 = call i32 @DP(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %28 = load %struct.link_params*, %struct.link_params** %6, align 8
  %29 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %30 = call i32 @bnx2x_eee_disable(%struct.bnx2x_phy* %27, %struct.link_params* %28, %struct.link_vars* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_84833_cmd_hdlr(%struct.bnx2x_phy*, %struct.link_params*, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_eee_disable(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
