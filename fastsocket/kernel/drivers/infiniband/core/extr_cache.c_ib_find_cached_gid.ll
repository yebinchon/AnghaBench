; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_cached_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cache.c_ib_find_cached_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ib_gid_cache** }
%struct.ib_gid_cache = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%union.ib_gid = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_find_cached_gid(%struct.ib_device* %0, %union.ib_gid* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_gid_cache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 -1, i32* %16, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @read_lock_irqsave(i32* %24, i64 %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %85, %21
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %30 = call i32 @end_port(%struct.ib_device* %29)
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = call i32 @start_port(%struct.ib_device* %31)
  %33 = sub nsw i32 %30, %32
  %34 = icmp sle i32 %28, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %27
  %36 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.ib_gid_cache**, %struct.ib_gid_cache*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ib_gid_cache*, %struct.ib_gid_cache** %39, i64 %41
  %43 = load %struct.ib_gid_cache*, %struct.ib_gid_cache** %42, align 8
  store %struct.ib_gid_cache* %43, %struct.ib_gid_cache** %9, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %81, %35
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.ib_gid_cache*, %struct.ib_gid_cache** %9, align 8
  %47 = getelementptr inbounds %struct.ib_gid_cache, %struct.ib_gid_cache* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %52 = load %struct.ib_gid_cache*, %struct.ib_gid_cache** %9, align 8
  %53 = getelementptr inbounds %struct.ib_gid_cache, %struct.ib_gid_cache* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = call i32 @memcmp(%union.ib_gid* %51, i32* %58, i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = call i32 @start_port(%struct.ib_device* %63)
  %65 = add nsw i32 %62, %64
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.ib_gid_cache*, %struct.ib_gid_cache** %9, align 8
  %71 = getelementptr inbounds %struct.ib_gid_cache, %struct.ib_gid_cache* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %61
  store i32 0, i32* %13, align 4
  br label %89

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %44

84:                                               ; preds = %44
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %27

88:                                               ; preds = %27
  br label %89

89:                                               ; preds = %88, %79
  %90 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %91 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @read_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %13, align 4
  ret i32 %95
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @end_port(%struct.ib_device*) #1

declare dso_local i32 @start_port(%struct.ib_device*) #1

declare dso_local i32 @memcmp(%union.ib_gid*, i32*, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
