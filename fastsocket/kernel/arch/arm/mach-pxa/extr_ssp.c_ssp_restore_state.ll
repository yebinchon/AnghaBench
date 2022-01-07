; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_dev = type { %struct.ssp_device* }
%struct.ssp_device = type { i64 }
%struct.ssp_state = type { i32, i32, i32, i32 }

@SSSR_ROR = common dso_local global i32 0, align 4
@SSSR_TUR = common dso_local global i32 0, align 4
@SSSR_BCE = common dso_local global i32 0, align 4
@SSSR = common dso_local global i64 0, align 8
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR0 = common dso_local global i64 0, align 8
@SSCR1 = common dso_local global i64 0, align 8
@SSTO = common dso_local global i64 0, align 8
@SSPSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssp_restore_state(%struct.ssp_dev* %0, %struct.ssp_state* %1) #0 {
  %3 = alloca %struct.ssp_dev*, align 8
  %4 = alloca %struct.ssp_state*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ssp_dev* %0, %struct.ssp_dev** %3, align 8
  store %struct.ssp_state* %1, %struct.ssp_state** %4, align 8
  %7 = load %struct.ssp_dev*, %struct.ssp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %7, i32 0, i32 0
  %9 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  store %struct.ssp_device* %9, %struct.ssp_device** %5, align 8
  %10 = load i32, i32* @SSSR_ROR, align 4
  %11 = load i32, i32* @SSSR_TUR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SSSR_BCE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %17 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_writel(i32 %15, i64 %20)
  %22 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %23 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SSCR0_SSE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %29 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SSCR0, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @__raw_writel(i32 %27, i64 %32)
  %34 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %35 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %38 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SSCR1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @__raw_writel(i32 %36, i64 %41)
  %43 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %44 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %47 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SSTO, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 %45, i64 %50)
  %52 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %53 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %56 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SSPSP, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @__raw_writel(i32 %54, i64 %59)
  %61 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %62 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %65 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SSCR0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @__raw_writel(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
