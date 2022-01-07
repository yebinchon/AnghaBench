; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemtek = type { i32, i32 }

@SHORT_DELAY = common dso_local global i32 0, align 4
@GEMTEK_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gemtek*, i32)* @gemtek_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemtek_verify(%struct.gemtek* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gemtek*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gemtek* %0, %struct.gemtek** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gemtek*, %struct.gemtek** %4, align 8
  %9 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.gemtek*, %struct.gemtek** %4, align 8
  %16 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @inb_p(i32 %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %45, %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @outb_p(i32 %25, i32 %26)
  %28 = load i32, i32* @SHORT_DELAY, align 4
  %29 = call i32 @udelay(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @inb_p(i32 %30)
  %32 = load i32, i32* @GEMTEK_NS, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 5
  %37 = shl i32 1, %36
  %38 = or i32 23, %37
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.gemtek*, %struct.gemtek** %4, align 8
  %42 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %61

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 5
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @outb_p(i32 %50, i32 %51)
  %53 = load i32, i32* @SHORT_DELAY, align 4
  %54 = call i32 @udelay(i32 %53)
  %55 = load %struct.gemtek*, %struct.gemtek** %4, align 8
  %56 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.gemtek*, %struct.gemtek** %4, align 8
  %60 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %48, %40, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
