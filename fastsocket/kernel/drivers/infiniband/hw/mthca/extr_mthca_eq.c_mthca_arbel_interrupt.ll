; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_arbel_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_arbel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@MTHCA_NUM_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mthca_arbel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_arbel_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mthca_dev*
  store %struct.mthca_dev* %9, %struct.mthca_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @writel(i64 %19, i32 %23)
  br label %25

25:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MTHCA_NUM_EQ, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = call i64 @mthca_eq_int(%struct.mthca_dev* %31, %struct.TYPE_5__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @arbel_set_eq_ci(%struct.mthca_dev* %42, %struct.TYPE_5__* %49, i32 %58)
  br label %60

60:                                               ; preds = %41, %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %26

64:                                               ; preds = %26
  %65 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @arbel_eq_req_not(%struct.mthca_dev* %65, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IRQ_RETVAL(i32 %71)
  ret i32 %72
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @mthca_eq_int(%struct.mthca_dev*, %struct.TYPE_5__*) #1

declare dso_local i32 @arbel_set_eq_ci(%struct.mthca_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @arbel_eq_req_not(%struct.mthca_dev*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
