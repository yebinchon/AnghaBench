; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_disable_completion_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_disable_completion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.intr_context*, i32 }
%struct.intr_context = type { i32, i32 }

@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@INTR_EN = common dso_local global i32 0, align 4
@STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32)* @ql_disable_completion_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_disable_completion_interrupt(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_context*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 2
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ false, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %23, i32 0, i32 1
  %25 = load %struct.intr_context*, %struct.intr_context** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %25, i64 %27
  store %struct.intr_context* %28, %struct.intr_context** %7, align 8
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.intr_context*, %struct.intr_context** %7, align 8
  %33 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %32, i32 0, i32 0
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %22
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %38 = load i32, i32* @INTR_EN, align 4
  %39 = load %struct.intr_context*, %struct.intr_context** %7, align 8
  %40 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ql_write32(%struct.ql_adapter* %37, i32 %38, i32 %41)
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %44 = load i32, i32* @STS, align 4
  %45 = call i32 @ql_read32(%struct.ql_adapter* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %22
  %47 = load %struct.intr_context*, %struct.intr_context** %7, align 8
  %48 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
