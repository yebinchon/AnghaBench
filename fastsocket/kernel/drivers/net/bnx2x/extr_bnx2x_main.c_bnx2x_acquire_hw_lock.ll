; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_acquire_hw_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_acquire_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"lock_status 0x%x  resource_bit 0x%x\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Timeout\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = call i32 @BP_FUNC(%struct.bnx2x* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %21 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 5
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 8
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %9, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 6
  %36 = mul nsw i32 %35, 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @REG_RD(%struct.bnx2x* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 1000
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @REG_WR(%struct.bnx2x* %57, i32 %59, i32 %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @REG_RD(%struct.bnx2x* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %79

70:                                               ; preds = %56
  %71 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %53

75:                                               ; preds = %53
  %76 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %69, %46, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
