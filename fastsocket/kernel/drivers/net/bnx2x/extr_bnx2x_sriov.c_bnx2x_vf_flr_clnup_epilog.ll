; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup_epilog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup_epilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"PCIE Transactions still pending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_flr_clnup_epilog(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @bnx2x_vf_is_pcie_pending(%struct.bnx2x* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  ret i32 0
}

declare dso_local i64 @bnx2x_vf_is_pcie_pending(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
