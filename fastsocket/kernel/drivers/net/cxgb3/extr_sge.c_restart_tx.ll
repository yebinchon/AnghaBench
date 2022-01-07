; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_restart_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_restart_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@TXQ_OFLD = common dso_local global i64 0, align 8
@TXQ_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_qset*)* @restart_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_tx(%struct.sge_qset* %0) #0 {
  %2 = alloca %struct.sge_qset*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %2, align 8
  %3 = load i64, i64* @TXQ_ETH, align 8
  %4 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %5 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i64 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %10 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* @TXQ_ETH, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = call i64 @should_restart_tx(%struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %8
  %17 = load i64, i64* @TXQ_ETH, align 8
  %18 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %19 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %18, i32 0, i32 1
  %20 = call i64 @test_and_clear_bit(i64 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %24 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @TXQ_ETH, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %32 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @netif_running(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %38 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_tx_wake_queue(i32 %39)
  br label %41

41:                                               ; preds = %36, %22
  br label %42

42:                                               ; preds = %41, %16, %8, %1
  %43 = load i64, i64* @TXQ_OFLD, align 8
  %44 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %45 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %44, i32 0, i32 1
  %46 = call i64 @test_bit(i64 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %50 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @TXQ_OFLD, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = call i64 @should_restart_tx(%struct.TYPE_2__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load i64, i64* @TXQ_OFLD, align 8
  %58 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %59 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %58, i32 0, i32 1
  %60 = call i64 @test_and_clear_bit(i64 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %64 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @TXQ_OFLD, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %72 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @TXQ_OFLD, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %62, %56, %48, %42
  %79 = load i64, i64* @TXQ_CTRL, align 8
  %80 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %81 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %80, i32 0, i32 1
  %82 = call i64 @test_bit(i64 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %86 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* @TXQ_CTRL, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = call i64 @should_restart_tx(%struct.TYPE_2__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %84
  %93 = load i64, i64* @TXQ_CTRL, align 8
  %94 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %95 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %94, i32 0, i32 1
  %96 = call i64 @test_and_clear_bit(i64 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %100 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i64, i64* @TXQ_CTRL, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %108 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* @TXQ_CTRL, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = call i32 @tasklet_schedule(i32* %112)
  br label %114

114:                                              ; preds = %98, %92, %84, %78
  ret void
}

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @should_restart_tx(%struct.TYPE_2__*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
