; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h_gru_ivset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h_gru_ivset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_instruction = type { i64, i64, i64, i32 }

@OP_IVSET = common dso_local global i32 0, align 4
@IAA_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i64, i8, i64, i64)* @gru_ivset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_ivset(i8* %0, i64 %1, i32 %2, i64 %3, i8 zeroext %4, i64 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.gru_instruction*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.gru_instruction*
  store %struct.gru_instruction* %17, %struct.gru_instruction** %15, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.gru_instruction*, %struct.gru_instruction** %15, align 8
  %20 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.gru_instruction*, %struct.gru_instruction** %15, align 8
  %23 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.gru_instruction*, %struct.gru_instruction** %15, align 8
  %26 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.gru_instruction*, %struct.gru_instruction** %15, align 8
  %29 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gru_instruction*, %struct.gru_instruction** %15, align 8
  %31 = load i32, i32* @OP_IVSET, align 4
  %32 = load i8, i8* %12, align 1
  %33 = load i32, i32* @IAA_RAM, align 4
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @CB_IMA(i64 %34)
  %36 = call i32 @__opdword(i32 %31, i32 0, i8 zeroext %32, i32 %33, i32 0, i32 0, i32 %35)
  %37 = call i32 @gru_start_instruction(%struct.gru_instruction* %30, i32 %36)
  ret void
}

declare dso_local i32 @gru_start_instruction(%struct.gru_instruction*, i32) #1

declare dso_local i32 @__opdword(i32, i32, i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @CB_IMA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
