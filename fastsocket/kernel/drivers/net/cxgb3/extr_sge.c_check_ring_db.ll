; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_ring_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_ring_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_qset = type { %struct.sge_txq* }
%struct.sge_txq = type { i64, i64, i64, i32, i32 }

@F_RSPD_TXQ0_GTS = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@TXQ_LAST_PKT_DB = common dso_local global i32 0, align 4
@TXQ_RUNNING = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@F_RSPD_TXQ1_GTS = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_qset*, i32)* @check_ring_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ring_db(%struct.adapter* %0, %struct.sge_qset* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sge_txq*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @F_RSPD_TXQ0_GTS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %15 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %14, i32 0, i32 0
  %16 = load %struct.sge_txq*, %struct.sge_txq** %15, align 8
  %17 = load i64, i64* @TXQ_ETH, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %16, i64 %17
  store %struct.sge_txq* %18, %struct.sge_txq** %7, align 8
  %19 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %20 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %23 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %27 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %13
  %31 = load i32, i32* @TXQ_LAST_PKT_DB, align 4
  %32 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %33 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %32, i32 0, i32 4
  %34 = call i32 @test_and_set_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @TXQ_RUNNING, align 4
  %38 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %39 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %38, i32 0, i32 4
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load i32, i32* @A_SG_KDOORBELL, align 4
  %43 = load i32, i32* @F_SELEGRCNTX, align 4
  %44 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %45 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @V_EGRCNTX(i32 %46)
  %48 = or i32 %43, %47
  %49 = call i32 @t3_write_reg(%struct.adapter* %41, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %36, %30, %13
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @F_RSPD_TXQ1_GTS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %58 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %57, i32 0, i32 0
  %59 = load %struct.sge_txq*, %struct.sge_txq** %58, align 8
  %60 = load i64, i64* @TXQ_OFLD, align 8
  %61 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %59, i64 %60
  store %struct.sge_txq* %61, %struct.sge_txq** %8, align 8
  %62 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %63 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %66 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %70 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %56
  %74 = load i32, i32* @TXQ_LAST_PKT_DB, align 4
  %75 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %76 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %75, i32 0, i32 4
  %77 = call i32 @test_and_set_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @TXQ_RUNNING, align 4
  %81 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %82 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %81, i32 0, i32 4
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.adapter*, %struct.adapter** %4, align 8
  %85 = load i32, i32* @A_SG_KDOORBELL, align 4
  %86 = load i32, i32* @F_SELEGRCNTX, align 4
  %87 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %88 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @V_EGRCNTX(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @t3_write_reg(%struct.adapter* %84, i32 %85, i32 %91)
  br label %93

93:                                               ; preds = %79, %73, %56
  br label %94

94:                                               ; preds = %93, %51
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
