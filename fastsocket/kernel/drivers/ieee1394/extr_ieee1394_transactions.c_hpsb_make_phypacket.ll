; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_phypacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_phypacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { %struct.hpsb_host* }
%struct.hpsb_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_make_phypacket(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.hpsb_packet* @hpsb_alloc_packet(i32 0)
  store %struct.hpsb_packet* %7, %struct.hpsb_packet** %6, align 8
  %8 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %9 = icmp ne %struct.hpsb_packet* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %3, align 8
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %13 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %14 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %13, i32 0, i32 0
  store %struct.hpsb_host* %12, %struct.hpsb_host** %14, align 8
  %15 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fill_phy_packet(%struct.hpsb_packet* %15, i32 %16)
  %18 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  store %struct.hpsb_packet* %18, %struct.hpsb_packet** %3, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  ret %struct.hpsb_packet* %20
}

declare dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i32) #1

declare dso_local i32 @fill_phy_packet(%struct.hpsb_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
