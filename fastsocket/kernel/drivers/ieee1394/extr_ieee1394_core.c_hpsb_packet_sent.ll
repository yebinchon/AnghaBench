; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_packet_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_packet_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i64, i32 }
%struct.hpsb_packet = type { i32, i64, i64, i32, i32, i32, i64 }

@pending_packets_lock = common dso_local global i32 0, align 4
@hpsb_complete = common dso_local global i64 0, align 8
@ACK_PENDING = common dso_local global i32 0, align 4
@hpsb_pending = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_packet_sent(%struct.hpsb_host* %0, %struct.hpsb_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store %struct.hpsb_packet* %1, %struct.hpsb_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @pending_packets_lock, i64 %8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %12 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %14 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %19 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @hpsb_complete, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %3
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @pending_packets_lock, i64 %24)
  %26 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %27 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %26)
  br label %68

28:                                               ; preds = %17
  %29 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %30 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %29, i32 0, i32 5
  %31 = call i32 @atomic_dec(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ACK_PENDING, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %37 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35, %28
  %41 = load i64, i64* @hpsb_complete, align 8
  %42 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %43 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %45 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %44, i32 0, i32 3
  %46 = call i32 @list_del_init(i32* %45)
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* @pending_packets_lock, i64 %47)
  %49 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %50 = call i32 @queue_packet_complete(%struct.hpsb_packet* %49)
  br label %68

51:                                               ; preds = %35
  %52 = load i64, i64* @hpsb_pending, align 8
  %53 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %54 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %57 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @pending_packets_lock, i64 %58)
  %60 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %61 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %60, i32 0, i32 1
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %64 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i32 @mod_timer(i32* %61, i64 %66)
  br label %68

68:                                               ; preds = %51, %40, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @queue_packet_complete(%struct.hpsb_packet*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
