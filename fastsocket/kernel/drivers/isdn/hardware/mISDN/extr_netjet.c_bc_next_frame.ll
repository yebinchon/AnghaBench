; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_bc_next_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_netjet.c_bc_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_ch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_ch*)* @bc_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_next_frame(%struct.tiger_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tiger_ch*, align 8
  store %struct.tiger_ch* %0, %struct.tiger_ch** %3, align 8
  %4 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %5 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %11 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %15 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %13, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %23 = call i32 @fill_dma(%struct.tiger_ch* %22)
  br label %57

24:                                               ; preds = %9, %1
  %25 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %26 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load i32, i32* @FLG_TRANSPARENT, align 4
  %32 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %33 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %31, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %39 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %38, i32 0, i32 0
  %40 = call i32 @confirm_Bsend(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %43 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @dev_kfree_skb(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %41, %24
  %48 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %49 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %48, i32 0, i32 0
  %50 = call i64 @get_next_bframe(%struct.TYPE_4__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.tiger_ch*, %struct.tiger_ch** %3, align 8
  %54 = call i32 @fill_dma(%struct.tiger_ch* %53)
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %21
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @fill_dma(%struct.tiger_ch*) #1

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
