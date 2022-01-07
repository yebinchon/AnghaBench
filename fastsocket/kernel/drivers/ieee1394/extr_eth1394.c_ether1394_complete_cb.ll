; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_complete_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_task = type { i64, i32, i32, i32, %struct.hpsb_packet* }
%struct.hpsb_packet = type { i64 }

@TCODE_STREAM_DATA = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of tlabels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ether1394_complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_complete_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.packet_task*, align 8
  %4 = alloca %struct.hpsb_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.packet_task*
  store %struct.packet_task* %9, %struct.packet_task** %3, align 8
  %10 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %11 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %10, i32 0, i32 4
  %12 = load %struct.hpsb_packet*, %struct.hpsb_packet** %11, align 8
  store %struct.hpsb_packet* %12, %struct.hpsb_packet** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %14 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCODE_STREAM_DATA, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %20 = call i32 @hpsb_packet_success(%struct.hpsb_packet* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %23 = call i32 @ether1394_free_packet(%struct.hpsb_packet* %22)
  %24 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %25 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %29 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %32
  %36 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %37 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %40 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %43 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %42, i32 0, i32 1
  %44 = call i32 @ether1394_encapsulate(i32 %38, i32 %41, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ether1394_send_packet(%struct.packet_task* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = call i32 @ETH1394_PRINT_G(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %60 = call i32 @ether1394_dg_complete(%struct.packet_task* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %35
  br label %66

62:                                               ; preds = %32, %21
  %63 = load %struct.packet_task*, %struct.packet_task** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ether1394_dg_complete(%struct.packet_task* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @hpsb_packet_success(%struct.hpsb_packet*) #1

declare dso_local i32 @ether1394_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @ether1394_encapsulate(i32, i32, i32*) #1

declare dso_local i32 @ether1394_send_packet(%struct.packet_task*, i32) #1

declare dso_local i32 @ETH1394_PRINT_G(i32, i8*) #1

declare dso_local i32 @ether1394_dg_complete(%struct.packet_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
