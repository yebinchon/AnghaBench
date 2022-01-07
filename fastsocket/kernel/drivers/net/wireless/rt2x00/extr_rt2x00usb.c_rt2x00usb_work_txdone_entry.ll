; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_work_txdone_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_work_txdone_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32 }

@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt2x00usb_work_txdone_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00usb_work_txdone_entry(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %3 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %4 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %5 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %10 = load i32, i32* @TXDONE_FAILURE, align 4
  %11 = call i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry* %9, i32 %10)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %14 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %15 = call i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_txdone_noinfo(%struct.queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
