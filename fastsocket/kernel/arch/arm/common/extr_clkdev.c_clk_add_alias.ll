; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_clkdev.c_clk_add_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_clkdev.c_clk_add_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.clk_lookup = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_add_alias(i8* %0, i8* %1, i8* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.clk_lookup*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %12 = load %struct.device*, %struct.device** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.clk* @clk_get(%struct.device* %12, i8* %13)
  store %struct.clk* %14, %struct.clk** %10, align 8
  %15 = load %struct.clk*, %struct.clk** %10, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.clk*, %struct.clk** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.clk* %19)
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.clk*, %struct.clk** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.clk_lookup* @clkdev_alloc(%struct.clk* %22, i8* %23, i8* %24)
  store %struct.clk_lookup* %25, %struct.clk_lookup** %11, align 8
  %26 = load %struct.clk*, %struct.clk** %10, align 8
  %27 = call i32 @clk_put(%struct.clk* %26)
  %28 = load %struct.clk_lookup*, %struct.clk_lookup** %11, align 8
  %29 = icmp ne %struct.clk_lookup* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load %struct.clk_lookup*, %struct.clk_lookup** %11, align 8
  %35 = call i32 @clkdev_add(%struct.clk_lookup* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %30, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk_lookup* @clkdev_alloc(%struct.clk*, i8*, i8*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @clkdev_add(%struct.clk_lookup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
