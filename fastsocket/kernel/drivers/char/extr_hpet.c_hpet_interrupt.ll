; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_dev = type { i32, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hpet_dev* }

@HPET_SHARED_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@hpet_lock = common dso_local global i32 0, align 4
@HPET_IE = common dso_local global i32 0, align 4
@HPET_PERIODIC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hpet_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpet_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hpet_dev*
  store %struct.hpet_dev* %11, %struct.hpet_dev** %6, align 8
  %12 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %13 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %14 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %13, i32 0, i32 7
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.hpet_dev*, %struct.hpet_dev** %16, align 8
  %18 = ptrtoint %struct.hpet_dev* %12 to i64
  %19 = ptrtoint %struct.hpet_dev* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 56
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HPET_SHARED_IRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i64 @readl(i32* %36)
  %38 = and i64 %32, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %99

42:                                               ; preds = %31, %2
  %43 = call i32 @spin_lock(i32* @hpet_lock)
  %44 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %49 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @HPET_IE, align 4
  %52 = load i32, i32* @HPET_PERIODIC, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @HPET_IE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %42
  %58 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %62 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %61, i32 0, i32 5
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i64 @read_counter(i32* %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %70 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %69, i32 0, i32 5
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @write_counter(i64 %68, i32* %72)
  br label %74

74:                                               ; preds = %57, %42
  %75 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %76 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HPET_SHARED_IRQ, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %84 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @writel(i64 %82, i32* %86)
  br label %88

88:                                               ; preds = %81, %74
  %89 = call i32 @spin_unlock(i32* @hpet_lock)
  %90 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %91 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %90, i32 0, i32 3
  %92 = call i32 @wake_up_interruptible(i32* %91)
  %93 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %94 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %93, i32 0, i32 2
  %95 = load i32, i32* @SIGIO, align 4
  %96 = load i32, i32* @POLL_IN, align 4
  %97 = call i32 @kill_fasync(i32* %94, i32 %95, i32 %96)
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %88, %40
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @read_counter(i32*) #1

declare dso_local i32 @write_counter(i64, i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
