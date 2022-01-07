; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ring_fl_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_ring_fl_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i32, i32 }

@SGE_PF_KDOORBELL = common dso_local global i32 0, align 4
@DBPRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @ring_fl_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_fl_db(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %5 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %6 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 8
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = call i32 (...) @wmb()
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i32, i32* @SGE_PF_KDOORBELL, align 4
  %13 = call i32 @MYPF_REG(i32 %12)
  %14 = load i32, i32* @DBPRIO, align 4
  %15 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %16 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @QID(i32 %17)
  %19 = or i32 %14, %18
  %20 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %21 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 8
  %24 = call i32 @PIDX(i32 %23)
  %25 = or i32 %19, %24
  %26 = call i32 @t4_write_reg(%struct.adapter* %11, i32 %13, i32 %25)
  %27 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %28 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @QID(i32) #1

declare dso_local i32 @PIDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
