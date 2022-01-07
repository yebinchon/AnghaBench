; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_alloc_data_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_alloc_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 }

@PM_WRITE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dm_pool_get_free_block_count\00", align 1
@PM_OUT_OF_DATA_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dm_pool_alloc_data_block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thin_c*, i32*)* @alloc_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_data_block(%struct.thin_c* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pool*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 0
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %8, align 8
  %12 = load %struct.pool*, %struct.pool** %8, align 8
  %13 = call i64 @get_pool_mode(%struct.pool* %12)
  %14 = load i64, i64* @PM_WRITE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.pool*, %struct.pool** %8, align 8
  %24 = getelementptr inbounds %struct.pool, %struct.pool* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dm_pool_get_free_block_count(i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.pool*, %struct.pool** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @metadata_operation_failed(%struct.pool* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %22
  %35 = load %struct.pool*, %struct.pool** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @check_low_water_mark(%struct.pool* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %34
  %41 = load %struct.pool*, %struct.pool** %8, align 8
  %42 = call i32 @commit(%struct.pool* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %40
  %48 = load %struct.pool*, %struct.pool** %8, align 8
  %49 = getelementptr inbounds %struct.pool, %struct.pool* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dm_pool_get_free_block_count(i32 %50, i32* %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.pool*, %struct.pool** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @metadata_operation_failed(%struct.pool* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %83

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.pool*, %struct.pool** %8, align 8
  %64 = load i32, i32* @PM_OUT_OF_DATA_SPACE, align 4
  %65 = call i32 @set_pool_mode(%struct.pool* %63, i32 %64)
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %83

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.pool*, %struct.pool** %8, align 8
  %71 = getelementptr inbounds %struct.pool, %struct.pool* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @dm_pool_alloc_data_block(i32 %72, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.pool*, %struct.pool** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @metadata_operation_failed(%struct.pool* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %62, %54, %45, %29, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @dm_pool_get_free_block_count(i32, i32*) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

declare dso_local i32 @check_low_water_mark(%struct.pool*, i32) #1

declare dso_local i32 @commit(%struct.pool*) #1

declare dso_local i32 @set_pool_mode(%struct.pool*, i32) #1

declare dso_local i32 @dm_pool_alloc_data_block(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
