; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_at91_ide.c_apply_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_at91_ide.c_apply_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i32, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"t0=%u t1=%u t2=%u t6z=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mck\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mck_hz=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"cycle=%u setup=%u pulse=%u data_float=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.ide_timing*, i32)* @apply_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_timings(i32 %0, i32 %1, %struct.ide_timing* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ide_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.clk*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ide_timing* %2, %struct.ide_timing** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %20 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %23 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %26 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 5
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 30, i32 20
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i8*, i32, ...) @pdbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %37, %struct.clk** %18, align 8
  %38 = load %struct.clk*, %struct.clk** %18, align 8
  %39 = call i32 @IS_ERR(%struct.clk* %38)
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.clk*, %struct.clk** %18, align 8
  %42 = call i32 @clk_get_rate(%struct.clk* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i32 (i8*, i32, ...) @pdbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @calc_mck_cycles(i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @calc_mck_cycles(i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @calc_mck_cycles(i32 %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @calc_mck_cycles(i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = call i32 (i8*, i32, ...) @pdbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @set_smc_timings(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @pdbg(i8*, i32, ...) #1

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @calc_mck_cycles(i32, i32) #1

declare dso_local i32 @set_smc_timings(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
