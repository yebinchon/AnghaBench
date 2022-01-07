; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_xor_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_xor_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@XOR_SPEED_TICKS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @xor_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xor_speed(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  %8 = load i32, i32* @XOR_SPEED_TICKS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.stripe*, %struct.stripe** %2, align 8
  %10 = getelementptr inbounds %struct.stripe, %struct.stripe* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_6__* @RS(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.stripe*, %struct.stripe** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CHUNK(%struct.stripe* %21, i32 %22)
  %24 = call i32 @SetChunkUptodate(i32 %23)
  br label %16

25:                                               ; preds = %16
  %26 = load i64, i64* @jiffies, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %31, %25
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @jiffies, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %27

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %38 = load i64, i64* @jiffies, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %43, %37
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @jiffies, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = call i32 (...) @mb()
  %45 = load %struct.stripe*, %struct.stripe** %2, align 8
  %46 = load %struct.stripe*, %struct.stripe** %2, align 8
  %47 = getelementptr inbounds %struct.stripe, %struct.stripe* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @common_xor(%struct.stripe* %45, i32 %49, i32 0, i32 0)
  %51 = call i32 (...) @mb()
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = call i32 (...) @mb()
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %55
  br label %33

62:                                               ; preds = %33
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_6__* @RS(i32) #1

declare dso_local i32 @SetChunkUptodate(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @common_xor(%struct.stripe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
