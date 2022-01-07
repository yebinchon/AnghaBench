; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_dump_chip_signature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_dump_chip_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"mite: version = %i, type = %i, mite mode = %i, interface mode = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"mite: num channels = %i, write post fifo depth = %i, wins = %i, iowins = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_chip_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_chip_signature(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @mite_csigr_version(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @mite_csigr_type(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @mite_csigr_mmode(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @mite_csigr_imode(i32 %9)
  %11 = call i32 @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %6, i32 %8, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mite_csigr_dmac(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @mite_csigr_wpdep(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @mite_csigr_wins(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @mite_csigr_iowins(i32 %18)
  %20 = call i32 @printk(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15, i32 %17, i32 %19)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mite_csigr_version(i32) #1

declare dso_local i32 @mite_csigr_type(i32) #1

declare dso_local i32 @mite_csigr_mmode(i32) #1

declare dso_local i32 @mite_csigr_imode(i32) #1

declare dso_local i32 @mite_csigr_dmac(i32) #1

declare dso_local i32 @mite_csigr_wpdep(i32) #1

declare dso_local i32 @mite_csigr_wins(i32) #1

declare dso_local i32 @mite_csigr_iowins(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
