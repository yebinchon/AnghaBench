; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h_gru_mesq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h_gru_mesq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_instruction = type { i64, i64 }

@OP_MESQ = common dso_local global i32 0, align 4
@XTYPE_CL = common dso_local global i32 0, align 4
@IAA_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i64)* @gru_mesq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_mesq(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gru_instruction*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.gru_instruction*
  store %struct.gru_instruction* %13, %struct.gru_instruction** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.gru_instruction*, %struct.gru_instruction** %11, align 8
  %16 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.gru_instruction*, %struct.gru_instruction** %11, align 8
  %19 = getelementptr inbounds %struct.gru_instruction, %struct.gru_instruction* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.gru_instruction*, %struct.gru_instruction** %11, align 8
  %21 = load i32, i32* @OP_MESQ, align 4
  %22 = load i32, i32* @XTYPE_CL, align 4
  %23 = load i32, i32* @IAA_RAM, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @CB_IMA(i64 %25)
  %27 = call i32 @__opdword(i32 %21, i32 0, i32 %22, i32 %23, i32 0, i64 %24, i32 %26)
  %28 = call i32 @gru_start_instruction(%struct.gru_instruction* %20, i32 %27)
  ret void
}

declare dso_local i32 @gru_start_instruction(%struct.gru_instruction*, i32) #1

declare dso_local i32 @__opdword(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @CB_IMA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
