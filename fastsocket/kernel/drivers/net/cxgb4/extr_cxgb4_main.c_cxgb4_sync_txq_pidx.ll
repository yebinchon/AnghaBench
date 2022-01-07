; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_sync_txq_pidx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb4_sync_txq_pidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }

@A_SGE_PF_KDOORBELL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_sync_txq_pidx(%struct.net_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.adapter* @netdev2adap(%struct.net_device* %14)
  store %struct.adapter* %15, %struct.adapter** %9, align 8
  %16 = load %struct.adapter*, %struct.adapter** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @read_eq_indices(%struct.adapter* %16, i64 %17, i64* %10, i64* %11)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %52

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %13, align 8
  br label %40

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %34, %30
  %41 = call i32 (...) @wmb()
  %42 = load %struct.adapter*, %struct.adapter** %9, align 8
  %43 = load i32, i32* @A_SGE_PF_KDOORBELL, align 4
  %44 = call i32 @MYPF_REG(i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @V_QID(i64 %45)
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @V_PIDX(i64 %47)
  %49 = or i32 %46, %48
  %50 = call i32 @t4_write_reg(%struct.adapter* %42, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %40, %22
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %12, align 4
  ret i32 %53
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @read_eq_indices(%struct.adapter*, i64, i64*, i64*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @V_QID(i64) #1

declare dso_local i32 @V_PIDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
