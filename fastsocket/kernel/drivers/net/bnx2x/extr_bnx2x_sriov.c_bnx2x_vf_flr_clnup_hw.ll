; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@DORQ_REG_VF_USAGE_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DQ VF usage counter timed out\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"VF[%d] Final cleanup timed-out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_flr_clnup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_flr_clnup_hw(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i32 @bnx2x_flr_clnup_poll_count(%struct.bnx2x* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @HW_VF_HANDLE(%struct.bnx2x* %9, i32 %12)
  %14 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %8, i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i32, i32* @DORQ_REG_VF_USAGE_CNT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x* %15, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %20)
  %22 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %19, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @FW_VF_HANDLE(i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @bnx2x_send_final_clnup(%struct.bnx2x* %23, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @bnx2x_tx_hw_flushed(%struct.bnx2x* %38, i32 %39)
  ret void
}

declare dso_local i32 @bnx2x_flr_clnup_poll_count(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @HW_VF_HANDLE(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_flr_clnup_poll_hw_counter(%struct.bnx2x*, i32, i8*, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_send_final_clnup(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_tx_hw_flushed(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
