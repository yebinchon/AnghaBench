; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_settune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_settune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*, i32)* @cadet_settune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_settune(%struct.cadet* %0, i32 %1) #0 {
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cadet*, %struct.cadet** %3, align 8
  %8 = getelementptr inbounds %struct.cadet, %struct.cadet* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cadet*, %struct.cadet** %3, align 8
  %11 = getelementptr inbounds %struct.cadet, %struct.cadet* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @outb(i32 7, i64 %12)
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = lshr i32 %14, 23
  %16 = and i32 %15, 2
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 28
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cadet*, %struct.cadet** %3, align 8
  %20 = getelementptr inbounds %struct.cadet, %struct.cadet* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @outb(i32 7, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.cadet*, %struct.cadet** %3, align 8
  %25 = getelementptr inbounds %struct.cadet, %struct.cadet* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @outb(i32 %23, i64 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %61, %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 25
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.cadet*, %struct.cadet** %3, align 8
  %37 = getelementptr inbounds %struct.cadet, %struct.cadet* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @outb(i32 %35, i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 254
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cadet*, %struct.cadet** %3, align 8
  %45 = getelementptr inbounds %struct.cadet, %struct.cadet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @outb(i32 %43, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = lshr i32 %51, 23
  %53 = and i32 %52, 2
  %54 = or i32 28, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cadet*, %struct.cadet** %3, align 8
  %57 = getelementptr inbounds %struct.cadet, %struct.cadet* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @outb(i32 %55, i64 %59)
  br label %61

61:                                               ; preds = %32
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.cadet*, %struct.cadet** %3, align 8
  %66 = getelementptr inbounds %struct.cadet, %struct.cadet* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
