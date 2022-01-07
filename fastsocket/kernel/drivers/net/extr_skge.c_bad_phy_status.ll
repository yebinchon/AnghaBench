; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_bad_phy_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_bad_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64 }

@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@XMR_FS_ERR = common dso_local global i32 0, align 4
@XMR_FS_2L_VLAN = common dso_local global i32 0, align 4
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@GMR_FS_RX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*, i32)* @bad_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_phy_status(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skge_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %7 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @XMR_FS_ERR, align 4
  %14 = load i32, i32* @XMR_FS_2L_VLAN, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GMR_FS_RX_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
