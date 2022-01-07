; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_cisq_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_cisq_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32 }

@ISAC_CIR0 = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CIR0 %#x\00", align 1
@ISAC_CIR0_CIC0 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CODR0 %#x\00", align 1
@ISAC_CIR0_CIC1 = common dso_local global i8 0, align 1
@ISAC_CIR1 = common dso_local global i32 0, align 4
@DBG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ISAC CIR1 %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isac_cisq_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_cisq_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISAC_CIR0, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* @DBG_IRQ, align 4
  %11 = load i8, i8* %3, align 1
  %12 = call i32 @DBG(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %11)
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ISAC_CIR0_CIC0, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @DBG_IRQ, align 4
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 2
  %24 = and i32 %23, 15
  %25 = trunc i32 %24 to i8
  %26 = call i32 @DBG(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %25)
  %27 = load %struct.isac*, %struct.isac** %2, align 8
  %28 = getelementptr inbounds %struct.isac, %struct.isac* %27, i32 0, i32 1
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = ashr i32 %30, 2
  %32 = and i32 %31, 15
  %33 = trunc i32 %32 to i8
  %34 = call i32 @FsmEvent(i32* %28, i8 zeroext %33, i32* null)
  br label %35

35:                                               ; preds = %19, %1
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @ISAC_CIR0_CIC1, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.isac*, %struct.isac** %2, align 8
  %44 = getelementptr inbounds %struct.isac, %struct.isac* %43, i32 0, i32 0
  %45 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %44, align 8
  %46 = load %struct.isac*, %struct.isac** %2, align 8
  %47 = load i32, i32* @ISAC_CIR1, align 4
  %48 = call zeroext i8 %45(%struct.isac* %46, i32 %47)
  store i8 %48, i8* %3, align 1
  %49 = load i32, i32* @DBG_WARN, align 4
  %50 = load i8, i8* %3, align 1
  %51 = call i32 @DBG(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %50)
  br label %52

52:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @FsmEvent(i32*, i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
