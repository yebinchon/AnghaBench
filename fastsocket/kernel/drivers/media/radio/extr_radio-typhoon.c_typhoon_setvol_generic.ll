; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setvol_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setvol_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.typhoon*, i32)* @typhoon_setvol_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_setvol_generic(%struct.typhoon* %0, i32 %1) #0 {
  %3 = alloca %struct.typhoon*, align 8
  %4 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %6 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 14
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 3
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 2
  %14 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %15 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @outb_p(i32 %13, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 2
  %20 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %21 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @outb_p(i32 %19, i64 %23)
  %25 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %26 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
