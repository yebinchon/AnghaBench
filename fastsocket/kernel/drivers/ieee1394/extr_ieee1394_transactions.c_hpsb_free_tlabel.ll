; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_free_tlabel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_free_tlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@ALL_NODES = common dso_local global i32 0, align 4
@hpsb_tlabel_lock = common dso_local global i32 0, align 4
@tlabel_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_free_tlabel(%struct.hpsb_packet* %0) #0 {
  %2 = alloca %struct.hpsb_packet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %2, align 8
  %7 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %8 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @NODEID_TO_NODE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ALL_NODES, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %20 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %4, align 8
  %29 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  %30 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 63
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br label %37

37:                                               ; preds = %34, %18
  %38 = phi i1 [ true, %18 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @hpsb_tlabel_lock, i64 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i64*, i64** %4, align 8
  %45 = call i32 @__test_and_clear_bit(i32 %43, i64* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* @hpsb_tlabel_lock, i64 %50)
  %52 = call i32 @wake_up_interruptible(i32* @tlabel_wq)
  br label %53

53:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32 @NODEID_TO_NODE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
