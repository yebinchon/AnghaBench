; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_aux_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_aux_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }

@AUXPAGE = common dso_local global i32 0, align 4
@AUXOFF = common dso_local global i32 0, align 4
@AUXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32, i32*)* @aux_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_setup(%struct.airo_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %11 = load i32, i32* @AUXPAGE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @OUT4500(%struct.airo_info* %10, i32 %11, i32 %12)
  %14 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %15 = load i32, i32* @AUXOFF, align 4
  %16 = call i32 @OUT4500(%struct.airo_info* %14, i32 %15, i32 0)
  %17 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %18 = load i32, i32* @AUXDATA, align 4
  %19 = call i32 @IN4500(%struct.airo_info* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %21 = load i32, i32* @AUXDATA, align 4
  %22 = call i32 @IN4500(%struct.airo_info* %20, i32 %21)
  %23 = and i32 %22, 255
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %29 = load i32, i32* @AUXOFF, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @OUT4500(%struct.airo_info* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
