; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_run_bist_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_run_bist_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_MEM_BIST = common dso_local global i32 0, align 4
@REG_SPI4_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @run_bist_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bist_all(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @REG_MEM_BIST, align 4
  %7 = call i32 @vsc_write(i32* %5, i32 %6, i32 5)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @REG_MEM_BIST, align 4
  %10 = call i32 @vsc_read(i32* %8, i32 %9, i32* %4)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @REG_DEV_SETUP(i32 %16)
  %18 = call i32 @vsc_write(i32* %15, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = call i32 @udelay(i32 300)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @REG_SPI4_MISC, align 4
  %26 = call i32 @vsc_write(i32* %24, i32 %25, i32 263177)
  %27 = call i32 @udelay(i32 300)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @run_bist(i32* %28, i32 13)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @run_bist(i32* %30, i32 14)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @run_bist(i32* %32, i32 20)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @run_bist(i32* %34, i32 21)
  %36 = call i32 @mdelay(i32 200)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @check_bist(i32* %37, i32 13)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @check_bist(i32* %39, i32 14)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @check_bist(i32* %41, i32 20)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @check_bist(i32* %43, i32 21)
  %45 = call i32 @udelay(i32 100)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @enable_mem(i32* %46, i32 13)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @enable_mem(i32* %48, i32 14)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @enable_mem(i32* %50, i32 20)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @enable_mem(i32* %52, i32 21)
  %54 = call i32 @udelay(i32 300)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* @REG_SPI4_MISC, align 4
  %57 = call i32 @vsc_write(i32* %55, i32 %56, i32 1610875904)
  %58 = call i32 @udelay(i32 300)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %67, %22
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @REG_DEV_SETUP(i32 %64)
  %66 = call i32 @vsc_write(i32* %63, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %59

70:                                               ; preds = %59
  %71 = call i32 @udelay(i32 300)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @REG_MEM_BIST, align 4
  %74 = call i32 @vsc_write(i32* %72, i32 %73, i32 0)
  %75 = call i32 @mdelay(i32 10)
  ret i32 0
}

declare dso_local i32 @vsc_write(i32*, i32, i32) #1

declare dso_local i32 @vsc_read(i32*, i32, i32*) #1

declare dso_local i32 @REG_DEV_SETUP(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @run_bist(i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @check_bist(i32*, i32) #1

declare dso_local i32 @enable_mem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
