; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i64 }

@TALITOS_ISR = common dso_local global i64 0, align 8
@TALITOS_ISR_LO = common dso_local global i64 0, align 8
@TALITOS_ICR = common dso_local global i64 0, align 8
@TALITOS_ICR_LO = common dso_local global i64 0, align 8
@TALITOS_ISR_CHDONE = common dso_local global i32 0, align 4
@TALITOS_IMR = common dso_local global i64 0, align 8
@TALITOS_IMR_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @talitos_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.device*
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %11)
  store %struct.talitos_private* %12, %struct.talitos_private** %6, align 8
  %13 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %14 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TALITOS_ISR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @in_be32(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %20 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TALITOS_ISR_LO, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @in_be32(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %26 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TALITOS_ICR, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @out_be32(i64 %29, i32 %30)
  %32 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %33 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TALITOS_ICR_LO, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @out_be32(i64 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TALITOS_ISR_CHDONE, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %2
  %48 = phi i1 [ true, %2 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @talitos_error(i64 %54, i32 %55, i32 %56)
  br label %76

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TALITOS_ISR_CHDONE, align 4
  %61 = and i32 %59, %60
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %66 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TALITOS_IMR, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* @TALITOS_IMR_DONE, align 4
  %71 = call i32 @clrbits32(i64 %69, i32 %70)
  %72 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %73 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %72, i32 0, i32 0
  %74 = call i32 @tasklet_schedule(i32* %73)
  br label %75

75:                                               ; preds = %64, %58
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @IRQ_NONE, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  ret i32 %87
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @talitos_error(i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @clrbits32(i64, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
