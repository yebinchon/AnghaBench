; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_pv_qp_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mad.c_pv_qp_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.mlx4_ib_demux_pv_ctx = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Fatal error (%d) on a MAD QP on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @pv_qp_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_qp_event_handler(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mlx4_ib_demux_pv_ctx*
  store %struct.mlx4_ib_demux_pv_ctx* %7, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
