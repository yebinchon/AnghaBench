; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.intr_context* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intr_context = type { i64 }

@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_irq(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_context*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %5, i32 0, i32 5
  %7 = load %struct.intr_context*, %struct.intr_context** %6, align 8
  %8 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %7, i64 0
  store %struct.intr_context* %8, %struct.intr_context** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %9
  %16 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %17 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 4
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @free_irq(i32 %34, i32* %40)
  br label %53

42:                                               ; preds = %20
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @free_irq(i32 %47, i32* %51)
  br label %53

53:                                               ; preds = %42, %26
  br label %54

54:                                               ; preds = %53, %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %59 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %58, i32 1
  store %struct.intr_context* %59, %struct.intr_context** %4, align 8
  br label %9

60:                                               ; preds = %9
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %62 = call i32 @ql_disable_msix(%struct.ql_adapter* %61)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @ql_disable_msix(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
