; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_head_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_head_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_event = type { i32 }
%struct.tgt_ring = type { i64* }

@TGT_EVENT_PER_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tgt_event* (%struct.tgt_ring*, i64)* @tgt_head_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tgt_event* @tgt_head_event(%struct.tgt_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.tgt_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tgt_ring* %0, %struct.tgt_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @TGT_EVENT_PER_PAGE, align 8
  %9 = udiv i64 %7, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TGT_EVENT_PER_PAGE, align 8
  %12 = urem i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.tgt_ring*, %struct.tgt_ring** %3, align 8
  %14 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 4, %19
  %21 = add i64 %18, %20
  %22 = inttoptr i64 %21 to %struct.tgt_event*
  ret %struct.tgt_event* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
