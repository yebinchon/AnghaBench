; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_cisq_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_cisq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, i32 }

@ISAC_CIR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: ISAC CIR0 %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: ph_state change %x->%x\0A\00", align 1
@ISAC_CIR1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: ISAC CIR1 %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isac_cisq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_cisq_irq(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %4 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %5 = load i32, i32* @ISAC_CIR0, align 4
  %6 = call i32 @ReadISAC(%struct.isac_hw* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %8 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %17 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %20 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 2
  %24 = and i32 %23, 15
  %25 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 2
  %28 = and i32 %27, 15
  %29 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %30 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %32 = call i32 @isac_ph_state_change(%struct.isac_hw* %31)
  br label %33

33:                                               ; preds = %15, %1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %39 = load i32, i32* @ISAC_CIR1, align 4
  %40 = call i32 @ReadISAC(%struct.isac_hw* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %42 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @isac_ph_state_change(%struct.isac_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
