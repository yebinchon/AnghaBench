; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_tso_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tso_state = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tso_state*, %struct.sk_buff*)* @tso_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tso_start(%struct.tso_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tso_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.tso_state* %0, %struct.tso_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call i64 @skb_network_header(%struct.sk_buff* %5)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  %11 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %12 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 9
  store i64 %10, i64* %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @skb_transport_header(%struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %20 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %22 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 2
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %23, %29
  %31 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %32 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %34 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ETH_P_IP, align 4
  %37 = call i64 @htons(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %2
  %40 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %41 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %44 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %48 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %47, i32 0, i32 8
  store i64 %46, i64* %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ntohs(i32 %52)
  %54 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %55 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %54, i32 0, i32 6
  store i64 %53, i64* %55, align 8
  br label %68

56:                                               ; preds = %2
  %57 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %58 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %61 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %65 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %67 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %66, i32 0, i32 6
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %56, %39
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %75 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @EFX_BUG_ON_PARANOID(i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @EFX_BUG_ON_PARANOID(i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @EFX_BUG_ON_PARANOID(i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %95 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %99 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %101 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.tso_state*, %struct.tso_state** %3, align 8
  %103 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  ret void
}

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
