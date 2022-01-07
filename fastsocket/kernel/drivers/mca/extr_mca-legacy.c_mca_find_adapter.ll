; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_find_adapter_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MCA_NOTFOUND = common dso_local global i32 0, align 4
@mca_bus_type = common dso_local global i32 0, align 4
@mca_find_adapter_callback = common dso_local global i32 0, align 4
@MCA_ADAPTER_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mca_find_adapter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mca_find_adapter_info, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 65535
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MCA_NOTFOUND, align 4
  store i32 %10, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %16, align 8
  br label %17

17:                                               ; preds = %33, %11
  %18 = load i32, i32* @mca_find_adapter_callback, align 4
  %19 = call i32 @bus_for_each_dev(i32* @mca_bus_type, i32* null, %struct.mca_find_adapter_info* %6, i32 %18)
  %20 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @MCA_NOTFOUND, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MCA_ADAPTER_DISABLED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %40, align 8
  br label %17

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %23, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.mca_find_adapter_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
