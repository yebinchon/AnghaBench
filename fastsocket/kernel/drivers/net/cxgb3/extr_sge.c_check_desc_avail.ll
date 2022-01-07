; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_desc_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_check_desc_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sge_qset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*, i32, i32)* @check_desc_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desc_avail(%struct.adapter* %0, %struct.sge_txq* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sge_qset*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 3
  %15 = call i32 @skb_queue_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %59, %21
  %23 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %24 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %23, i32 0, i32 3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = call i32 @__skb_queue_tail(i32* %24, %struct.sk_buff* %25)
  store i32 1, i32* %6, align 4
  br label %65

27:                                               ; preds = %5
  %28 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %32 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %27
  %41 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.sge_qset* @txq_to_qset(%struct.sge_txq* %41, i32 %42)
  store %struct.sge_qset* %43, %struct.sge_qset** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %46 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = call i32 (...) @smp_mb__after_clear_bit()
  %49 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %50 = call i64 @should_restart_tx(%struct.sge_txq* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %55 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %54, i32 0, i32 0
  %56 = call i64 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 2, i32* %6, align 4
  br label %65

59:                                               ; preds = %52, %40
  %60 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %61 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %22

64:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %58, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sge_qset* @txq_to_qset(%struct.sge_txq*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
