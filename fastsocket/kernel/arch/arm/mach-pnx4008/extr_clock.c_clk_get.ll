; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_clk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_clock.c_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }
%struct.device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@onchip_clks = common dso_local global %struct.clk** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @clk_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk**, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.clk* @ERR_PTR(i32 %8)
  store %struct.clk* %9, %struct.clk** %5, align 8
  %10 = call i32 (...) @clock_lock()
  %11 = load %struct.clk**, %struct.clk*** @onchip_clks, align 8
  store %struct.clk** %11, %struct.clk*** %6, align 8
  br label %12

12:                                               ; preds = %39, %2
  %13 = load %struct.clk**, %struct.clk*** %6, align 8
  %14 = load %struct.clk**, %struct.clk*** @onchip_clks, align 8
  %15 = load %struct.clk**, %struct.clk*** @onchip_clks, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.clk** %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.clk*, %struct.clk** %14, i64 %17
  %19 = icmp ult %struct.clk** %13, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.clk**, %struct.clk*** %6, align 8
  %23 = load %struct.clk*, %struct.clk** %22, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i8* %21, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.clk**, %struct.clk*** %6, align 8
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @try_module_get(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.clk**, %struct.clk*** %6, align 8
  %37 = load %struct.clk*, %struct.clk** %36, align 8
  store %struct.clk* %37, %struct.clk** %5, align 8
  br label %42

38:                                               ; preds = %28, %20
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.clk**, %struct.clk*** %6, align 8
  %41 = getelementptr inbounds %struct.clk*, %struct.clk** %40, i32 1
  store %struct.clk** %41, %struct.clk*** %6, align 8
  br label %12

42:                                               ; preds = %35, %12
  %43 = call i32 (...) @clock_unlock()
  %44 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %44
}

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @clock_lock(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.clk**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @clock_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
