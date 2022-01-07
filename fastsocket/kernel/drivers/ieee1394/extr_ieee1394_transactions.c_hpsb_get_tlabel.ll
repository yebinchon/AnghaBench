; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_get_tlabel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_get_tlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32 }

@tlabel_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_get_tlabel(%struct.hpsb_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %3, align 8
  %4 = call i64 (...) @irqs_disabled()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @in_atomic()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %11 = call i32 @hpsb_get_tlabel_atomic(%struct.hpsb_packet* %10)
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %6
  %13 = load i32, i32* @tlabel_wq, align 4
  %14 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %15 = call i32 @hpsb_get_tlabel_atomic(%struct.hpsb_packet* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_event_interruptible(i32 %13, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @hpsb_get_tlabel_atomic(%struct.hpsb_packet*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
