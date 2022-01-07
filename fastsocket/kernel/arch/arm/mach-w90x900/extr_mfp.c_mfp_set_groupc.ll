; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mfp_mutex = common dso_local global i32 0, align 4
@REG_MFSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nuc900-lcd\00", align 1
@GPSELC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"nuc900-kpi\00", align 1
@ENKPI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"nuc900-nand\00", align 1
@ENNAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfp_set_groupc(%struct.device* %0) #0 {
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
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @GPSELC, align 8
  %20 = load i64, i64* %3, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %3, align 8
  br label %53

22:                                               ; preds = %1
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* @GPSELC, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* @ENKPI, align 8
  %32 = load i64, i64* %3, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %3, align 8
  br label %52

34:                                               ; preds = %22
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* @GPSELC, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* @ENNAND, align 8
  %44 = load i64, i64* %3, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %3, align 8
  br label %51

46:                                               ; preds = %34
  %47 = load i64, i64* @GPSELC, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %3, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %46, %38
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* @REG_MFSEL, align 4
  %56 = call i32 @__raw_writel(i64 %54, i32 %55)
  %57 = call i32 @mutex_unlock(i32* @mfp_mutex)
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
