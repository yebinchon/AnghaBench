; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)* }

@ISACSX_ISTA = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ISTA %#x\00", align 1
@ISACSX_ISTA_ICD = common dso_local global i8 0, align 1
@ISACSX_ISTA_CIC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isacsx_irq(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISACSX_ISTA, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* @DBG_IRQ, align 4
  %11 = load i8, i8* %3, align 1
  %12 = call i32 @DBG(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %11)
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ISACSX_ISTA_ICD, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.isac*, %struct.isac** %2, align 8
  %21 = call i32 @isacsx_icd_interrupt(%struct.isac* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ISACSX_ISTA_CIC, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.isac*, %struct.isac** %2, align 8
  %31 = call i32 @isacsx_cic_interrupt(%struct.isac* %30)
  br label %32

32:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @isacsx_icd_interrupt(%struct.isac*) #1

declare dso_local i32 @isacsx_cic_interrupt(%struct.isac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
