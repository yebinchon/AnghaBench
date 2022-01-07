; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_get_cached_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_get_cached_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ib_pkey_cache** }
%struct.ib_pkey_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_cached_pkey(%struct.ib_device* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_pkey_cache*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call i64 @start_port(%struct.ib_device* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %21 = call i64 @end_port(%struct.ib_device* %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %102

26:                                               ; preds = %18
  %27 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @read_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.ib_pkey_cache**, %struct.ib_pkey_cache*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %38 = call i64 @start_port(%struct.ib_device* %37)
  %39 = sub nsw i64 %36, %38
  %40 = getelementptr inbounds %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %35, i64 %39
  %41 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %40, align 8
  store %struct.ib_pkey_cache* %41, %struct.ib_pkey_cache** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %47 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %26
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %95

53:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %73, %53
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %57 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %54
  %61 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %62 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %76

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %54

76:                                               ; preds = %71, %54
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %79 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %10, align 8
  %84 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %94

92:                                               ; preds = %76
  %93 = load i32*, i32** %9, align 8
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %82
  br label %95

95:                                               ; preds = %94, %50
  %96 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %97 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @read_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %95, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
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
