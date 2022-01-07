; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_save_reset_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_save_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_save_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_save_reset_stats(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %3 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 13
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %8, %1
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 13
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %18, %22
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %23
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 8
  %31 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %39
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %66, %70
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %82, %86
  %88 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %14, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
