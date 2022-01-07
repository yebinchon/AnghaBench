; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_pd.c_c2_pd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_pd.c_c2_pd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.c2_pd = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_pd_alloc(%struct.c2_dev* %0, i32 %1, %struct.c2_pd* %2) #0 {
  %4 = alloca %struct.c2_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c2_pd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.c2_pd* %2, %struct.c2_pd** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %10 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %14 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %18 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %22 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @find_next_zero_bit(i32 %16, i64 %20, i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %28 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %26, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %34 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %38 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @find_first_zero_bit(i32 %36, i64 %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %32, %3
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %45 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %43, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.c2_pd*, %struct.c2_pd** %6, align 8
  %52 = getelementptr inbounds %struct.c2_pd, %struct.c2_pd* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %55 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__set_bit(i64 %53, i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  %61 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %62 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %65 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %69 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %49
  %74 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %75 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %49
  br label %81

78:                                               ; preds = %42
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.c2_dev*, %struct.c2_dev** %4, align 8
  %83 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
