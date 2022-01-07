; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.h_ipath_schedule_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.h_ipath_schedule_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i32, i32 }

@IPATH_S_ANY_WAIT = common dso_local global i32 0, align 4
@IPATH_S_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_qp*)* @ipath_schedule_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_schedule_send(%struct.ipath_qp* %0) #0 {
  %2 = alloca %struct.ipath_qp*, align 8
  store %struct.ipath_qp* %0, %struct.ipath_qp** %2, align 8
  %3 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @IPATH_S_ANY_WAIT, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IPATH_S_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %24, i32 0, i32 1
  %26 = call i32 @tasklet_hi_schedule(i32* %25)
  br label %27

27:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
