; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_hr2reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_hr2reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.s35390a*, i32)* @s35390a_hr2reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @s35390a_hr2reg(%struct.s35390a* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.s35390a*, align 8
  %5 = alloca i32, align 4
  store %struct.s35390a* %0, %struct.s35390a** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %7 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @bin2bcd(i32 %11)
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bin2bcd(i32 %18)
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 12
  %24 = call i32 @bin2bcd(i32 %23)
  %25 = or i32 64, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  br label %27

27:                                               ; preds = %21, %17, %10
  %28 = load i8, i8* %3, align 1
  ret i8 %28
}

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
