; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_rx_carrier_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_rx_carrier_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32, i32* }

@CIR_FCCL = common dso_local global i32 0, align 4
@CIR_FCCH = common dso_local global i32 0, align 4
@BUF_PULSE_BIT = common dso_local global i32 0, align 4
@BUF_LEN_MASK = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to determine carrier! (c:%u, d:%u)\00", align 1
@MAX_CARRIER = common dso_local global i32 0, align 4
@MIN_CARRIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"WTF? Carrier frequency out of range!\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Carrier frequency: %u (count %u, duration %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvt_dev*)* @nvt_rx_carrier_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_rx_carrier_detect(%struct.nvt_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvt_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %9 = load i32, i32* @CIR_FCCL, align 4
  %10 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %8, i32 %9)
  %11 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %12 = load i32, i32* @CIR_FCCH, align 4
  %13 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %11, i32 %12)
  %14 = shl i32 %13, 8
  %15 = or i32 %10, %14
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %19 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BUF_PULSE_BIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %35 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BUF_LEN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %33, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* @SAMPLE_PERIOD, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* @KERN_NOTICE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @nvt_pr(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  store i32 0, i32* %2, align 4
  br label %83

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @MS_TO_NS(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MAX_CARRIER, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MIN_CARRIER, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %63
  %76 = call i32 (i8*, ...) @nvt_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, ...) @nvt_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %58
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @nvt_cir_reg_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_pr(i32, i8*, i32, i32) #1

declare dso_local i32 @MS_TO_NS(i32) #1

declare dso_local i32 @nvt_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
