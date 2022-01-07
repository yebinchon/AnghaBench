; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_enable_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_rspq** }
%struct.sge_rspq = type { i32, i32, i32, i64 }

@SGE_PF_GTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @enable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_rx(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_rspq*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sge_rspq**, %struct.sge_rspq*** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.sge_rspq** %10)
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %5
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sge_rspq**, %struct.sge_rspq*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sge_rspq*, %struct.sge_rspq** %17, i64 %19
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %20, align 8
  store %struct.sge_rspq* %21, %struct.sge_rspq** %4, align 8
  %22 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %23 = icmp ne %struct.sge_rspq* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %48

25:                                               ; preds = %13
  %26 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %27 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 2
  %33 = call i32 @napi_enable(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load i32, i32* @SGE_PF_GTS, align 4
  %37 = call i32 @MYPF_REG(i32 %36)
  %38 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %39 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SEINTARM(i32 %40)
  %42 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %43 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @INGRESSQID(i32 %44)
  %46 = or i32 %41, %45
  %47 = call i32 @t4_write_reg(%struct.adapter* %35, i32 %37, i32 %46)
  br label %48

48:                                               ; preds = %34, %24
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %5

51:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sge_rspq**) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @SEINTARM(i32) #1

declare dso_local i32 @INGRESSQID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
