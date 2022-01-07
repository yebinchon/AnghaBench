; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_rx_mode_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_rx_mode_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rx_mode_obj = type { i32, i32 }

@bnx2x_empty_rx_mode_wait = common dso_local global i32 0, align 4
@bnx2x_set_rx_mode_e1x = common dso_local global i32 0, align 4
@bnx2x_wait_rx_mode_comp_e2 = common dso_local global i32 0, align 4
@bnx2x_set_rx_mode_e2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_rx_mode_obj(%struct.bnx2x* %0, %struct.bnx2x_rx_mode_obj* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_rx_mode_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_rx_mode_obj* %1, %struct.bnx2x_rx_mode_obj** %4, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @bnx2x_empty_rx_mode_wait, align 4
  %10 = load %struct.bnx2x_rx_mode_obj*, %struct.bnx2x_rx_mode_obj** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_rx_mode_obj, %struct.bnx2x_rx_mode_obj* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @bnx2x_set_rx_mode_e1x, align 4
  %13 = load %struct.bnx2x_rx_mode_obj*, %struct.bnx2x_rx_mode_obj** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x_rx_mode_obj, %struct.bnx2x_rx_mode_obj* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @bnx2x_wait_rx_mode_comp_e2, align 4
  %17 = load %struct.bnx2x_rx_mode_obj*, %struct.bnx2x_rx_mode_obj** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_rx_mode_obj, %struct.bnx2x_rx_mode_obj* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @bnx2x_set_rx_mode_e2, align 4
  %20 = load %struct.bnx2x_rx_mode_obj*, %struct.bnx2x_rx_mode_obj** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_rx_mode_obj, %struct.bnx2x_rx_mode_obj* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
