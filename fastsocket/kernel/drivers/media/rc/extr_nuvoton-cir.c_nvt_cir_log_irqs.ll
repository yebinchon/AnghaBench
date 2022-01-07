; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_log_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_cir_log_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"IRQ 0x%02x (IREN 0x%02x) :%s%s%s%s%s%s%s%s%s\00", align 1
@CIR_IRSTS_RDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" RDR\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CIR_IRSTS_RTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" RTR\00", align 1
@CIR_IRSTS_PE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" PE\00", align 1
@CIR_IRSTS_RFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" RFO\00", align 1
@CIR_IRSTS_TE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" TE\00", align 1
@CIR_IRSTS_TTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" TTR\00", align 1
@CIR_IRSTS_TFU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c" TFU\00", align 1
@CIR_IRSTS_GH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c" GH\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @nvt_cir_log_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_cir_log_irqs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @KERN_INFO, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CIR_IRSTS_RDR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CIR_IRSTS_RTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CIR_IRSTS_PE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CIR_IRSTS_RFO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CIR_IRSTS_TE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CIR_IRSTS_TTR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CIR_IRSTS_TFU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @CIR_IRSTS_GH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @CIR_IRSTS_RDR, align 4
  %58 = load i32, i32* @CIR_IRSTS_RTR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CIR_IRSTS_PE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CIR_IRSTS_RFO, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CIR_IRSTS_TE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CIR_IRSTS_TTR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CIR_IRSTS_TFU, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CIR_IRSTS_GH, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %56, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @nvt_pr(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i8* %13, i8* %19, i8* %25, i8* %31, i8* %37, i8* %43, i8* %49, i8* %55, i8* %76)
  ret void
}

declare dso_local i32 @nvt_pr(i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
