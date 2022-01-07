; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_task = type { i64, %struct.hpsb_packet*, %struct.TYPE_2__*, i32, i32, %struct.eth1394_priv* }
%struct.hpsb_packet = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eth1394_priv = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH1394_GASP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ether1394_complete_cb = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_task*, i32)* @ether1394_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_send_packet(%struct.packet_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eth1394_priv*, align 8
  %7 = alloca %struct.hpsb_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.packet_task* %0, %struct.packet_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %10 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %9, i32 0, i32 5
  %11 = load %struct.eth1394_priv*, %struct.eth1394_priv** %10, align 8
  store %struct.eth1394_priv* %11, %struct.eth1394_priv** %6, align 8
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %7, align 8
  %12 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %13 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hpsb_packet* @ether1394_alloc_common_packet(i32 %14)
  store %struct.hpsb_packet* %15, %struct.hpsb_packet** %7, align 8
  %16 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %17 = icmp ne %struct.hpsb_packet* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %23 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETH1394_GASP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %33 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %34 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %35 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ether1394_prep_gasp_packet(%struct.hpsb_packet* %32, %struct.eth1394_priv* %33, %struct.TYPE_2__* %36, i32 %37)
  br label %64

39:                                               ; preds = %21
  %40 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %41 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %42 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %45 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %48 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %51 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ether1394_prep_write_packet(%struct.hpsb_packet* %40, i32 %43, i32 %46, i32 %49, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %60 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %59)
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %83

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %66 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %67 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %66, i32 0, i32 1
  store %struct.hpsb_packet* %65, %struct.hpsb_packet** %67, align 8
  %68 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %69 = getelementptr inbounds %struct.packet_task, %struct.packet_task* %68, i32 0, i32 1
  %70 = load %struct.hpsb_packet*, %struct.hpsb_packet** %69, align 8
  %71 = load i32, i32* @ether1394_complete_cb, align 4
  %72 = load %struct.packet_task*, %struct.packet_task** %4, align 8
  %73 = call i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet* %70, i32 %71, %struct.packet_task* %72)
  %74 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %75 = call i64 @hpsb_send_packet(%struct.hpsb_packet* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load %struct.hpsb_packet*, %struct.hpsb_packet** %7, align 8
  %79 = call i32 @ether1394_free_packet(%struct.hpsb_packet* %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %58, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.hpsb_packet* @ether1394_alloc_common_packet(i32) #1

declare dso_local i32 @ether1394_prep_gasp_packet(%struct.hpsb_packet*, %struct.eth1394_priv*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @ether1394_prep_write_packet(%struct.hpsb_packet*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet*, i32, %struct.packet_task*) #1

declare dso_local i64 @hpsb_send_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @ether1394_free_packet(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
