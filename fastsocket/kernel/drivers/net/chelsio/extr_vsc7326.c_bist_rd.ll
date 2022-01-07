; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_bist_rd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_bist_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"No bist address: 0x%x\0A\00", align 1
@REG_RAM_BIST_CMD = common dso_local global i32 0, align 4
@REG_RAM_BIST_RESULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Still in bist read: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bist read error: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @bist_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bist_rd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 13
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 14
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CH_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %20, %17, %14, %11, %3
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 16
  %30 = or i32 0, %29
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 0
  %34 = or i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @REG_RAM_BIST_CMD, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vsc_write(i32* %35, i32 %36, i32 %37)
  %39 = call i32 @udelay(i32 10)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @REG_RAM_BIST_RESULT, align 4
  %42 = call i32 @vsc_read(i32* %40, i32 %41, i32* %8)
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @CH_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %57

49:                                               ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 256
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @CH_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 255
  ret i32 %59
}

declare dso_local i32 @CH_ERR(i8*, i32) #1

declare dso_local i32 @vsc_write(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @vsc_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
