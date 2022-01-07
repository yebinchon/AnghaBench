; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_mfp.c_mfp_set_groupg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mfp_mutex = common dso_local global i32 0, align 4
@REG_MFSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nuc900-spi\00", align 1
@GPIOG0TO1 = common dso_local global i64 0, align 8
@GPIOG2TO3 = common dso_local global i64 0, align 8
@ENSPI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"nuc900-i2c0\00", align 1
@ENI2C0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"nuc900-i2c1\00", align 1
@ENI2C1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfp_set_groupg(%struct.device* %0) #0 {
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
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i64, i64* @GPIOG0TO1, align 8
  %20 = load i64, i64* @GPIOG2TO3, align 8
  %21 = or i64 %19, %20
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* @ENSPI, align 8
  %26 = load i64, i64* %3, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %61

28:                                               ; preds = %1
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i64, i64* @GPIOG0TO1, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* @ENI2C0, align 8
  %38 = load i64, i64* %3, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %60

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i64, i64* @GPIOG2TO3, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %3, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* @ENI2C1, align 8
  %50 = load i64, i64* %3, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %3, align 8
  br label %59

52:                                               ; preds = %40
  %53 = load i64, i64* @GPIOG0TO1, align 8
  %54 = load i64, i64* @GPIOG2TO3, align 8
  %55 = or i64 %53, %54
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %3, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %52, %44
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* @REG_MFSEL, align 4
  %64 = call i32 @__raw_writel(i64 %62, i32 %63)
  %65 = call i32 @mutex_unlock(i32* @mfp_mutex)
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
