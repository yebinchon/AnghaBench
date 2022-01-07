; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_write_phypacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_write_phypacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32, i32 }
%struct.pending_request = type { %struct.TYPE_2__, i32, %struct.hpsb_packet* }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }
%struct.hpsb_packet = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"write_phypacket called - quadlet 0x%8.8x \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@queue_complete_cb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"write_phypacket send_packet called => retval: %d \00", align 1
@RAW1394_ERROR_SEND_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_info*, %struct.pending_request*)* @write_phypacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_phypacket(%struct.file_info* %0, %struct.pending_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.pending_request*, align 8
  %6 = alloca %struct.hpsb_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store %struct.pending_request* %1, %struct.pending_request** %5, align 8
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %11 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @DBGMSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.file_info*, %struct.file_info** %4, align 8
  %19 = getelementptr inbounds %struct.file_info, %struct.file_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.hpsb_packet* @hpsb_make_phypacket(i32 %20, i32 %21)
  store %struct.hpsb_packet* %22, %struct.hpsb_packet** %6, align 8
  %23 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %24 = icmp ne %struct.hpsb_packet* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %30 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %33 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %34 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %33, i32 0, i32 2
  store %struct.hpsb_packet* %32, %struct.hpsb_packet** %34, align 8
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %36 = load i64, i64* @queue_complete_cb, align 8
  %37 = inttoptr i64 %36 to void (i8*)*
  %38 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %39 = call i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet* %35, void (i8*)* %37, %struct.pending_request* %38)
  %40 = load %struct.file_info*, %struct.file_info** %4, align 8
  %41 = getelementptr inbounds %struct.file_info, %struct.file_info* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %45 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %44, i32 0, i32 1
  %46 = load %struct.file_info*, %struct.file_info** %4, align 8
  %47 = getelementptr inbounds %struct.file_info, %struct.file_info* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.file_info*, %struct.file_info** %4, align 8
  %50 = getelementptr inbounds %struct.file_info, %struct.file_info* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %54 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %58 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  %60 = call i32 @hpsb_send_packet(%struct.hpsb_packet* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @DBGMSG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %28
  %66 = load i32, i32* @RAW1394_ERROR_SEND_ERROR, align 4
  %67 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %68 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %71 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.pending_request*, %struct.pending_request** %5, align 8
  %74 = call i32 @queue_complete_req(%struct.pending_request* %73)
  br label %75

75:                                               ; preds = %65, %28
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @DBGMSG(i8*, i32) #1

declare dso_local %struct.hpsb_packet* @hpsb_make_phypacket(i32, i32) #1

declare dso_local i32 @hpsb_set_packet_complete_task(%struct.hpsb_packet*, void (i8*)*, %struct.pending_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hpsb_send_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @queue_complete_req(%struct.pending_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
