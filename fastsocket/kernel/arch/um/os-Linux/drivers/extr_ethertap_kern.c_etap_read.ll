; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/drivers/extr_ethertap_kern.c_etap_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/drivers/extr_ethertap_kern.c_etap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.uml_net_private = type { i32 }

@ETH_HEADER_ETHERTAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)* @etap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etap_read(i32 %0, %struct.sk_buff* %1, %struct.uml_net_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.uml_net_private*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.uml_net_private* %2, %struct.uml_net_private** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i32 @skb_mac_header(%struct.sk_buff* %10)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 2
  %18 = load i64, i64* @ETH_HEADER_ETHERTAP, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @net_recvfrom(i32 %9, i32 %11, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i32 2)
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @net_recvfrom(i32, i32, i64) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
