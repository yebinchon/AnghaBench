; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_get_async_busy_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_get_async_busy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.hwi_async_pdu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head, %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.hwi_async_pdu_context*, i32, i32)* @hwi_get_async_busy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @hwi_get_async_busy_list(%struct.hwi_async_pdu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.hwi_async_pdu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hwi_async_pdu_context* %0, %struct.hwi_async_pdu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %5, align 8
  %12 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.list_head* %17, %struct.list_head** %4, align 8
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %5, align 8
  %20 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.list_head* %25, %struct.list_head** %4, align 8
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  ret %struct.list_head* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
