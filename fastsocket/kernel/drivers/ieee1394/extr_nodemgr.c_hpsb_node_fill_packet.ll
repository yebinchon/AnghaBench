; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_hpsb_node_fill_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_hpsb_node_fill_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_entry = type { i32, i32, i32 }
%struct.hpsb_packet = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_node_fill_packet(%struct.node_entry* %0, %struct.hpsb_packet* %1) #0 {
  %3 = alloca %struct.node_entry*, align 8
  %4 = alloca %struct.hpsb_packet*, align 8
  store %struct.node_entry* %0, %struct.node_entry** %3, align 8
  store %struct.hpsb_packet* %1, %struct.hpsb_packet** %4, align 8
  %5 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %6 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %9 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %11 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %14 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = call i32 (...) @smp_rmb()
  %16 = load %struct.node_entry*, %struct.node_entry** %3, align 8
  %17 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %20 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
