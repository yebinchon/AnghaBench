; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_rx_ustorm_prods_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_rx_ustorm_prods_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@BAR_USTRORM_INTMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_rx_ustorm_prods_offset(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x_fastpath*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %3, align 8
  %6 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %6, i32 0, i32 2
  %8 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  store %struct.bnx2x* %8, %struct.bnx2x** %4, align 8
  %9 = load i32, i32* @BAR_USTRORM_INTMEM, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = call i64 @IS_VF(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %16 = call i32 @bnx2x_vf_ustorm_prods_offset(%struct.bnx2x* %14, %struct.bnx2x_fastpath* %15)
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @USTORM_RX_PRODS_E2_OFFSET(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %17
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = call i32 @BP_PORT(%struct.bnx2x* %31)
  %33 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @USTORM_RX_PRODS_E1X_OFFSET(i32 %32, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %30, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf_ustorm_prods_offset(%struct.bnx2x*, %struct.bnx2x_fastpath*) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @USTORM_RX_PRODS_E2_OFFSET(i32) #1

declare dso_local i64 @USTORM_RX_PRODS_E1X_OFFSET(i32, i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
