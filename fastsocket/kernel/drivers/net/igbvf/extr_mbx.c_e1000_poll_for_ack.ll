; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_poll_for_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_mbx.c_e1000_poll_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@E1000_ERR_MBX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_poll_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_poll_for_ack(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  store %struct.e1000_mbx_info* %6, %struct.e1000_mbx_info** %3, align 8
  %7 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %12, align 8
  %14 = icmp ne i64 (%struct.e1000_hw.0*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %45

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = call i64 %24(%struct.e1000_hw.0* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i1 [ false, %17 ], [ %28, %20 ]
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @udelay(i32 %36)
  br label %17

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @E1000_SUCCESS, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @E1000_ERR_MBX, align 4
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  ret i32 %54
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
