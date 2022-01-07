; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_intr_msi_napi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_intr_msi_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sge_rspq }
%struct.sge_rspq = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3_intr_msi_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_intr_msi_napi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.adapter*
  store %struct.adapter* %9, %struct.adapter** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %6, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.sge_rspq* %15, %struct.sge_rspq** %7, align 8
  %16 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %17 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = call i32 @rspq_check_napi(%struct.TYPE_6__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 1
  %36 = call i32 @rspq_check_napi(%struct.TYPE_6__* %35)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load %struct.adapter*, %struct.adapter** %6, align 8
  %44 = call i64 @t3_slow_intr_handler(%struct.adapter* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %48 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %42, %39
  %52 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %53 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rspq_check_napi(%struct.TYPE_6__*) #1

declare dso_local i64 @t3_slow_intr_handler(%struct.adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
