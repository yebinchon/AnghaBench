; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cid_ilt_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_cid_ilt_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_FIRST_VF_CID = common dso_local global i32 0, align 4
@BNX2X_VF_CIDS = common dso_local global i32 0, align 4
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_cid_ilt_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cid_ilt_lines(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %5 = call i64 @IS_SRIOV(%struct.bnx2x* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @BNX2X_FIRST_VF_CID, align 4
  %9 = load i32, i32* @BNX2X_VF_CIDS, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call i32 @L2_ILT_LINES(%struct.bnx2x* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @L2_ILT_LINES(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
