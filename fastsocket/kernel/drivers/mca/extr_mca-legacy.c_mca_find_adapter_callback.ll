; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_adapter_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_adapter_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mca_find_adapter_info = type { i64, i64, %struct.mca_device* }
%struct.mca_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @mca_find_adapter_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_find_adapter_callback(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mca_find_adapter_info*, align 8
  %7 = alloca %struct.mca_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mca_find_adapter_info*
  store %struct.mca_find_adapter_info* %9, %struct.mca_find_adapter_info** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mca_device* @to_mca_device(%struct.device* %10)
  store %struct.mca_device* %11, %struct.mca_device** %7, align 8
  %12 = load %struct.mca_device*, %struct.mca_device** %7, align 8
  %13 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mca_find_adapter_info*, %struct.mca_find_adapter_info** %6, align 8
  %16 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.mca_device*, %struct.mca_device** %7, align 8
  %22 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mca_find_adapter_info*, %struct.mca_find_adapter_info** %6, align 8
  %25 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %49

29:                                               ; preds = %20
  %30 = load %struct.mca_find_adapter_info*, %struct.mca_find_adapter_info** %6, align 8
  %31 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %30, i32 0, i32 2
  %32 = load %struct.mca_device*, %struct.mca_device** %31, align 8
  %33 = icmp ne %struct.mca_device* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.mca_find_adapter_info*, %struct.mca_find_adapter_info** %6, align 8
  %36 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %35, i32 0, i32 2
  %37 = load %struct.mca_device*, %struct.mca_device** %36, align 8
  %38 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mca_device*, %struct.mca_device** %7, align 8
  %41 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34, %29
  %45 = load %struct.mca_device*, %struct.mca_device** %7, align 8
  %46 = load %struct.mca_find_adapter_info*, %struct.mca_find_adapter_info** %6, align 8
  %47 = getelementptr inbounds %struct.mca_find_adapter_info, %struct.mca_find_adapter_info* %46, i32 0, i32 2
  store %struct.mca_device* %45, %struct.mca_device** %47, align 8
  br label %48

48:                                               ; preds = %44, %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %28, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.mca_device* @to_mca_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
