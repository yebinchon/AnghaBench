; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_ia_que_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_ia_que_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32, i32 }
%struct.ia_vcc = type { i32 }
%struct.TYPE_6__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [21 x i8] c"ia_que_tx: Null vcc\0A\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Free the SKB on closed vci %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ia_que_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia_que_tx(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.ia_vcc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @ia_avail_descs(%struct.TYPE_5__* %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %54, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %57

19:                                               ; preds = %17
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.atm_vcc*, %struct.atm_vcc** %22, align 8
  store %struct.atm_vcc* %23, %struct.atm_vcc** %5, align 8
  %24 = icmp ne %struct.atm_vcc* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %26)
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %57

29:                                               ; preds = %19
  %30 = load i32, i32* @ATM_VF_READY, align 4
  %31 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %32 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %31, i32 0, i32 1
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %36)
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %57

42:                                               ; preds = %29
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %44 = call %struct.ia_vcc* @INPH_IA_VCC(%struct.atm_vcc* %43)
  store %struct.ia_vcc* %44, %struct.ia_vcc** %6, align 8
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i64 @ia_pkt_tx(%struct.atm_vcc* %45, %struct.sk_buff* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i32 @skb_queue_head(i32* %51, %struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  br label %9

57:                                               ; preds = %35, %25, %17
  ret i32 0
}

declare dso_local i32 @ia_avail_descs(%struct.TYPE_5__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_6__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.ia_vcc* @INPH_IA_VCC(%struct.atm_vcc*) #1

declare dso_local i64 @ia_pkt_tx(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
