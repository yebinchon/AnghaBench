; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_disable_kr2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_disable_kr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32 }
%struct.bnx2x_phy = type { i32 }

@bnx2x_disable_kr2.reg_set = internal global [15 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 143, i32 136, i32 30352, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 134, i32 58951, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 135, i32 50416, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 133, i32 30352, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 137, i32 58951, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 138, i32 50416, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 139, i32 12, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 141, i32 24576, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 140, i32 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 142, i32 2, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 130, i32 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 129, i32 2807, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 128, i32 2807, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 132, i32 2, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 143, i32 131, i32 0, i32 0, i32 0, i32 0 }], align 16
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Disabling 20G-KR2\0A\00", align 1
@LINK_ATTR_SYNC_KR2_ENABLE = common dso_local global i32 0, align 4
@CHECK_KR2_RECOVERY_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*, %struct.bnx2x_phy*)* @bnx2x_disable_kr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_disable_kr2(%struct.link_params* %0, %struct.link_vars* %1, %struct.bnx2x_phy* %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store %struct.bnx2x_phy* %2, %struct.bnx2x_phy** %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load i32, i32* @NETIF_MSG_LINK, align 4
  %13 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_disable_kr2.reg_set, i64 0, i64 0))
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_disable_kr2.reg_set, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_disable_kr2.reg_set, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [15 x %struct.bnx2x_reg_set], [15 x %struct.bnx2x_reg_set]* @bnx2x_disable_kr2.reg_set, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %25, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %18
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* @LINK_ATTR_SYNC_KR2_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %44 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.link_params*, %struct.link_params** %4, align 8
  %48 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %49 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bnx2x_update_link_attr(%struct.link_params* %47, i32 %50)
  %52 = load i32, i32* @CHECK_KR2_RECOVERY_CNT, align 4
  %53 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %54 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_update_link_attr(%struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
