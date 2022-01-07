; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_biquad.h_biquad2_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_biquad.h_biquad2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biquad2_state = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.biquad2_state*, i8*, i8*, i8*, i8*, i8*)* @biquad2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @biquad2_init(%struct.biquad2_state* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.biquad2_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.biquad2_state* %0, %struct.biquad2_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %15 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %18 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %21 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %24 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %27 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %29 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.biquad2_state*, %struct.biquad2_state** %7, align 8
  %31 = getelementptr inbounds %struct.biquad2_state, %struct.biquad2_state* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
