; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_asic_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_gsc.c_gsc_asic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_asic = type { i32*, i32, i64 }

@OFFSET_IRR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s intr, mask=0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_asic_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gsc_asic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gsc_asic*
  store %struct.gsc_asic* %11, %struct.gsc_asic** %7, align 8
  %12 = load %struct.gsc_asic*, %struct.gsc_asic** %7, align 8
  %13 = getelementptr inbounds %struct.gsc_asic, %struct.gsc_asic* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OFFSET_IRR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @gsc_readl(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.gsc_asic*, %struct.gsc_asic** %7, align 8
  %24 = getelementptr inbounds %struct.gsc_asic, %struct.gsc_asic* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @DEBPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %46, %22
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @__ffs(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.gsc_asic*, %struct.gsc_asic** %7, align 8
  %32 = getelementptr inbounds %struct.gsc_asic, %struct.gsc_asic* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__do_IRQ(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %28, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @gsc_readl(i64) #1

declare dso_local i32 @DEBPRINTK(i8*, i32, i64) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @__do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
