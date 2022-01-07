; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_read_srom_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_read_srom_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCR9 = common dso_local global i64 0, align 8
@CR9_SROM_READ = common dso_local global i32 0, align 4
@CR9_SRCS = common dso_local global i32 0, align 4
@SROM_DATA_1 = common dso_local global i32 0, align 4
@SROM_DATA_0 = common dso_local global i32 0, align 4
@CR9_SRCLK = common dso_local global i32 0, align 4
@CR9_CRDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @read_srom_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_srom_word(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @DCR9, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* @CR9_SROM_READ, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @outl(i32 %11, i64 %12)
  %14 = load i32, i32* @CR9_SROM_READ, align 4
  %15 = load i32, i32* @CR9_SRCS, align 4
  %16 = or i32 %14, %15
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @outl(i32 %16, i64 %17)
  %19 = load i32, i32* @SROM_DATA_1, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @SROM_CLK_WRITE(i32 %19, i64 %20)
  %22 = load i32, i32* @SROM_DATA_1, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @SROM_CLK_WRITE(i32 %22, i64 %23)
  %25 = load i32, i32* @SROM_DATA_0, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @SROM_CLK_WRITE(i32 %25, i64 %26)
  store i32 5, i32* %5, align 4
  br label %28

28:                                               ; preds = %46, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @SROM_DATA_1, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @SROM_DATA_0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @SROM_CLK_WRITE(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* @CR9_SROM_READ, align 4
  %51 = load i32, i32* @CR9_SRCS, align 4
  %52 = or i32 %50, %51
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @outl(i32 %52, i64 %53)
  store i32 16, i32* %5, align 4
  br label %55

55:                                               ; preds = %83, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %55
  %59 = load i32, i32* @CR9_SROM_READ, align 4
  %60 = load i32, i32* @CR9_SRCS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CR9_SRCLK, align 4
  %63 = or i32 %61, %62
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @outl(i32 %63, i64 %64)
  %66 = call i32 @udelay(i32 5)
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 %67, 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @inl(i64 %69)
  %71 = load i32, i32* @CR9_CRDOUT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = or i32 %68, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @CR9_SROM_READ, align 4
  %78 = load i32, i32* @CR9_SRCS, align 4
  %79 = or i32 %77, %78
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @outl(i32 %79, i64 %80)
  %82 = call i32 @udelay(i32 5)
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %55

86:                                               ; preds = %55
  %87 = load i32, i32* @CR9_SROM_READ, align 4
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @outl(i32 %87, i64 %88)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @SROM_CLK_WRITE(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
