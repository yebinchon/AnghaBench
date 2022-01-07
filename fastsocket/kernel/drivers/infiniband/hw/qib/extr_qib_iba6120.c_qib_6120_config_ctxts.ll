; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_config_ctxts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_config_ctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32 }

@kr_portcnt = common dso_local global i32 0, align 4
@qib_n_krcv_queues = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_6120_config_ctxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_6120_config_ctxts(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %3 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %4 = load i32, i32* @kr_portcnt, align 4
  %5 = call i32 @qib_read_kreg32(%struct.qib_devdata* %3, i32 %4)
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @qib_n_krcv_queues, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load i32, i32* @qib_n_krcv_queues, align 4
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %10
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %10
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 6
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
