; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_fifo_handle_tcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_fifo_handle_tcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_2__*, %struct.__vxge_hw_channel }
%struct.TYPE_2__ = type { i32* }
%struct.__vxge_hw_channel = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_ERR_INVALID_TCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_fifo_handle_tcode(%struct.__vxge_hw_fifo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.__vxge_hw_fifo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__vxge_hw_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %10, i32 0, i32 1
  store %struct.__vxge_hw_channel* %11, %struct.__vxge_hw_channel** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 7
  %14 = icmp ult i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 7
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @VXGE_HW_ERR_INVALID_TCODE, align 4
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %4, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
