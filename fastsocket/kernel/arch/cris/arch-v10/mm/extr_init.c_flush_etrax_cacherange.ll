; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/mm/extr_init.c_flush_etrax_cacherange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/mm/extr_init.c_flush_etrax_cacherange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@CACHED_BOOTROM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @flush_etrax_cacherange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_etrax_cacherange(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = xor i64 %8, -1
  %10 = and i64 %7, %9
  %11 = load i64, i64* @CACHED_BOOTROM, align 8
  %12 = or i64 %10, %11
  %13 = inttoptr i64 %12 to i16*
  store i16* %13, i16** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 8192
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 8192, %16 ], [ %18, %17 ]
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %24, %19
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i16*, i16** %5, align 8
  %26 = load volatile i16, i16* %25, align 2
  %27 = load i16*, i16** %5, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 16
  store i16* %28, i16** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 32
  store i32 %30, i32* %4, align 4
  br label %21

31:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
