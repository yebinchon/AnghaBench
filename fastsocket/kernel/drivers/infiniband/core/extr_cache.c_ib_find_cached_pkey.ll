; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ib_pkey_cache** }
%struct.ib_pkey_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_cached_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call i64 @start_port(%struct.ib_device* %18)
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = call i64 @end_port(%struct.ib_device* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %116

29:                                               ; preds = %21
  %30 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @read_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %36 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.ib_pkey_cache**, %struct.ib_pkey_cache*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %41 = call i64 @start_port(%struct.ib_device* %40)
  %42 = sub nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %38, i64 %42
  %44 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %43, align 8
  store %struct.ib_pkey_cache* %44, %struct.ib_pkey_cache** %10, align 8
  %45 = load i32*, i32** %9, align 8
  store i32 -1, i32* %45, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %97, %29
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %49 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %46
  %53 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %54 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 32767
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 32767
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %52
  %66 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %67 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 32768
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %78 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %13, align 4
  br label %100

86:                                               ; preds = %65
  %87 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %88 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %52
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %46

100:                                              ; preds = %76, %46
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %106, %103, %100
  %110 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %111 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @read_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
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
