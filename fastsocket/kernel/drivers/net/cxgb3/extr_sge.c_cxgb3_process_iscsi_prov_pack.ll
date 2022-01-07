; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_cxgb3_process_iscsi_prov_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_cxgb3_process_iscsi_prov_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.port_info.0*, %struct.sk_buff*)* }
%struct.port_info.0 = type opaque
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*, %struct.sk_buff*)* @cxgb3_process_iscsi_prov_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb3_process_iscsi_prov_pack(%struct.port_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.port_info* %0, %struct.port_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call i64 @is_arp(%struct.sk_buff* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.port_info*, %struct.port_info** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @cxgb3_arp_process(%struct.port_info* %9, %struct.sk_buff* %10)
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.port_info*, %struct.port_info** %3, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.port_info.0*, %struct.sk_buff*)*, i32 (%struct.port_info.0*, %struct.sk_buff*)** %15, align 8
  %17 = icmp ne i32 (%struct.port_info.0*, %struct.sk_buff*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.port_info*, %struct.port_info** %3, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.port_info.0*, %struct.sk_buff*)*, i32 (%struct.port_info.0*, %struct.sk_buff*)** %21, align 8
  %23 = load %struct.port_info*, %struct.port_info** %3, align 8
  %24 = bitcast %struct.port_info* %23 to %struct.port_info.0*
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 %22(%struct.port_info.0* %24, %struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %8, %18, %12
  ret void
}

declare dso_local i64 @is_arp(%struct.sk_buff*) #1

declare dso_local i32 @cxgb3_arp_process(%struct.port_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
