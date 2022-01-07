; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_v3020_set_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-v3020.c_v3020_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3020 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.v3020*, i8)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3020*, i8, i8)* @v3020_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3020_set_reg(%struct.v3020* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.v3020*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.v3020* %0, %struct.v3020** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %5, align 1
  store i8 %9, i8* %8, align 1
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.v3020*, %struct.v3020** %4, align 8
  %15 = getelementptr inbounds %struct.v3020, %struct.v3020* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.v3020*, i8)*, i32 (%struct.v3020*, i8)** %17, align 8
  %19 = load %struct.v3020*, %struct.v3020** %4, align 8
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 1
  %23 = trunc i32 %22 to i8
  %24 = call i32 %18(%struct.v3020* %19, i8 zeroext %23)
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = call i32 @udelay(i32 1)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @V3020_IS_COMMAND(i8 zeroext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.v3020*, %struct.v3020** %4, align 8
  %43 = getelementptr inbounds %struct.v3020, %struct.v3020* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.v3020*, i8)*, i32 (%struct.v3020*, i8)** %45, align 8
  %47 = load %struct.v3020*, %struct.v3020** %4, align 8
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = call i32 %46(%struct.v3020* %47, i8 zeroext %51)
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  %57 = call i32 @udelay(i32 1)
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %33
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @V3020_IS_COMMAND(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
