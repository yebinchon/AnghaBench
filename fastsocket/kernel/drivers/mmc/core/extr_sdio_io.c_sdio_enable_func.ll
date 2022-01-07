; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_enable_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_io.c_sdio_enable_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"SDIO: Enabling device %s...\0A\00", align 1
@SDIO_CCCR_IOEx = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SDIO_CCCR_IORx = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SDIO: Enabled device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SDIO: Failed to enable device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_enable_func(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = icmp ne %struct.sdio_func* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %13 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %20 = call i32 @sdio_func_id(%struct.sdio_func* %19)
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %26 = call i32 @mmc_io_rw_direct(i32 %24, i32 0, i32 0, i32 %25, i8 zeroext 0, i8* %5)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %87

30:                                               ; preds = %1
  %31 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %5, align 1
  %39 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %40 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %43 = load i8, i8* %5, align 1
  %44 = call i32 @mmc_io_rw_direct(i32 %41, i32 1, i32 0, i32 %42, i8 zeroext %43, i8* null)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %87

48:                                               ; preds = %30
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %51 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @msecs_to_jiffies(i32 %52)
  %54 = add i64 %49, %53
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %48, %82
  %56 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %57 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SDIO_CCCR_IORx, align 4
  %60 = call i32 @mmc_io_rw_direct(i32 %58, i32 0, i32 0, i32 %59, i8 zeroext 0, i8* %5)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %87

64:                                               ; preds = %55
  %65 = load i8, i8* %5, align 1
  %66 = zext i8 %65 to i32
  %67 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %68 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %66, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %83

74:                                               ; preds = %64
  %75 = load i32, i32* @ETIME, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %87

82:                                               ; preds = %74
  br label %55

83:                                               ; preds = %73
  %84 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %85 = call i32 @sdio_func_id(%struct.sdio_func* %84)
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 0, i32* %2, align 4
  br label %92

87:                                               ; preds = %81, %63, %47, %29
  %88 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %89 = call i32 @sdio_func_id(%struct.sdio_func* %88)
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
