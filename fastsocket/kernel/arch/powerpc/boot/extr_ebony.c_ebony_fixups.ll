; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ebony.c_ebony_fixups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ebony.c_ebony_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@ebony_mac0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@ebony_mac1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"/plb/opb/ebc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ebony_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebony_fixups() #0 {
  %1 = alloca i64, align 8
  store i64 33000000, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @ibm440gp_fixup_clocks(i64 %2, i32 11059200)
  %4 = call i32 (...) @ibm4xx_sdram_fixup_memsize()
  %5 = load i32, i32* @ebony_mac0, align 4
  %6 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @ebony_mac1, align 4
  %8 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 @ibm4xx_fixup_ebc_ranges(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (...) @ebony_flashsel_fixup()
  ret void
}

declare dso_local i32 @ibm440gp_fixup_clocks(i64, i32) #1

declare dso_local i32 @ibm4xx_sdram_fixup_memsize(...) #1

declare dso_local i32 @dt_fixup_mac_address_by_alias(i8*, i32) #1

declare dso_local i32 @ibm4xx_fixup_ebc_ranges(i8*) #1

declare dso_local i32 @ebony_flashsel_fixup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
