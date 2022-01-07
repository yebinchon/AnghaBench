; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_core.c_bcma_core_pll_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_core.c_bcma_core_pll_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }

@BCMA_CLKCTLST_EXTRESREQ = common dso_local global i32 0, align 4
@BCMA_CLKCTLST_EXTRESST = common dso_local global i32 0, align 4
@BCMA_CLKCTLST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PLL enable timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Disabling PLL not supported yet!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_pll_ctl(%struct.bcma_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BCMA_CLKCTLST_EXTRESREQ, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BCMA_CLKCTLST_EXTRESST, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %24 = load i32, i32* @BCMA_CLKCTLST, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bcma_set32(%struct.bcma_device* %23, i32 %24, i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %41, %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 10000
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %32 = load i32, i32* @BCMA_CLKCTLST, align 4
  %33 = call i32 @bcma_read32(%struct.bcma_device* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %44

39:                                               ; preds = %30
  %40 = call i32 @udelay(i32 10)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %27

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %49 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bcma_err(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %44
  br label %58

53:                                               ; preds = %4
  %54 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %55 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bcma_warn(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bcma_set32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bcma_err(i32, i8*) #1

declare dso_local i32 @bcma_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
