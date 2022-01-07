; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_free_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_free_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_free_packet(%struct.hpsb_packet* %0) #0 {
  %2 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %2, align 8
  %3 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %4 = icmp ne %struct.hpsb_packet* %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %7 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %6, i32 0, i32 2
  %8 = call i64 @atomic_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %12 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %17 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ true, %10 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %26 = call i32 @kfree(%struct.hpsb_packet* %25)
  br label %27

27:                                               ; preds = %21, %5, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
