; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_save_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_dev = type { %struct.ssp_device* }
%struct.ssp_device = type { i64 }
%struct.ssp_state = type { i8*, i8*, i8*, i8* }

@SSCR0 = common dso_local global i64 0, align 8
@SSCR1 = common dso_local global i64 0, align 8
@SSTO = common dso_local global i64 0, align 8
@SSPSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssp_save_state(%struct.ssp_dev* %0, %struct.ssp_state* %1) #0 {
  %3 = alloca %struct.ssp_dev*, align 8
  %4 = alloca %struct.ssp_state*, align 8
  %5 = alloca %struct.ssp_device*, align 8
  store %struct.ssp_dev* %0, %struct.ssp_dev** %3, align 8
  store %struct.ssp_state* %1, %struct.ssp_state** %4, align 8
  %6 = load %struct.ssp_dev*, %struct.ssp_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %6, i32 0, i32 0
  %8 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  store %struct.ssp_device* %8, %struct.ssp_device** %5, align 8
  %9 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %10 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SSCR0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @__raw_readl(i64 %13)
  %15 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %16 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %18 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SSCR1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i8* @__raw_readl(i64 %21)
  %23 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %24 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %26 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SSTO, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i8* @__raw_readl(i64 %29)
  %31 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %32 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  %34 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSPSP, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i8* @__raw_readl(i64 %37)
  %39 = load %struct.ssp_state*, %struct.ssp_state** %4, align 8
  %40 = getelementptr inbounds %struct.ssp_state, %struct.ssp_state* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ssp_dev*, %struct.ssp_dev** %3, align 8
  %42 = call i32 @ssp_disable(%struct.ssp_dev* %41)
  ret void
}

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @ssp_disable(%struct.ssp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
