; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_tavor_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_tavor_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MTHCA_ECR_CLR_BASE = common dso_local global i64 0, align 8
@MTHCA_ECR_BASE = common dso_local global i64 0, align 8
@MTHCA_NUM_EQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mthca_tavor_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_tavor_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mthca_dev*
  store %struct.mthca_dev* %10, %struct.mthca_dev** %6, align 8
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @writel(i32 %20, i64 %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %116

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MTHCA_ECR_CLR_BASE, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @MTHCA_ECR_BASE, align 8
  %48 = sub nsw i64 %46, %47
  %49 = add nsw i64 %48, 4
  %50 = call i32 @writel(i32 %39, i64 %49)
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %111, %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MTHCA_NUM_EQ, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %114

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %56, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %55
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %70 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %71 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = call i64 @mthca_eq_int(%struct.mthca_dev* %69, %struct.TYPE_9__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %68
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %82 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %86
  %88 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %89 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @tavor_set_eq_ci(%struct.mthca_dev* %80, %struct.TYPE_9__* %87, i32 %96)
  br label %98

98:                                               ; preds = %79, %68
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %100 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @tavor_eq_req_not(%struct.mthca_dev* %99, i32 %108)
  br label %110

110:                                              ; preds = %98, %55
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %51

114:                                              ; preds = %51
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %36
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @mthca_eq_int(%struct.mthca_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @tavor_set_eq_ci(%struct.mthca_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @tavor_eq_req_not(%struct.mthca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
