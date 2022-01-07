; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_unused_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_unused_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_find_adapter_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@MCA_bus = common dso_local global i32 0, align 4
@MCA_NOTFOUND = common dso_local global i32 0, align 4
@mca_bus_type = common dso_local global i32 0, align 4
@mca_find_adapter_callback = common dso_local global i32 0, align 4
@MCA_ADAPTER_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mca_find_unused_adapter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mca_find_adapter_info, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.mca_find_adapter_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* @MCA_bus, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @MCA_NOTFOUND, align 4
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %20, align 8
  br label %21

21:                                               ; preds = %43, %15
  %22 = load i32, i32* @mca_find_adapter_callback, align 4
  %23 = call i32 @bus_for_each_dev(i32* @mca_bus_type, i32* null, %struct.mca_find_adapter_info* %6, i32 %22)
  %24 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @MCA_NOTFOUND, align 4
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MCA_ADAPTER_DISABLED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %51

43:                                               ; preds = %36, %29
  %44 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %21

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %6, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %27, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.mca_find_adapter_info*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
