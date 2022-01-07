; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_uevent_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_uevent_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.qib_ctxtdata** }
%struct.qib_ctxtdata = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_set_uevent_bits(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %74, %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %24 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %21
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %34, i64 %36
  %38 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %37, align 8
  store %struct.qib_ctxtdata* %38, %struct.qib_ctxtdata** %5, align 8
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %40 = icmp ne %struct.qib_ctxtdata* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %74

42:                                               ; preds = %29
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %44 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %50 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @set_bit(i32 %48, i32* %52)
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %69, %47
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @set_bit(i32 %61, i32* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %42
  store i32 1, i32* %7, align 4
  br label %77

74:                                               ; preds = %41
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %21

77:                                               ; preds = %73, %21
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %79 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
