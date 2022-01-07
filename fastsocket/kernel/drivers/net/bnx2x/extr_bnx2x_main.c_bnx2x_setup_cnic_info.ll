; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_setup_cnic_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_setup_cnic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.cnic_eth_dev }
%struct.cnic_eth_dev = type { i32, i32, i32, i32, i64 }

@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI_OOO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_setup_cnic_info(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 0
  store %struct.cnic_eth_dev* %5, %struct.cnic_eth_dev** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @BP_FUNC(%struct.bnx2x* %6)
  %8 = call i64 @FUNC_ILT_BASE(i32 %7)
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i32 @bnx2x_cid_ilt_lines(%struct.bnx2x* %9)
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i32 @bnx2x_cid_ilt_lines(%struct.bnx2x* %15)
  %17 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i32 @BNX2X_FCOE_ETH_CID(%struct.bnx2x* %21)
  %23 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %25)
  %27 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %28 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = call i64 @NO_ISCSI_OOO(%struct.bnx2x* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI_OOO, align 4
  %34 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %3, align 8
  %35 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @FUNC_ILT_BASE(i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cid_ilt_lines(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_FCOE_ETH_CID(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x*) #1

declare dso_local i64 @NO_ISCSI_OOO(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
