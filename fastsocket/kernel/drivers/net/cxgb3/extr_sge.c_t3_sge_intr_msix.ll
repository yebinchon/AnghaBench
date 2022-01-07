; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_intr_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_sge_intr_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.sge_rspq, %struct.adapter* }
%struct.sge_rspq = type { i32, i32, i32, i32, i32 }
%struct.adapter = type { i32 }

@A_SG_GTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3_sge_intr_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_sge_intr_msix(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sge_qset*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sge_qset*
  store %struct.sge_qset* %9, %struct.sge_qset** %5, align 8
  %10 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 1
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %14 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i32 0, i32 0
  store %struct.sge_rspq* %14, %struct.sge_rspq** %7, align 8
  %15 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %16 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = load %struct.sge_qset*, %struct.sge_qset** %5, align 8
  %20 = call i64 @process_responses(%struct.adapter* %18, %struct.sge_qset* %19, i32 -1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %24 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = load i32, i32* @A_SG_GTS, align 4
  %30 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %31 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @V_RSPQ(i32 %32)
  %34 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %35 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @V_NEWTIMER(i32 %36)
  %38 = or i32 %33, %37
  %39 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %40 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @V_NEWINDEX(i32 %41)
  %43 = or i32 %38, %42
  %44 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 %43)
  %45 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %46 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @process_responses(%struct.adapter*, %struct.sge_qset*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @V_NEWINDEX(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
