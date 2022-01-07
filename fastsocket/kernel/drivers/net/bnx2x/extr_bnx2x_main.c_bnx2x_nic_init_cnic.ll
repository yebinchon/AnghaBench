; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_nic_init_cnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_nic_init_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_VF_ID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_nic_init_cnic(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = call i32 @NO_FCOE(%struct.bnx2x* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @bnx2x_init_fcoe_fp(%struct.bnx2x* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BNX2X_VF_ID_INVALID, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i32 @bnx2x_cnic_fw_sb_id(%struct.bnx2x* %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i32 @bnx2x_cnic_igu_sb_id(%struct.bnx2x* %17)
  %19 = call i32 @bnx2x_init_sb(%struct.bnx2x* %10, i32 %13, i32 %14, i32 0, i32 %16, i32 %18)
  %20 = call i32 (...) @rmb()
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i32 @bnx2x_init_rx_rings_cnic(%struct.bnx2x* %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i32 @bnx2x_init_tx_rings_cnic(%struct.bnx2x* %23)
  %25 = call i32 (...) @mb()
  %26 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_fcoe_fp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_sb(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cnic_fw_sb_id(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_cnic_igu_sb_id(%struct.bnx2x*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @bnx2x_init_rx_rings_cnic(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_tx_rings_cnic(%struct.bnx2x*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
