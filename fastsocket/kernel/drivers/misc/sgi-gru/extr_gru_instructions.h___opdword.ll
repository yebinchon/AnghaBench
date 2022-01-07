; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h___opdword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gru_instructions.h___opdword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRU_CB_ICMD_SHFT = common dso_local global i32 0, align 4
@CBS_ACTIVE = common dso_local global i64 0, align 8
@GRU_ISTATUS_SHFT = common dso_local global i64 0, align 8
@GRU_IDEF2_SHFT = common dso_local global i64 0, align 8
@GRU_CB_IAA0_SHFT = common dso_local global i8 0, align 1
@GRU_CB_IAA1_SHFT = common dso_local global i8 0, align 1
@GRU_CB_IMA_SHFT = common dso_local global i8 0, align 1
@GRU_CB_XTYPE_SHFT = common dso_local global i8 0, align 1
@GRU_CB_OPC_SHFT = common dso_local global i8 0, align 1
@GRU_CB_EXOPC_SHFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8, i8, i8, i8, i8, i64, i8)* @__opdword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__opdword(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i64 %5, i8 zeroext %6) #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store i8 %0, i8* %8, align 1
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i64 %5, i64* %13, align 8
  store i8 %6, i8* %14, align 1
  %15 = load i32, i32* @GRU_CB_ICMD_SHFT, align 4
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @CBS_ACTIVE, align 8
  %19 = load i64, i64* @GRU_ISTATUS_SHFT, align 8
  %20 = shl i64 %18, %19
  %21 = or i64 %17, %20
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @GRU_IDEF2_SHFT, align 8
  %24 = shl i64 %22, %23
  %25 = or i64 %21, %24
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @GRU_CB_IAA0_SHFT, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = or i64 %25, %31
  %33 = load i8, i8* %12, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @GRU_CB_IAA1_SHFT, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = sext i32 %37 to i64
  %39 = or i64 %32, %38
  %40 = load i8, i8* %14, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @GRU_CB_IMA_SHFT, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = or i64 %39, %45
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @GRU_CB_XTYPE_SHFT, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = or i64 %46, %52
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @GRU_CB_OPC_SHFT, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = or i64 %53, %59
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @GRU_CB_EXOPC_SHFT, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = or i64 %60, %66
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
