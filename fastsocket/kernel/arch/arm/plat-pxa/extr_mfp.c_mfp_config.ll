; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-pxa/extr_mfp.c_mfp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-pxa/extr_mfp.c_mfp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfp_pin = type { i64, i64, i64 }

@mfp_spin_lock = common dso_local global i32 0, align 4
@MFP_PIN_MAX = common dso_local global i32 0, align 4
@mfp_table = common dso_local global %struct.mfp_pin* null, align 8
@MFP_PULL_NONE = common dso_local global i32 0, align 4
@mfpr_lpm = common dso_local global i64* null, align 8
@mfpr_edge = common dso_local global i64* null, align 8
@mfpr_pull = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfp_config(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mfp_pin*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @mfp_spin_lock, i64 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %109, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @MFP_PIN(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MFP_PIN_MAX, align 4
  %29 = icmp sge i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.mfp_pin*, %struct.mfp_pin** @mfp_table, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %32, i64 %34
  store %struct.mfp_pin* %35, %struct.mfp_pin** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @MFP_AF(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @MFP_DS(i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @MFP_LPM_STATE(i64 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @MFP_LPM_EDGE(i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @MFP_PULL(i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @MFPR_AF_SEL(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @MFPR_DRIVE(i32 %48)
  %50 = or i64 %47, %49
  store i64 %50, i64* %7, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @MFP_PULL_NONE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %22
  %58 = load i64, i64* %7, align 8
  %59 = load i64*, i64** @mfpr_lpm, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %58, %63
  %65 = load i64*, i64** @mfpr_edge, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %64, %69
  %71 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %72 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %74 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %77 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %103

78:                                               ; preds = %22
  %79 = load i64, i64* %7, align 8
  %80 = load i64*, i64** @mfpr_lpm, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %79, %84
  %86 = load i64*, i64** @mfpr_edge, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %85, %90
  %92 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %93 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64*, i64** @mfpr_pull, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %94, %99
  %101 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %102 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %78, %57
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %106 = getelementptr inbounds %struct.mfp_pin, %struct.mfp_pin* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.mfp_pin*, %struct.mfp_pin** %9, align 8
  %108 = call i32 @__mfp_config_run(%struct.mfp_pin* %107)
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load i64*, i64** %3, align 8
  %113 = getelementptr inbounds i64, i64* %112, i32 1
  store i64* %113, i64** %3, align 8
  br label %18

114:                                              ; preds = %18
  %115 = call i32 (...) @mfpr_sync()
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* @mfp_spin_lock, i64 %116)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MFP_PIN(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MFP_AF(i64) #1

declare dso_local i32 @MFP_DS(i64) #1

declare dso_local i32 @MFP_LPM_STATE(i64) #1

declare dso_local i32 @MFP_LPM_EDGE(i64) #1

declare dso_local i32 @MFP_PULL(i64) #1

declare dso_local i64 @MFPR_AF_SEL(i32) #1

declare dso_local i64 @MFPR_DRIVE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__mfp_config_run(%struct.mfp_pin*) #1

declare dso_local i32 @mfpr_sync(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
