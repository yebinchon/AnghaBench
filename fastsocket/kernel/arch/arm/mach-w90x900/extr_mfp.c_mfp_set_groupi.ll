; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mfp_mutex = common dso_local global i32 0, align 4
@REG_MFSEL = common dso_local global i32 0, align 4
@GPSELEI1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"nuc900-wdog\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nuc900-atapi\00", align 1
@GPSELEI0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"nuc900-keypad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfp_set_groupi(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = icmp ne %struct.device* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = call i32 @mutex_lock(i32* @mfp_mutex)
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i8* @dev_name(%struct.device* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @REG_MFSEL, align 4
  %14 = call i64 @__raw_readl(i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* @GPSELEI1, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i64, i64* @GPSELEI1, align 8
  %24 = load i64, i64* %3, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %3, align 8
  br label %45

26:                                               ; preds = %1
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @GPSELEI0, align 8
  %32 = load i64, i64* %3, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %3, align 8
  br label %44

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* @GPSELEI0, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* @REG_MFSEL, align 4
  %48 = call i32 @__raw_writel(i64 %46, i32 %47)
  %49 = call i32 @mutex_unlock(i32* @mfp_mutex)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
