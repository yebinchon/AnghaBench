; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_ring_idx_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_if.c_tgt_ring_idx_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgt_ring = type { i32 }

@TGT_MAX_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tgt_ring*)* @tgt_ring_idx_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgt_ring_idx_inc(%struct.tgt_ring* %0) #0 {
  %2 = alloca %struct.tgt_ring*, align 8
  store %struct.tgt_ring* %0, %struct.tgt_ring** %2, align 8
  %3 = load %struct.tgt_ring*, %struct.tgt_ring** %2, align 8
  %4 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TGT_MAX_EVENTS, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.tgt_ring*, %struct.tgt_ring** %2, align 8
  %11 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.tgt_ring*, %struct.tgt_ring** %2, align 8
  %14 = getelementptr inbounds %struct.tgt_ring, %struct.tgt_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
