; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_init_txq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_init_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sge_txq** }
%struct.sge_txq = type { i64, i32, i32, i32*, i8*, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*, i32)* @init_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_txq(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %8 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %10 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %12 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %16 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %18 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = bitcast i32* %23 to i8*
  %25 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %26 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %31 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.sge_txq**, %struct.sge_txq*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %38, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sge_txq*, %struct.sge_txq** %37, i64 %44
  store %struct.sge_txq* %33, %struct.sge_txq** %45, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
