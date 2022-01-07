; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_adapter.h_phy2portid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_adapter.h_phy2portid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.port_info = type { %struct.cphy }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @phy2portid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy2portid(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.port_info*, align 8
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %5 = load %struct.cphy*, %struct.cphy** %2, align 8
  %6 = getelementptr inbounds %struct.cphy, %struct.cphy* %5, i32 0, i32 0
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.port_info* @adap2pinfo(%struct.adapter* %8, i32 0)
  store %struct.port_info* %9, %struct.port_info** %4, align 8
  %10 = load %struct.port_info*, %struct.port_info** %4, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 0
  %12 = load %struct.cphy*, %struct.cphy** %2, align 8
  %13 = icmp eq %struct.cphy* %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  ret i32 %15
}

declare dso_local %struct.port_info* @adap2pinfo(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
