; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_get_tlabel_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_get_tlabel_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@ALL_NODES = common dso_local global i32 0, align 4
@hpsb_tlabel_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_packet*)* @hpsb_get_tlabel_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsb_get_tlabel_atomic(%struct.hpsb_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %3, align 8
  %9 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %10 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @NODEID_TO_NODE(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ALL_NODES, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %21 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  store i32 0, i32* %2, align 4
  br label %73

22:                                               ; preds = %1
  %23 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %24 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %5, align 8
  %33 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %34 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @hpsb_tlabel_lock, i64 %41)
  %43 = load i64*, i64** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @find_next_zero_bit(i64* %43, i32 64, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 63
  br i1 %48, label %49, label %52

49:                                               ; preds = %22
  %50 = load i64*, i64** %5, align 8
  %51 = call i32 @find_first_zero_bit(i64* %50, i32 64)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %22
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 63
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @hpsb_tlabel_lock, i64 %56)
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %73

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load i64*, i64** %5, align 8
  %63 = call i32 @__set_bit(i32 %61, i64* %62)
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = and i32 %65, 63
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @hpsb_tlabel_lock, i64 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %72 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %60, %55, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @NODEID_TO_NODE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i64*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
