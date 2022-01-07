; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_poll_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_vpath_poll_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { i32 (%struct.__vxge_hw_fifo*, i8*, i32, i32, %struct.sk_buff***, i32, i32*)*, %struct.__vxge_hw_channel }
%struct.__vxge_hw_channel = type { i32 }
%struct.sk_buff = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_COMPLETIONS_REMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_poll_tx(%struct.__vxge_hw_fifo* %0, %struct.sk_buff*** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.__vxge_hw_fifo*, align 8
  %6 = alloca %struct.sk_buff***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.__vxge_hw_channel*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %5, align 8
  store %struct.sk_buff*** %1, %struct.sk_buff**** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %15 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %14, i32 0, i32 1
  store %struct.__vxge_hw_channel* %15, %struct.__vxge_hw_channel** %12, align 8
  %16 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %17 = call i32 @vxge_hw_fifo_txdl_next_completed(%struct.__vxge_hw_fifo* %16, i8** %10, i32* %9)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @VXGE_HW_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %22, i32 0, i32 0
  %24 = load i32 (%struct.__vxge_hw_fifo*, i8*, i32, i32, %struct.sk_buff***, i32, i32*)*, i32 (%struct.__vxge_hw_fifo*, i8*, i32, i32, %struct.sk_buff***, i32, i32*)** %23, align 8
  %25 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %12, align 8
  %29 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff***, %struct.sk_buff**** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 %24(%struct.__vxge_hw_fifo* %25, i8* %26, i32 %27, i32 %30, %struct.sk_buff*** %31, i32 %32, i32* %33)
  %35 = load i32, i32* @VXGE_HW_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @VXGE_HW_COMPLETIONS_REMAIN, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %21
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local i32 @vxge_hw_fifo_txdl_next_completed(%struct.__vxge_hw_fifo*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
