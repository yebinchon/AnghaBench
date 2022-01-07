; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_set_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_set_bits(%struct.wm831x* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.wm831x* %0, %struct.wm831x** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %11 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %12 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %15 = load i16, i16* %6, align 2
  %16 = call i32 @wm831x_read(%struct.wm831x* %14, i16 zeroext %15, i32 2, i16* %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %37

20:                                               ; preds = %4
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = load i16, i16* %10, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %10, align 2
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %10, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %10, align 2
  %34 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %35 = load i16, i16* %6, align 2
  %36 = call i32 @wm831x_write(%struct.wm831x* %34, i16 zeroext %35, i32 2, i16* %10)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %20, %19
  %38 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %39 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_read(%struct.wm831x*, i16 zeroext, i32, i16*) #1

declare dso_local i32 @wm831x_write(%struct.wm831x*, i16 zeroext, i32, i16*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
