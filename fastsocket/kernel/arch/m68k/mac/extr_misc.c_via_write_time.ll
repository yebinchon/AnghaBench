; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_write_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_via_write_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [8 x i8] }

@RTC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @via_write_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_write_time(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 85, i32* %4, align 4
  %5 = call i32 @via_pram_command(i32 53, i32* %4)
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @RTC_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = bitcast %union.anon* %3 to i64*
  store i64 %8, i64* %9, align 8
  %10 = bitcast %union.anon* %3 to [4 x i32]*
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %12 = call i32 @via_pram_command(i32 1, i32* %11)
  %13 = bitcast %union.anon* %3 to [4 x i32]*
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %15 = call i32 @via_pram_command(i32 5, i32* %14)
  %16 = bitcast %union.anon* %3 to [4 x i32]*
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %18 = call i32 @via_pram_command(i32 9, i32* %17)
  %19 = bitcast %union.anon* %3 to [4 x i32]*
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %21 = call i32 @via_pram_command(i32 13, i32* %20)
  store i32 213, i32* %4, align 4
  %22 = call i32 @via_pram_command(i32 53, i32* %4)
  ret void
}

declare dso_local i32 @via_pram_command(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
