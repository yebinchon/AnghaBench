; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_trylock_hw_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_trylock_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Trying to take a lock on resource %d\0A\00", align 1
@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\0A\00", align 1
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to get a lock on resource %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_trylock_hw_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_trylock_hw_lock(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = call i32 @BP_FUNC(%struct.bnx2x* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @NETIF_MSG_HW, align 4
  %15 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, i32, ...) @DP(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @NETIF_MSG_HW, align 4
  %24 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %28 = call i32 (i32, i8*, i32, ...) @DP(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %63

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 5
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 6
  %41 = mul nsw i32 %40, 8
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @REG_WR(%struct.bnx2x* %44, i32 %46, i32 %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @REG_RD(%struct.bnx2x* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %63

57:                                               ; preds = %43
  %58 = load i32, i32* @NETIF_MSG_HW, align 4
  %59 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i32, i8*, i32, ...) @DP(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %56, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
