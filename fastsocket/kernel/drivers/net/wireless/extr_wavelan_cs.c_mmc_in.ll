; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_mmc_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_mmc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASR_MMI_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mmc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_in(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = icmp slt i32 %7, 100
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @HASR(i32 %11)
  %13 = call i32 @inb(i32 %12)
  %14 = load i32, i32* @HASR_MMI_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i1 [ false, %6 ], [ %16, %10 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @udelay(i32 10)
  br label %6

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @MMR(i32 %24)
  %26 = call i32 @outb(i32 %23, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @MMD(i32 %27)
  %29 = call i32 @outb(i32 0, i32 %28)
  br label %30

30:                                               ; preds = %43, %21
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = icmp slt i32 %31, 100
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @HASR(i32 %35)
  %37 = call i32 @inb(i32 %36)
  %38 = load i32, i32* @HASR_MMI_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i1 [ false, %30 ], [ %40, %34 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 @udelay(i32 10)
  br label %30

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @MMD(i32 %46)
  %48 = call i32 @inb(i32 %47)
  ret i32 %48
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @HASR(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @MMR(i32) #1

declare dso_local i32 @MMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
