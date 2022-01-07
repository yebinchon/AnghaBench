; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_gettune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_gettune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cadet*)* @cadet_gettune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_gettune(%struct.cadet* %0) #0 {
  %2 = alloca %struct.cadet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cadet*, %struct.cadet** %2, align 8
  %7 = getelementptr inbounds %struct.cadet, %struct.cadet* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.cadet*, %struct.cadet** %2, align 8
  %10 = getelementptr inbounds %struct.cadet, %struct.cadet* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @outb(i32 7, i64 %11)
  %13 = load %struct.cadet*, %struct.cadet** %2, align 8
  %14 = getelementptr inbounds %struct.cadet, %struct.cadet* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @inb(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.cadet*, %struct.cadet** %2, align 8
  %19 = getelementptr inbounds %struct.cadet, %struct.cadet* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @outb(i32 0, i64 %21)
  %23 = load %struct.cadet*, %struct.cadet** %2, align 8
  %24 = getelementptr inbounds %struct.cadet, %struct.cadet* %23, i32 0, i32 0
  store i32 65535, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %62, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 25
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 1
  %31 = load %struct.cadet*, %struct.cadet** %2, align 8
  %32 = getelementptr inbounds %struct.cadet, %struct.cadet* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @inb(i64 %34)
  %36 = ashr i32 %35, 7
  %37 = and i32 %36, 1
  %38 = or i32 %30, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 24
  br i1 %40, label %41, label %61

41:                                               ; preds = %28
  %42 = load %struct.cadet*, %struct.cadet** %2, align 8
  %43 = getelementptr inbounds %struct.cadet, %struct.cadet* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i32 @outb(i32 1, i64 %45)
  %47 = load %struct.cadet*, %struct.cadet** %2, align 8
  %48 = getelementptr inbounds %struct.cadet, %struct.cadet* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @inb(i64 %50)
  %52 = load %struct.cadet*, %struct.cadet** %2, align 8
  %53 = getelementptr inbounds %struct.cadet, %struct.cadet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.cadet*, %struct.cadet** %2, align 8
  %57 = getelementptr inbounds %struct.cadet, %struct.cadet* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @outb(i32 0, i64 %59)
  br label %61

61:                                               ; preds = %41, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.cadet*, %struct.cadet** %2, align 8
  %68 = getelementptr inbounds %struct.cadet, %struct.cadet* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 @outb(i32 %66, i64 %70)
  %72 = load %struct.cadet*, %struct.cadet** %2, align 8
  %73 = getelementptr inbounds %struct.cadet, %struct.cadet* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
