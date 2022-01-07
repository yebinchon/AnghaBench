; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rx_res_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_rx_res_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_res_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BNA_RX_RES_T_MAX = common dso_local global i32 0, align 4
@BNA_RES_T_MEM = common dso_local global i64 0, align 8
@BNA_RES_T_INTR = common dso_local global i64 0, align 8
@BNAD_INTR_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_res_info*, i32)* @bnad_rx_res_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_rx_res_alloc(%struct.bnad* %0, %struct.bna_res_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %5, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %58, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @BNA_RX_RES_T_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i64 %17
  %19 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BNA_RES_T_MEM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.bnad*, %struct.bnad** %5, align 8
  %25 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %25, i64 %27
  %29 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @bnad_mem_alloc(%struct.bnad* %24, i32* %30)
  store i32 %31, i32* %9, align 4
  br label %53

32:                                               ; preds = %14
  %33 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %33, i64 %35
  %37 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BNA_RES_T_INTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.bnad*, %struct.bnad** %5, align 8
  %43 = load i32, i32* @BNAD_INTR_RX, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %45, i64 %47
  %49 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @bnad_txrx_irq_alloc(%struct.bnad* %42, i32 %43, i32 %44, i32* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %41, %32
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %62

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %10

61:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %67

62:                                               ; preds = %56
  %63 = load %struct.bnad*, %struct.bnad** %5, align 8
  %64 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %65 = call i32 @bnad_rx_res_free(%struct.bnad* %63, %struct.bna_res_info* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @bnad_mem_alloc(%struct.bnad*, i32*) #1

declare dso_local i32 @bnad_txrx_irq_alloc(%struct.bnad*, i32, i32, i32*) #1

declare dso_local i32 @bnad_rx_res_free(%struct.bnad*, %struct.bna_res_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
