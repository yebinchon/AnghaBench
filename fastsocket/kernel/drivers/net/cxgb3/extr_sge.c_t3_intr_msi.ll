; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_intr_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sge_rspq }
%struct.sge_rspq = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@A_SG_GTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_intr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.sge_rspq* %16, %struct.sge_rspq** %7, align 8
  %17 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %18 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = call i64 @process_responses(%struct.adapter* %20, %struct.TYPE_6__* %25, i32 -1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %2
  %29 = load %struct.adapter*, %struct.adapter** %6, align 8
  %30 = load i32, i32* @A_SG_GTS, align 4
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @V_RSPQ(i32 %33)
  %35 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %36 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @V_NEWTIMER(i32 %37)
  %39 = or i32 %34, %38
  %40 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %41 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @V_NEWINDEX(i32 %42)
  %44 = or i32 %39, %43
  %45 = call i32 @t3_write_reg(%struct.adapter* %29, i32 %30, i32 %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %28, %2
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load %struct.adapter*, %struct.adapter** %6, align 8
  %54 = load %struct.adapter*, %struct.adapter** %6, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 1
  %59 = call i64 @process_responses(%struct.adapter* %53, %struct.TYPE_6__* %58, i32 -1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load %struct.adapter*, %struct.adapter** %6, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store %struct.sge_rspq* %67, %struct.sge_rspq** %8, align 8
  %68 = load %struct.adapter*, %struct.adapter** %6, align 8
  %69 = load i32, i32* @A_SG_GTS, align 4
  %70 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %71 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @V_RSPQ(i32 %72)
  %74 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %75 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @V_NEWTIMER(i32 %76)
  %78 = or i32 %73, %77
  %79 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %80 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @V_NEWINDEX(i32 %81)
  %83 = or i32 %78, %82
  %84 = call i32 @t3_write_reg(%struct.adapter* %68, i32 %69, i32 %83)
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %61, %52, %46
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load %struct.adapter*, %struct.adapter** %6, align 8
  %90 = call i64 @t3_slow_intr_handler(%struct.adapter* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %94 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %88, %85
  %98 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %99 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @process_responses(%struct.adapter*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @V_NEWINDEX(i32) #1

declare dso_local i64 @t3_slow_intr_handler(%struct.adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
