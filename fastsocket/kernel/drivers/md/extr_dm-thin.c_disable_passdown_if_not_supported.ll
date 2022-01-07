; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_disable_passdown_if_not_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_disable_passdown_if_not_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_c = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.pool* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.pool = type { i64 }
%struct.queue_limits = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.queue_limits }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"discard unsupported\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"max discard sectors smaller than a block\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"discard granularity larger than a block\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"discard granularity not a factor of block size\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Data device (%s) %s: Disabling discard passdown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_c*)* @disable_passdown_if_not_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_passdown_if_not_supported(%struct.pool_c* %0) #0 {
  %2 = alloca %struct.pool_c*, align 8
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pool_c* %0, %struct.pool_c** %2, align 8
  %11 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %12 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %11, i32 0, i32 2
  %13 = load %struct.pool*, %struct.pool** %12, align 8
  store %struct.pool* %13, %struct.pool** %3, align 8
  %14 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %15 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.block_device*, %struct.block_device** %17, align 8
  store %struct.block_device* %18, %struct.block_device** %4, align 8
  %19 = load %struct.block_device*, %struct.block_device** %4, align 8
  %20 = call %struct.TYPE_6__* @bdev_get_queue(%struct.block_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.queue_limits* %21, %struct.queue_limits** %5, align 8
  %22 = load %struct.pool*, %struct.pool** %3, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SECTOR_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %27 = load i32, i32* @BDEVNAME_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %32 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %81

37:                                               ; preds = %1
  %38 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %39 = call i32 @data_dev_supports_discard(%struct.pool_c* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %69

42:                                               ; preds = %37
  %43 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %44 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pool*, %struct.pool** %3, align 8
  %47 = getelementptr inbounds %struct.pool, %struct.pool* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %68

51:                                               ; preds = %42
  %52 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %53 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %67

58:                                               ; preds = %51
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %61 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @is_factor(i64 %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.block_device*, %struct.block_device** %4, align 8
  %74 = call i32 @bdevname(%struct.block_device* %73, i8* %30)
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %78 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %72, %69
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %36
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %10, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

declare dso_local %struct.TYPE_6__* @bdev_get_queue(%struct.block_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @data_dev_supports_discard(%struct.pool_c*) #1

declare dso_local i32 @is_factor(i64, i64) #1

declare dso_local i32 @DMWARN(i8*, i32, i8*) #1

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
