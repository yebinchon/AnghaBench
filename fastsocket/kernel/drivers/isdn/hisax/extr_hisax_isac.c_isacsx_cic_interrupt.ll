; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_cic_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_cic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32 }

@ISACSX_CIR0 = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CIR0 %#x\00", align 1
@ISACSX_CIR0_CIC0 = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CODR0 %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isacsx_cic_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isacsx_cic_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISACSX_CIR0, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* @DBG_IRQ, align 4
  %11 = load i8, i8* %3, align 1
  %12 = call i32 @DBG(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %11)
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ISACSX_CIR0_CIC0, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i32, i32* @DBG_IRQ, align 4
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = call i32 @DBG(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %24)
  %26 = load %struct.isac*, %struct.isac** %2, align 8
  %27 = getelementptr inbounds %struct.isac, %struct.isac* %26, i32 0, i32 1
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = call i32 @FsmEvent(i32* %27, i8 zeroext %31, i32* null)
  br label %33

33:                                               ; preds = %19, %1
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
