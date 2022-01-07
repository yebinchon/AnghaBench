; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, %struct.ixgbevf_q_vector**, i32, %struct.ixgbe_hw }
%struct.ixgbevf_q_vector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_hw = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i32 0, align 4
@IXGBE_VTEICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ixgbevf_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbevf_q_vector*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.ixgbevf_adapter*
  store %struct.ixgbevf_adapter* %9, %struct.ixgbevf_adapter** %3, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 4
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 3
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NON_Q_VECTORS, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %19
  %28 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %28, i32 0, i32 2
  %30 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %30, i64 %32
  %34 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %33, align 8
  store %struct.ixgbevf_q_vector* %34, %struct.ixgbevf_q_vector** %7, align 8
  %35 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40, %27
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = load i32, i32* @IXGBE_VTEICS, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %17
  %61 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %61, i32 0, i32 1
  %63 = call i32 @schedule_work(i32* %62)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
