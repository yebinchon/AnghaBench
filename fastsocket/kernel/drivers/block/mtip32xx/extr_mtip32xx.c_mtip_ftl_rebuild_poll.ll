; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_ftl_rebuild_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_ftl_rebuild_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [50 x i8] c"FTL rebuild in progress. Polling for completion.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MTIP_FTL_REBUILD_TIMEOUT_MS = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MTIP_FTL_REBUILD_OFFSET = common dso_local global i32 0, align 4
@MTIP_FTL_REBUILD_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"FTL rebuild in progress (%d secs).\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"FTL rebuild complete (%d secs).\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Timed out waiting for FTL rebuild to complete (%d secs).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_ftl_rebuild_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_ftl_rebuild_poll(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 (i32*, i8*, ...) @dev_warn(i32* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i32, i32* @MTIP_FTL_REBUILD_TIMEOUT_MS, align 4
  %15 = call i64 @msecs_to_jiffies(i32 %14)
  %16 = add i64 %13, %15
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %89, %1
  %18 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %19 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %107

27:                                               ; preds = %17
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i64 @mtip_check_surprise_removal(%struct.TYPE_4__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %107

36:                                               ; preds = %27
  %37 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %38 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i64 @mtip_get_identify(%struct.TYPE_3__* %39, i32* null)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %107

45:                                               ; preds = %36
  %46 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %47 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* @MTIP_FTL_REBUILD_OFFSET, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MTIP_FTL_REBUILD_MAGIC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %45
  %58 = call i32 @ssleep(i32 1)
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  %61 = icmp uge i64 %59, 180
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %67, %68
  %70 = call i32 @jiffies_to_msecs(i64 %69)
  %71 = sdiv i32 %70, 1000
  %72 = call i32 (i32*, i8*, ...) @dev_warn(i32* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %62, %57
  br label %87

74:                                               ; preds = %45
  %75 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %76 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @jiffies_to_msecs(i64 %81)
  %83 = sdiv i32 %82, 1000
  %84 = call i32 (i32*, i8*, ...) @dev_warn(i32* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %86 = call i32 @mtip_block_initialize(%struct.driver_data* %85)
  store i32 0, i32* %2, align 4
  br label %107

87:                                               ; preds = %73
  %88 = call i32 @ssleep(i32 10)
  br label %89

89:                                               ; preds = %87
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @time_before(i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %17, label %94

94:                                               ; preds = %89
  %95 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %96 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %99, %100
  %102 = call i32 @jiffies_to_msecs(i64 %101)
  %103 = sdiv i32 %102, 1000
  %104 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EFAULT, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %94, %74, %42, %33, %24
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.TYPE_4__*) #1

declare dso_local i64 @mtip_get_identify(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mtip_block_initialize(%struct.driver_data*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
