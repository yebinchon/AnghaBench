; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_node_write_no_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_node_write_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_entry = type { i32, i32 }
%struct.hpsb_packet = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.node_entry*, i32, i32*, i64)* @sbp2util_node_write_no_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2util_node_write_no_wait(%struct.node_entry* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hpsb_packet*, align 8
  store %struct.node_entry* %0, %struct.node_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.node_entry*, %struct.node_entry** %6, align 8
  %12 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.node_entry*, %struct.node_entry** %6, align 8
  %15 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.hpsb_packet* @hpsb_make_writepacket(i32 %13, i32 %16, i32 %17, i32* %18, i64 %19)
  store %struct.hpsb_packet* %20, %struct.hpsb_packet** %10, align 8
  %21 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %22 = icmp ne %struct.hpsb_packet* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %29 = call i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet* %27, i32 (%struct.hpsb_packet*)* @sbp2_free_packet, %struct.hpsb_packet* %28)
  %30 = load %struct.node_entry*, %struct.node_entry** %6, align 8
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %32 = call i32 @hpsb_node_fill_packet(%struct.node_entry* %30, %struct.hpsb_packet* %31)
  %33 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %34 = call i64 @hpsb_send_packet(%struct.hpsb_packet* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %38 = call i32 @sbp2_free_packet(%struct.hpsb_packet* %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %36, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.hpsb_packet* @hpsb_make_writepacket(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet*, i32 (%struct.hpsb_packet*)*, %struct.hpsb_packet*) #1

declare dso_local i32 @sbp2_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_node_fill_packet(%struct.node_entry*, %struct.hpsb_packet*) #1

declare dso_local i64 @hpsb_send_packet(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
