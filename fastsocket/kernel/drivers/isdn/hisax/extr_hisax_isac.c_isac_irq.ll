; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)*, i32 (%struct.isac*, i32, i32)* }

@ISAC_ISTA = common dso_local global i32 0, align 4
@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ISTA %#x\00", align 1
@ISAC_ISTA_EXI = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"EXI\00", align 1
@ISAC_ISTA_XPR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"XPR\00", align 1
@ISAC_ISTA_RME = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RME\00", align 1
@ISAC_ISTA_RPF = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RPF\00", align 1
@ISAC_ISTA_CISQ = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CISQ\00", align 1
@ISAC_ISTA_RSC = common dso_local global i8 0, align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"RSC\00", align 1
@ISAC_ISTA_SIN = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SIN\00", align 1
@ISAC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isac_irq(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISAC_ISTA, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* @DBG_IRQ, align 4
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = call i32 (i32, i8*, ...) @DBG(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ISAC_ISTA_EXI, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @DBG_IRQ, align 4
  %22 = call i32 (i32, i8*, ...) @DBG(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.isac*, %struct.isac** %2, align 8
  %24 = call i32 @isac_exi_interrupt(%struct.isac* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ISAC_ISTA_XPR, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @DBG_IRQ, align 4
  %34 = call i32 (i32, i8*, ...) @DBG(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.isac*, %struct.isac** %2, align 8
  %36 = call i32 @isac_xpr_interrupt(%struct.isac* %35)
  br label %37

37:                                               ; preds = %32, %25
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @ISAC_ISTA_RME, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @DBG_IRQ, align 4
  %46 = call i32 (i32, i8*, ...) @DBG(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.isac*, %struct.isac** %2, align 8
  %48 = call i32 @isac_rme_interrupt(%struct.isac* %47)
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @ISAC_ISTA_RPF, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* @DBG_IRQ, align 4
  %58 = call i32 (i32, i8*, ...) @DBG(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.isac*, %struct.isac** %2, align 8
  %60 = call i32 @isac_empty_fifo(%struct.isac* %59, i32 32)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ISAC_ISTA_CISQ, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* @DBG_IRQ, align 4
  %70 = call i32 (i32, i8*, ...) @DBG(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %71 = load %struct.isac*, %struct.isac** %2, align 8
  %72 = call i32 @isac_cisq_interrupt(%struct.isac* %71)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i8, i8* %3, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @ISAC_ISTA_RSC, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @DBG_WARN, align 4
  %82 = call i32 (i32, i8*, ...) @DBG(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i8, i8* %3, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @ISAC_ISTA_SIN, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @DBG_WARN, align 4
  %92 = call i32 (i32, i8*, ...) @DBG(i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.isac*, %struct.isac** %2, align 8
  %95 = getelementptr inbounds %struct.isac, %struct.isac* %94, i32 0, i32 1
  %96 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %95, align 8
  %97 = load %struct.isac*, %struct.isac** %2, align 8
  %98 = load i32, i32* @ISAC_MASK, align 4
  %99 = call i32 %96(%struct.isac* %97, i32 %98, i32 255)
  %100 = load %struct.isac*, %struct.isac** %2, align 8
  %101 = getelementptr inbounds %struct.isac, %struct.isac* %100, i32 0, i32 1
  %102 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %101, align 8
  %103 = load %struct.isac*, %struct.isac** %2, align 8
  %104 = load i32, i32* @ISAC_MASK, align 4
  %105 = call i32 %102(%struct.isac* %103, i32 %104, i32 0)
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @isac_exi_interrupt(%struct.isac*) #1

declare dso_local i32 @isac_xpr_interrupt(%struct.isac*) #1

declare dso_local i32 @isac_rme_interrupt(%struct.isac*) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac*, i32) #1

declare dso_local i32 @isac_cisq_interrupt(%struct.isac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
