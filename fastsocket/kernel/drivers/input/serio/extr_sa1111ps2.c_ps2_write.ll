; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_sa1111ps2.c_ps2_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_sa1111ps2.c_ps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.ps2if* }
%struct.ps2if = type { i32, i32, i8*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@SA1111_PS2STAT = common dso_local global i64 0, align 8
@PS2STAT_TXE = common dso_local global i32 0, align 4
@SA1111_PS2DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @ps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ps2if*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.serio*, %struct.serio** %3, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load %struct.ps2if*, %struct.ps2if** %9, align 8
  store %struct.ps2if* %10, %struct.ps2if** %5, align 8
  %11 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %12 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %11, i32 0, i32 3
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %16 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SA1111_PS2STAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @sa1111_readl(i64 %19)
  %21 = load i32, i32* @PS2STAT_TXE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i8, i8* %4, align 1
  %26 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %27 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SA1111_PS2DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @sa1111_writel(i8 zeroext %25, i64 %30)
  br label %76

32:                                               ; preds = %2
  %33 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %34 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %37 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %42 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @enable_irq(i32 %47)
  br label %49

49:                                               ; preds = %40, %32
  %50 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %51 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 7
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %59 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %49
  %63 = load i8, i8* %4, align 1
  %64 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %65 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %68 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %63, i8* %71, align 1
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %74 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %62, %49
  br label %76

76:                                               ; preds = %75, %24
  %77 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %78 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %77, i32 0, i32 3
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sa1111_readl(i64) #1

declare dso_local i32 @sa1111_writel(i8 zeroext, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
