; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_exact_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_exact_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ib_pkey_cache** }
%struct.ib_pkey_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_exact_cached_pkey(%struct.ib_device* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call i64 @start_port(%struct.ib_device* %17)
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = call i64 @end_port(%struct.ib_device* %22)
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %20
  %29 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %30 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @read_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.ib_pkey_cache**, %struct.ib_pkey_cache*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %40 = call i64 @start_port(%struct.ib_device* %39)
  %41 = sub nsw i64 %38, %40
  %42 = getelementptr inbounds %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %37, i64 %41
  %43 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %42, align 8
  store %struct.ib_pkey_cache* %43, %struct.ib_pkey_cache** %10, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 -1, i64* %44, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %73, %28
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %48 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %53 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %64 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %13, align 4
  br label %76

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %45

76:                                               ; preds = %62, %45
  %77 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %78 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @read_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %25
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @start_port(%struct.ib_device*) #1

declare dso_local i64 @end_port(%struct.ib_device*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
