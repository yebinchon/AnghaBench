; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** }
%struct.s_smt_rx_queue = type { i8*, i8* }

@QUEUE_R1 = common dso_local global i64 0, align 8
@B0_R1_CSR = common dso_local global i32 0, align 4
@B4_R1_DA = common dso_local global i32 0, align 4
@QUEUE_R2 = common dso_local global i64 0, align 8
@B0_R2_CSR = common dso_local global i32 0, align 4
@B4_R2_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rx(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_smt_rx_queue*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %7, align 8
  %9 = load i64, i64* @QUEUE_R1, align 8
  %10 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %8, i64 %9
  store %struct.s_smt_rx_queue* %10, %struct.s_smt_rx_queue** %3, align 8
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.s_smt_rx_queue**, %struct.s_smt_rx_queue*** %14, align 8
  %16 = load i64, i64* @QUEUE_R1, align 8
  %17 = getelementptr inbounds %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %15, i64 %16
  store %struct.s_smt_rx_queue* %10, %struct.s_smt_rx_queue** %17, align 8
  %18 = load i32, i32* @B0_R1_CSR, align 4
  %19 = call i64 @ADDR(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @B4_R1_DA, align 4
  %24 = call i64 @ADDR(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %3, align 8
  %27 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %31, align 8
  %33 = load i64, i64* @QUEUE_R2, align 8
  %34 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %32, i64 %33
  store %struct.s_smt_rx_queue* %34, %struct.s_smt_rx_queue** %3, align 8
  %35 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %36 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.s_smt_rx_queue**, %struct.s_smt_rx_queue*** %38, align 8
  %40 = load i64, i64* @QUEUE_R2, align 8
  %41 = getelementptr inbounds %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %39, i64 %40
  store %struct.s_smt_rx_queue* %34, %struct.s_smt_rx_queue** %41, align 8
  %42 = load i32, i32* @B0_R2_CSR, align 4
  %43 = call i64 @ADDR(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %3, align 8
  %46 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @B4_R2_DA, align 4
  %48 = call i64 @ADDR(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.s_smt_rx_queue*, %struct.s_smt_rx_queue** %3, align 8
  %51 = getelementptr inbounds %struct.s_smt_rx_queue, %struct.s_smt_rx_queue* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i64 @ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
