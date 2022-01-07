; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_show_dtlb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_tlb.c_show_dtlb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMUCR = common dso_local global i32 0, align 4
@TLBEHI = common dso_local global i32 0, align 4
@DRP = common dso_local global i32 0, align 4
@TLBELO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%2u: %c %c %02x   %05x %05x %o  %o  %c %c %c %c\0A\00", align 1
@TLBEHI_V = common dso_local global i32 0, align 4
@G = common dso_local global i32 0, align 4
@ASID = common dso_local global i32 0, align 4
@VPN = common dso_local global i32 0, align 4
@PFN = common dso_local global i32 0, align 4
@AP = common dso_local global i32 0, align 4
@SZ = common dso_local global i32 0, align 4
@TLBELO_C = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@TLBELO_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_dtlb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dtlb_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* @MMUCR, align 4
  %12 = call i32 @sysreg_read(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @TLBEHI, align 4
  %14 = call i32 @sysreg_read(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @DRP, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SYSREG_BFINS(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MMUCR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sysreg_write(i32 %19, i32 %20)
  %22 = call i32 (...) @__builtin_tlbr()
  %23 = call i32 (...) @cpu_sync_pipeline()
  %24 = load i32, i32* @TLBEHI, align 4
  %25 = call i32 @sysreg_read(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @TLBELO, align 4
  %27 = call i32 @sysreg_read(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @TLBEHI_V, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @SYSREG_BFEXT(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 49, i32 48
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* @G, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SYSREG_BFEXT(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 49, i32 48
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* @ASID, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @SYSREG_BFEXT(i32 %43, i32 %44)
  %46 = load i32, i32* @VPN, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @SYSREG_BFEXT(i32 %46, i32 %47)
  %49 = ashr i32 %48, 2
  %50 = load i32, i32* @PFN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SYSREG_BFEXT(i32 %50, i32 %51)
  %53 = ashr i32 %52, 2
  %54 = load i32, i32* @AP, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @SYSREG_BFEXT(i32 %54, i32 %55)
  %57 = load i32, i32* @SZ, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @SYSREG_BFEXT(i32 %57, i32 %58)
  %60 = load i32, i32* @TLBELO_C, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @SYSREG_BFEXT(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 67, i32 32
  %66 = trunc i32 %65 to i8
  %67 = load i32, i32* @B, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @SYSREG_BFEXT(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 66, i32 32
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* @W, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @SYSREG_BFEXT(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 87, i32 32
  %80 = trunc i32 %79 to i8
  %81 = load i32, i32* @TLBELO_D, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @SYSREG_BFEXT(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 68, i32 32
  %87 = trunc i32 %86 to i8
  %88 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %28, i8 signext %35, i8 signext %42, i32 %45, i32 %49, i32 %53, i32 %56, i32 %59, i8 signext %66, i8 signext %73, i8 signext %80, i8 signext %87)
  %89 = load i32, i32* @MMUCR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @sysreg_write(i32 %89, i32 %90)
  %92 = load i32, i32* @TLBEHI, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @sysreg_write(i32 %92, i32 %93)
  %95 = call i32 (...) @cpu_sync_pipeline()
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @local_irq_restore(i64 %96)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sysreg_read(i32) #1

declare dso_local i32 @SYSREG_BFINS(i32, i32, i32) #1

declare dso_local i32 @sysreg_write(i32, i32) #1

declare dso_local i32 @__builtin_tlbr(...) #1

declare dso_local i32 @cpu_sync_pipeline(...) #1

declare dso_local i32 @printk(i8*, i32, i8 signext, i8 signext, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SYSREG_BFEXT(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
