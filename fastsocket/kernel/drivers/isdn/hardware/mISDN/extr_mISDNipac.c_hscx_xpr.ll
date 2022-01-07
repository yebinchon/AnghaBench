; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_xpr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_xpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @hscx_xpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_xpr(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %3 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %4 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %10 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %14 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %22 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %21)
  br label %55

23:                                               ; preds = %8, %1
  %24 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %25 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load i32, i32* @FLG_TRANSPARENT, align 4
  %31 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %32 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %30, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %38 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %37, i32 0, i32 0
  %39 = call i32 @confirm_Bsend(%struct.TYPE_4__* %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %42 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @dev_kfree_skb(%struct.TYPE_5__* %44)
  br label %46

46:                                               ; preds = %40, %23
  %47 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %48 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %47, i32 0, i32 0
  %49 = call i64 @get_next_bframe(%struct.TYPE_4__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %53 = call i32 @hscx_fill_fifo(%struct.hscx_hw* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @hscx_fill_fifo(%struct.hscx_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @confirm_Bsend(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_5__*) #1

declare dso_local i64 @get_next_bframe(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
