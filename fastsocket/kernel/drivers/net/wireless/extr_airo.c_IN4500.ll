; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_IN4500.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_IN4500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@FLAG_MPI = common dso_local global i32 0, align 4
@do8bitIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32)* @IN4500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IN4500(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @FLAG_MPI, align 4
  %7 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %8 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @do8bitIO, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %19 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call zeroext i16 @inw(i64 %25)
  store i16 %26, i16* %5, align 2
  br label %53

27:                                               ; preds = %14
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call zeroext i16 @inb(i64 %35)
  store i16 %36, i16* %5, align 2
  %37 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %38 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 1
  %46 = call zeroext i16 @inb(i64 %45)
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %5, align 2
  br label %53

53:                                               ; preds = %27, %17
  %54 = load i16, i16* %5, align 2
  %55 = zext i16 %54 to i32
  ret i32 %55
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local zeroext i16 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
