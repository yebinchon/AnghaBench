; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phy_event_is_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_phy_event_is_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }
%struct.bnx2_napi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.status_block* }
%struct.status_block = type { i32, i32 }

@BNX2_PCICFG_STATUS_BIT_SET_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_STATUS_BIT_CLEAR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_napi*, i32)* @bnx2_phy_event_is_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_phy_event_is_set(%struct.bnx2* %0, %struct.bnx2_napi* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.status_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.status_block*, %struct.status_block** %13, align 8
  store %struct.status_block* %14, %struct.status_block** %7, align 8
  store i32 1, i32* %10, align 4
  %15 = load %struct.status_block*, %struct.status_block** %7, align 8
  %16 = getelementptr inbounds %struct.status_block, %struct.status_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.status_block*, %struct.status_block** %7, align 8
  %21 = getelementptr inbounds %struct.status_block, %struct.status_block* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %33 = load i32, i32* @BNX2_PCICFG_STATUS_BIT_SET_CMD, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BNX2_WR(%struct.bnx2* %32, i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %38 = load i32, i32* @BNX2_PCICFG_STATUS_BIT_CLEAR_CMD, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BNX2_WR(%struct.bnx2* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %43

42:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
