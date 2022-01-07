; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_typhoon_setvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i32)* @typhoon_setvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_setvol(%struct.typhoon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %7 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %16 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %18 = call i32 @typhoon_unmute(%struct.typhoon* %17)
  store i32 0, i32* %3, align 4
  br label %42

19:                                               ; preds = %10, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %22 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %31 = call i32 @typhoon_mute(%struct.typhoon* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %34 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @typhoon_setvol_generic(%struct.typhoon* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %41 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %29, %25, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @typhoon_unmute(%struct.typhoon*) #1

declare dso_local i32 @typhoon_mute(%struct.typhoon*) #1

declare dso_local i32 @typhoon_setvol_generic(%struct.typhoon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
