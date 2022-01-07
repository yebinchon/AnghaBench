; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_ctrl_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_ctrl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.wmi = type { i32, i32, i32, i32, i32 }
%struct.wmi_cmd_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @ath9k_wmi_ctrl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_wmi_ctrl_rx(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca %struct.wmi_cmd_hdr*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wmi*
  store %struct.wmi* %11, %struct.wmi** %7, align 8
  %12 = load %struct.wmi*, %struct.wmi** %7, align 8
  %13 = getelementptr inbounds %struct.wmi, %struct.wmi* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %22, %struct.wmi_cmd_hdr** %8, align 8
  %23 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 4096
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load %struct.wmi*, %struct.wmi** %7, align 8
  %32 = getelementptr inbounds %struct.wmi, %struct.wmi* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.wmi*, %struct.wmi** %7, align 8
  %35 = getelementptr inbounds %struct.wmi, %struct.wmi* %34, i32 0, i32 3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @__skb_queue_tail(i32* %35, %struct.sk_buff* %36)
  %38 = load %struct.wmi*, %struct.wmi** %7, align 8
  %39 = getelementptr inbounds %struct.wmi, %struct.wmi* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.wmi*, %struct.wmi** %7, align 8
  %42 = getelementptr inbounds %struct.wmi, %struct.wmi* %41, i32 0, i32 2
  %43 = call i32 @tasklet_schedule(i32* %42)
  br label %67

44:                                               ; preds = %18
  %45 = load %struct.wmi*, %struct.wmi** %7, align 8
  %46 = getelementptr inbounds %struct.wmi, %struct.wmi* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.wmi*, %struct.wmi** %7, align 8
  %50 = getelementptr inbounds %struct.wmi, %struct.wmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.wmi*, %struct.wmi** %7, align 8
  %55 = getelementptr inbounds %struct.wmi, %struct.wmi* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  br label %64

57:                                               ; preds = %44
  %58 = load %struct.wmi*, %struct.wmi** %7, align 8
  %59 = getelementptr inbounds %struct.wmi, %struct.wmi* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.wmi*, %struct.wmi** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @ath9k_wmi_rsp_callback(%struct.wmi* %61, %struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %57, %53, %17
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  br label %67

67:                                               ; preds = %64, %30
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ath9k_wmi_rsp_callback(%struct.wmi*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
