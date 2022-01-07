; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_to_uint32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/nwfpe/extr_softfloat.c_float64_to_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_to_uint32(%struct.roundingData* %0, i32 %1) #0 {
  %3 = alloca %struct.roundingData*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @extractFloat64Frac(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @extractFloat64Exp(i32 %11)
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 @LIT64(i32 0)
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i64, i64* %6, align 8
  %21 = sub nsw i64 1068, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 0, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @shift64RightJamming(i32 %25, i64 %26, i32* %8)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.roundingData*, %struct.roundingData** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @roundAndPackInt32(%struct.roundingData* %29, i64 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i64 @extractFloat64Exp(i32) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i64, i32*) #1

declare dso_local i32 @roundAndPackInt32(%struct.roundingData*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
