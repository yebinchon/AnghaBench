; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c___vxge_hw_non_offload_db_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c___vxge_hw_non_offload_db_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_2__*, %struct.__vxge_hw_channel }
%struct.TYPE_2__ = type { i32, i32 }
%struct.__vxge_hw_channel = type { i32 }

@VXGE_HW_NODBW_TYPE_NODBW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__vxge_hw_fifo*, i32, i32, i32)* @__vxge_hw_non_offload_db_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vxge_hw_non_offload_db_post(%struct.__vxge_hw_fifo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.__vxge_hw_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__vxge_hw_channel*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %10, i32 0, i32 1
  store %struct.__vxge_hw_channel* %11, %struct.__vxge_hw_channel** %9, align 8
  %12 = load i32, i32* @VXGE_HW_NODBW_TYPE_NODBW, align 4
  %13 = call i32 @VXGE_HW_NODBW_TYPE(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @VXGE_HW_NODBW_LAST_TXD_NUMBER(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @VXGE_HW_NODBW_GET_NO_SNOOP(i32 %17)
  %19 = or i32 %16, %18
  %20 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @writeq(i32 %19, i32* %23)
  %25 = call i32 (...) @mmiowb()
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %28 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @writeq(i32 %26, i32* %30)
  %32 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @VXGE_HW_NODBW_TYPE(i32) #1

declare dso_local i32 @VXGE_HW_NODBW_LAST_TXD_NUMBER(i32) #1

declare dso_local i32 @VXGE_HW_NODBW_GET_NO_SNOOP(i32) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
