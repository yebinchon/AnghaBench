; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_sync_txq_pidx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_sync_txq_pidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i64, i64, i32, i64, i64 }

@A_SGE_PF_KDOORBELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DB drop recovery failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*)* @sync_txq_pidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_txq_pidx(%struct.adapter* %0, %struct.sge_txq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %4, align 8
  %9 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %10 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @read_eq_indices(%struct.adapter* %12, i64 %15, i64* %5, i64* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %22 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %34 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %8, align 8
  br label %48

38:                                               ; preds = %26
  %39 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %40 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %45 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %38, %32
  %49 = call i32 (...) @wmb()
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = load i32, i32* @A_SGE_PF_KDOORBELL, align 4
  %52 = call i32 @MYPF_REG(i32 %51)
  %53 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %54 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @V_QID(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @V_PIDX(i64 %57)
  %59 = or i32 %56, %58
  %60 = call i32 @t4_write_reg(%struct.adapter* %50, i32 %52, i32 %59)
  br label %61

61:                                               ; preds = %48, %20
  br label %62

62:                                               ; preds = %61, %19
  %63 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %64 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %66 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = call i32 @CH_WARN(%struct.adapter* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %62
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @read_eq_indices(%struct.adapter*, i64, i64*, i64*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @V_QID(i64) #1

declare dso_local i32 @V_PIDX(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
