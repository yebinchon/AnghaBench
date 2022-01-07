; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_flush_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_cache-xsc3l2.c_xsc3_l2_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_WAY_PER_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xsc3_l2_flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsc3_l2_flush_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 asm "mrc p15, 1, $0, c0, c0, 1", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %5, i64* %1, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @CACHE_SET_SIZE(i64 %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CACHE_WAY_PER_SET, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 29
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 5
  %21 = or i32 %18, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  call void asm sideeffect "mcr p15, 1, $0, c7, c15, 2", "r,~{dirflag},~{fpsr},~{flags}"(i64 %23) #3, !srcloc !3
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %12

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %6
  %32 = call i32 (...) @dsb()
  ret void
}

declare dso_local i32 @CACHE_SET_SIZE(i64) #1

declare dso_local i32 @dsb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 336}
!3 = !{i32 539}
