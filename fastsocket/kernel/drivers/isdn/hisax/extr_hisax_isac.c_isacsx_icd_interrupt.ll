; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_icd_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isacsx_icd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32 (%struct.isac*, i32, i32)* }

@ISACSX_ISTAD = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ISTAD %#x\00", align 1
@ISACSX_ISTAD_XDU = common dso_local global i8 0, align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ISTAD XDU\00", align 1
@ISACSX_ISTAD_XMR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ISTAD XMR\00", align 1
@ISACSX_ISTAD_XPR = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ISTAD XPR\00", align 1
@ISACSX_ISTAD_RFO = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ISTAD RFO\00", align 1
@ISACSX_CMDRD = common dso_local global i32 0, align 4
@ISACSX_CMDRD_RMC = common dso_local global i32 0, align 4
@ISACSX_ISTAD_RME = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ISTAD RME\00", align 1
@ISACSX_ISTAD_RPF = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ISTAD RPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isacsx_icd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isacsx_icd_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISACSX_ISTAD, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* @DBG_IRQ, align 4
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = call i32 (i32, i8*, ...) @DBG(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ISACSX_ISTAD_XDU, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @DBG_WARN, align 4
  %22 = call i32 (i32, i8*, ...) @DBG(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.isac*, %struct.isac** %2, align 8
  %24 = call i32 @isac_retransmit(%struct.isac* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ISACSX_ISTAD_XMR, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @DBG_WARN, align 4
  %34 = call i32 (i32, i8*, ...) @DBG(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.isac*, %struct.isac** %2, align 8
  %36 = call i32 @isac_retransmit(%struct.isac* %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @ISACSX_ISTAD_XPR, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @DBG_IRQ, align 4
  %46 = call i32 (i32, i8*, ...) @DBG(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.isac*, %struct.isac** %2, align 8
  %48 = call i32 @isacsx_xpr_interrupt(%struct.isac* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @ISACSX_ISTAD_RFO, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* @DBG_WARN, align 4
  %58 = call i32 (i32, i8*, ...) @DBG(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.isac*, %struct.isac** %2, align 8
  %60 = getelementptr inbounds %struct.isac, %struct.isac* %59, i32 0, i32 1
  %61 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %60, align 8
  %62 = load %struct.isac*, %struct.isac** %2, align 8
  %63 = load i32, i32* @ISACSX_CMDRD, align 4
  %64 = load i32, i32* @ISACSX_CMDRD_RMC, align 4
  %65 = call i32 %61(%struct.isac* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %56, %49
  %67 = load i8, i8* %3, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @ISACSX_ISTAD_RME, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @DBG_IRQ, align 4
  %75 = call i32 (i32, i8*, ...) @DBG(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.isac*, %struct.isac** %2, align 8
  %77 = call i32 @isacsx_rme_interrupt(%struct.isac* %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i8, i8* %3, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @ISACSX_ISTAD_RPF, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @DBG_IRQ, align 4
  %87 = call i32 (i32, i8*, ...) @DBG(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.isac*, %struct.isac** %2, align 8
  %89 = call i32 @isac_empty_fifo(%struct.isac* %88, i32 32)
  br label %90

90:                                               ; preds = %85, %78
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @isac_retransmit(%struct.isac*) #1

declare dso_local i32 @isacsx_xpr_interrupt(%struct.isac*) #1

declare dso_local i32 @isacsx_rme_interrupt(%struct.isac*) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
