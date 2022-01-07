; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_wait_for_tpm_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_wait_for_tpm_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.tpm_chip.0*)*, i64 }
%struct.tpm_chip.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_tpm_stat(%struct.tpm_chip* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.tpm_chip.0*)*, i32 (%struct.tpm_chip.0*)** %15, align 8
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %18 = bitcast %struct.tpm_chip* %17 to %struct.tpm_chip.0*
  %19 = call i32 %16(%struct.tpm_chip.0* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %105

26:                                               ; preds = %4
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ETIME, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %105

45:                                               ; preds = %36
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %49 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.tpm_chip.0*)*, i32 (%struct.tpm_chip.0*)** %50, align 8
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %53 = bitcast %struct.tpm_chip* %52 to %struct.tpm_chip.0*
  %54 = call i32 %51(%struct.tpm_chip.0* %53)
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @wait_event_interruptible_timeout(i32 %47, i32 %59, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %105

65:                                               ; preds = %45
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @ERESTARTSYS, align 8
  %68 = sub nsw i64 0, %67
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @current, align 4
  %72 = call i64 @freezing(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @TIF_SIGPENDING, align 4
  %76 = call i32 @clear_thread_flag(i32 %75)
  br label %36

77:                                               ; preds = %70, %65
  br label %102

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32, i32* @TPM_TIMEOUT, align 4
  %81 = call i32 @msleep(i32 %80)
  %82 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %83 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.tpm_chip.0*)*, i32 (%struct.tpm_chip.0*)** %84, align 8
  %86 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %87 = bitcast %struct.tpm_chip* %86 to %struct.tpm_chip.0*
  %88 = call i32 %85(%struct.tpm_chip.0* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %105

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* @jiffies, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @time_before(i64 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %79, label %101

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i32, i32* @ETIME, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %94, %64, %42, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
