; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_update_write_batch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_update_write_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64*, i64, i32, i64, i32 }

@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*)* @update_write_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_write_batch(%struct.as_data* %0) #0 {
  %2 = alloca %struct.as_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %2, align 8
  %5 = load %struct.as_data*, %struct.as_data** %2, align 8
  %6 = getelementptr inbounds %struct.as_data, %struct.as_data* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @BLK_RW_ASYNC, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.as_data*, %struct.as_data** %2, align 8
  %13 = getelementptr inbounds %struct.as_data, %struct.as_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.as_data*, %struct.as_data** %2, align 8
  %27 = getelementptr inbounds %struct.as_data, %struct.as_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %3, align 8
  %33 = mul i64 %32, 3
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.as_data*, %struct.as_data** %2, align 8
  %37 = getelementptr inbounds %struct.as_data, %struct.as_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %37, align 8
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.as_data*, %struct.as_data** %2, align 8
  %42 = getelementptr inbounds %struct.as_data, %struct.as_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %35
  br label %72

46:                                               ; preds = %25, %21
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.as_data*, %struct.as_data** %2, align 8
  %52 = getelementptr inbounds %struct.as_data, %struct.as_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = mul nsw i64 %57, 3
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.as_data*, %struct.as_data** %2, align 8
  %62 = getelementptr inbounds %struct.as_data, %struct.as_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %62, align 8
  br label %70

65:                                               ; preds = %55
  %66 = load %struct.as_data*, %struct.as_data** %2, align 8
  %67 = getelementptr inbounds %struct.as_data, %struct.as_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %50, %46
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.as_data*, %struct.as_data** %2, align 8
  %74 = getelementptr inbounds %struct.as_data, %struct.as_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.as_data*, %struct.as_data** %2, align 8
  %79 = getelementptr inbounds %struct.as_data, %struct.as_data* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
