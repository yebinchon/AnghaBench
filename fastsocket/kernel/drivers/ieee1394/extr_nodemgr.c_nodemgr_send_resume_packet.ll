; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_send_resume_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_send_resume_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32 }
%struct.hpsb_packet = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EXTPHYPACKET_TYPE_RESUME = common dso_local global i32 0, align 4
@PHYPACKET_PORT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fw-host%d: Failed to broadcast resume packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*)* @nodemgr_send_resume_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_send_resume_packet(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %8 = load i32, i32* @EXTPHYPACKET_TYPE_RESUME, align 4
  %9 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %10 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @NODEID_TO_NODE(i32 %11)
  %13 = load i32, i32* @PHYPACKET_PORT_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %8, %14
  %16 = call %struct.hpsb_packet* @hpsb_make_phypacket(%struct.hpsb_host* %7, i32 %15)
  store %struct.hpsb_packet* %16, %struct.hpsb_packet** %3, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %18 = icmp ne %struct.hpsb_packet* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %21 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %23 = call i32 @get_hpsb_generation(%struct.hpsb_host* %22)
  %24 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %25 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %27 = call i32 @hpsb_send_packet(%struct.hpsb_packet* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %33 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @HPSB_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.hpsb_packet* @hpsb_make_phypacket(%struct.hpsb_host*, i32) #1

declare dso_local i32 @NODEID_TO_NODE(i32) #1

declare dso_local i32 @get_hpsb_generation(%struct.hpsb_host*) #1

declare dso_local i32 @hpsb_send_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @HPSB_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
