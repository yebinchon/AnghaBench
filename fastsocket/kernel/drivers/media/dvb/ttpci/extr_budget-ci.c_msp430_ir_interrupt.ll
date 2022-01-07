; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_msp430_ir_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_msp430_ir_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.rc_dev* }
%struct.rc_dev = type { i32 }

@DEBINOSWAP = common dso_local global i32 0, align 4
@DEBIADDR_IR = common dso_local global i32 0, align 4
@ir_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"budget_ci: received byte 0x%02x\0A\00", align 1
@IR_DEVICE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @msp430_ir_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp430_ir_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.budget_ci*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.budget_ci*
  store %struct.budget_ci* %7, %struct.budget_ci** %3, align 8
  %8 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %9 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  store %struct.rc_dev* %11, %struct.rc_dev** %4, align 8
  %12 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %13 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %12, i32 0, i32 1
  %14 = load i32, i32* @DEBINOSWAP, align 4
  %15 = load i32, i32* @DEBIADDR_IR, align 4
  %16 = call i32 @ttpci_budget_debiread(i32* %13, i32 %14, i32 %15, i32 2, i32 1, i32 0)
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @ir_debug, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 127
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %31 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 63
  %35 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %36 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  br label %76

38:                                               ; preds = %23
  %39 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %40 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %76

45:                                               ; preds = %38
  %46 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %47 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %50 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IR_DEVICE_ANY, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %57 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 31
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %76

64:                                               ; preds = %55, %45
  %65 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %66 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %67 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 32
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = call i32 @rc_keydown(%struct.rc_dev* %65, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %64, %63, %44, %29
  ret void
}

declare dso_local i32 @ttpci_budget_debiread(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
