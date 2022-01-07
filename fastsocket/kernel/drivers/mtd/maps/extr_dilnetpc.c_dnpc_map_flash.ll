; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_dilnetpc.c_dnpc_map_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_dilnetpc.c_dnpc_map_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSC_CR = common dso_local global i32 0, align 4
@CSC_PCCMDCR = common dso_local global i32 0, align 4
@PCC_MWSAR_1_Lo = common dso_local global i32 0, align 4
@PCC_MWSAR_1_Hi = common dso_local global i32 0, align 4
@PCC_MWEAR_1_Lo = common dso_local global i32 0, align 4
@PCC_MWEAR_1_Hi = common dso_local global i32 0, align 4
@PCC_MWAOR_1_Lo = common dso_local global i32 0, align 4
@PCC_MWAOR_1_Hi = common dso_local global i32 0, align 4
@CSC_MMSWAR = common dso_local global i32 0, align 4
@CSC_MMSWDSR = common dso_local global i32 0, align 4
@PCC_AWER_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @dnpc_map_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnpc_map_flash(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add i64 %6, %7
  %9 = sub i64 %8, 1
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @CSC_CR, align 4
  %11 = load i32, i32* @CSC_CR, align 4
  %12 = call i32 @getcsc(i32 %11)
  %13 = or i32 %12, 2
  %14 = call i32 @setcsc(i32 %10, i32 %13)
  %15 = load i32, i32* @CSC_PCCMDCR, align 4
  %16 = load i32, i32* @CSC_PCCMDCR, align 4
  %17 = call i32 @getcsc(i32 %16)
  %18 = and i32 %17, -2
  %19 = call i32 @setcsc(i32 %15, i32 %18)
  %20 = load i32, i32* @PCC_MWSAR_1_Lo, align 4
  %21 = load i64, i64* %3, align 8
  %22 = lshr i64 %21, 12
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i32
  %25 = call i32 @setpcc(i32 %20, i32 %24)
  %26 = load i32, i32* @PCC_MWSAR_1_Hi, align 4
  %27 = load i64, i64* %3, align 8
  %28 = lshr i64 %27, 20
  %29 = and i64 %28, 63
  %30 = trunc i64 %29 to i32
  %31 = call i32 @setpcc(i32 %26, i32 %30)
  %32 = load i32, i32* @PCC_MWEAR_1_Lo, align 4
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 12
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i32
  %37 = call i32 @setpcc(i32 %32, i32 %36)
  %38 = load i32, i32* @PCC_MWEAR_1_Hi, align 4
  %39 = load i64, i64* %5, align 8
  %40 = lshr i64 %39, 20
  %41 = and i64 %40, 63
  %42 = trunc i64 %41 to i32
  %43 = call i32 @setpcc(i32 %38, i32 %42)
  %44 = load i32, i32* @PCC_MWAOR_1_Lo, align 4
  %45 = load i64, i64* %3, align 8
  %46 = sub i64 0, %45
  %47 = lshr i64 %46, 12
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i32
  %50 = call i32 @setpcc(i32 %44, i32 %49)
  %51 = load i32, i32* @PCC_MWAOR_1_Hi, align 4
  %52 = load i64, i64* %3, align 8
  %53 = sub i64 0, %52
  %54 = lshr i64 %53, 20
  %55 = and i64 %54, 63
  %56 = trunc i64 %55 to i32
  %57 = call i32 @setpcc(i32 %51, i32 %56)
  %58 = load i32, i32* @CSC_MMSWAR, align 4
  %59 = load i32, i32* @CSC_MMSWAR, align 4
  %60 = call i32 @getcsc(i32 %59)
  %61 = and i32 %60, -18
  %62 = call i32 @setcsc(i32 %58, i32 %61)
  %63 = load i32, i32* @CSC_MMSWDSR, align 4
  %64 = load i32, i32* @CSC_MMSWDSR, align 4
  %65 = call i32 @getcsc(i32 %64)
  %66 = and i32 %65, -4
  %67 = call i32 @setcsc(i32 %63, i32 %66)
  %68 = load i32, i32* @PCC_AWER_B, align 4
  %69 = load i32, i32* @PCC_AWER_B, align 4
  %70 = call i32 @getpcc(i32 %69)
  %71 = or i32 %70, 2
  %72 = call i32 @setpcc(i32 %68, i32 %71)
  %73 = load i32, i32* @CSC_CR, align 4
  %74 = load i32, i32* @CSC_CR, align 4
  %75 = call i32 @getcsc(i32 %74)
  %76 = and i32 %75, -3
  %77 = call i32 @setcsc(i32 %73, i32 %76)
  ret void
}

declare dso_local i32 @setcsc(i32, i32) #1

declare dso_local i32 @getcsc(i32) #1

declare dso_local i32 @setpcc(i32, i32) #1

declare dso_local i32 @getpcc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
