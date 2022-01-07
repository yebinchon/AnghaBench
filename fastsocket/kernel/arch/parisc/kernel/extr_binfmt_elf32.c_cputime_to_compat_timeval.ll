; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_binfmt_elf32.c_cputime_to_compat_timeval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_binfmt_elf32.c_cputime_to_compat_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_timeval = type { i64, i64 }

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.compat_timeval*)* @cputime_to_compat_timeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cputime_to_compat_timeval(i32 %0, %struct.compat_timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.compat_timeval*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.compat_timeval* %1, %struct.compat_timeval** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @cputime_to_jiffies(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = urem i64 %8, %9
  %11 = load i64, i64* @HZ, align 8
  %12 = udiv i64 1000000, %11
  %13 = mul i64 %10, %12
  %14 = load %struct.compat_timeval*, %struct.compat_timeval** %4, align 8
  %15 = getelementptr inbounds %struct.compat_timeval, %struct.compat_timeval* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = udiv i64 %16, %17
  %19 = load %struct.compat_timeval*, %struct.compat_timeval** %4, align 8
  %20 = getelementptr inbounds %struct.compat_timeval, %struct.compat_timeval* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  ret void
}

declare dso_local i64 @cputime_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
