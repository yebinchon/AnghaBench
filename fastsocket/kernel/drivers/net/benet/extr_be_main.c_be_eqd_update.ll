; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_eqd_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_eqd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i32* }
%struct.be_eq_obj = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.be_rx_stats = type { i64, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_eq_obj*)* @be_eqd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_eqd_update(%struct.be_adapter* %0, %struct.be_eq_obj* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_eq_obj*, align 8
  %5 = alloca %struct.be_rx_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_eq_obj* %1, %struct.be_eq_obj** %4, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %13 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = call %struct.be_rx_stats* @rx_stats(i32* %15)
  store %struct.be_rx_stats* %16, %struct.be_rx_stats** %5, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %20 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %24 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %29 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %33 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %123

40:                                               ; preds = %31
  %41 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %45 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call %struct.be_rx_stats* @rx_stats(i32* %47)
  store %struct.be_rx_stats* %48, %struct.be_rx_stats** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %51 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @time_before(i64 %49, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %58 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %123

59:                                               ; preds = %40
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @HZ, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %123

64:                                               ; preds = %59
  %65 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %66 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %69 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @HZ, align 8
  %74 = udiv i64 %72, %73
  %75 = udiv i64 %71, %74
  %76 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %77 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %79 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %82 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %85 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.be_rx_stats*, %struct.be_rx_stats** %5, align 8
  %87 = getelementptr inbounds %struct.be_rx_stats, %struct.be_rx_stats* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = udiv i64 %88, 110000
  %90 = shl i64 %89, 3
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %94 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @min(i32 %92, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %99 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @max(i32 %97, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 10
  br i1 %103, label %104, label %105

104:                                              ; preds = %64
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105, %27
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %109 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %114 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %115 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @be_cmd_modify_eqd(%struct.be_adapter* %113, i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %122 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %39, %55, %63, %112, %106
  ret void
}

declare dso_local %struct.be_rx_stats* @rx_stats(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @be_cmd_modify_eqd(%struct.be_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
