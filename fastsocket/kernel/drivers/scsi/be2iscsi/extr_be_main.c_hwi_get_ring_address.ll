; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_get_ring_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_get_ring_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phys_addr = type { i32 }
%struct.hwi_async_pdu_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.phys_addr* }
%struct.TYPE_3__ = type { %struct.phys_addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phys_addr* (%struct.hwi_async_pdu_context*, i32, i32)* @hwi_get_ring_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phys_addr* @hwi_get_ring_address(%struct.hwi_async_pdu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hwi_async_pdu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.phys_addr*, align 8
  store %struct.hwi_async_pdu_context* %0, %struct.hwi_async_pdu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.phys_addr* null, %struct.phys_addr** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %4, align 8
  %12 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.phys_addr*, %struct.phys_addr** %13, align 8
  store %struct.phys_addr* %14, %struct.phys_addr** %7, align 8
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %4, align 8
  %17 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.phys_addr*, %struct.phys_addr** %18, align 8
  store %struct.phys_addr* %19, %struct.phys_addr** %7, align 8
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.phys_addr*, %struct.phys_addr** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %21, i64 %23
  ret %struct.phys_addr* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
