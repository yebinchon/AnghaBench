; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_fpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm644x_ccdc.c_ccdc_config_fpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_fault_pixel = type { i32, i32, i32 }

@CCDC_FPC_DISABLE = common dso_local global i32 0, align 4
@CCDC_FPC = common dso_local global i32 0, align 4
@CCDC_FPC_ADDR = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to FPC_ADDR...\0A\00", align 1
@CCDC_FPC_FPC_NUM_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"\0AWriting 0x%x to FPC...\0A\00", align 1
@CCDC_FPC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_fault_pixel*)* @ccdc_config_fpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_fpc(%struct.ccdc_fault_pixel* %0) #0 {
  %2 = alloca %struct.ccdc_fault_pixel*, align 8
  %3 = alloca i32, align 4
  store %struct.ccdc_fault_pixel* %0, %struct.ccdc_fault_pixel** %2, align 8
  %4 = load i32, i32* @CCDC_FPC_DISABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CCDC_FPC, align 4
  %7 = call i32 @regw(i32 %5, i32 %6)
  %8 = load %struct.ccdc_fault_pixel*, %struct.ccdc_fault_pixel** %2, align 8
  %9 = getelementptr inbounds %struct.ccdc_fault_pixel, %struct.ccdc_fault_pixel* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.ccdc_fault_pixel*, %struct.ccdc_fault_pixel** %2, align 8
  %15 = getelementptr inbounds %struct.ccdc_fault_pixel, %struct.ccdc_fault_pixel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CCDC_FPC_ADDR, align 4
  %18 = call i32 @regw(i32 %16, i32 %17)
  %19 = load i32, i32* @dev, align 4
  %20 = load %struct.ccdc_fault_pixel*, %struct.ccdc_fault_pixel** %2, align 8
  %21 = getelementptr inbounds %struct.ccdc_fault_pixel, %struct.ccdc_fault_pixel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ccdc_fault_pixel*, %struct.ccdc_fault_pixel** %2, align 8
  %25 = getelementptr inbounds %struct.ccdc_fault_pixel, %struct.ccdc_fault_pixel* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CCDC_FPC_FPC_NUM_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @CCDC_FPC, align 4
  %31 = call i32 @regw(i32 %29, i32 %30)
  %32 = load i32, i32* @dev, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @CCDC_FPC, align 4
  %36 = call i32 @regr(i32 %35)
  %37 = load i32, i32* @CCDC_FPC_ENABLE, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @CCDC_FPC, align 4
  %41 = call i32 @regw(i32 %39, i32 %40)
  %42 = load i32, i32* @dev, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @regr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
