; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_timer_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_timer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32 (%struct.ipr_cmnd*)*, i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__*, %struct.ipr_cmnd* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_reset_timer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_reset_timer_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i64, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 2
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 1
  %17 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %16, align 8
  %18 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %19 = icmp eq %struct.ipr_cmnd* %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %25 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %24, i32 0, i32 0
  %26 = load i32 (%struct.ipr_cmnd*)*, i32 (%struct.ipr_cmnd*)** %25, align 8
  %27 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %28 = call i32 %26(%struct.ipr_cmnd* %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
