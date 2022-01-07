; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_get_hw_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_get_hw_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_SMBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_SWSM_SWESMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Driver can't access the NVM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_get_hw_semaphore(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* @SWSM, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  %25 = call i32 @usleep_range(i32 50, i32 100)
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @E1000_ERR_NVM, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %2, align 8
  br label %71

36:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i32, i32* @SWSM, align 4
  %43 = call i32 @er32(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @SWSM, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ew32(i32 %44, i32 %47)
  %49 = load i32, i32* @SWSM, align 4
  %50 = call i32 @er32(i32 %49)
  %51 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %60

55:                                               ; preds = %41
  %56 = call i32 @usleep_range(i32 50, i32 100)
  br label %57

57:                                               ; preds = %55
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %37

60:                                               ; preds = %54, %37
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @e1000e_put_hw_semaphore(%struct.e1000_hw* %65)
  %67 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i64, i64* @E1000_ERR_NVM, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %2, align 8
  br label %71

70:                                               ; preds = %60
  store i64 0, i64* %2, align 8
  br label %71

71:                                               ; preds = %70, %64, %32
  %72 = load i64, i64* %2, align 8
  ret i64 %72
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_put_hw_semaphore(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
