; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_cansend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_cansend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@FLG_PEER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*)* @cansend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cansend(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  %3 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  %4 = load i32, i32* @FLG_MOD128, align 4
  %5 = load %struct.PStack*, %struct.PStack** %2, align 8
  %6 = getelementptr inbounds %struct.PStack, %struct.PStack* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = call i64 @test_bit(i32 %4, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.PStack*, %struct.PStack** %2, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.PStack*, %struct.PStack** %2, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = srem i32 %19, 128
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.PStack*, %struct.PStack** %2, align 8
  %23 = getelementptr inbounds %struct.PStack, %struct.PStack* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.PStack*, %struct.PStack** %2, align 8
  %27 = getelementptr inbounds %struct.PStack, %struct.PStack* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %25, %29
  %31 = srem i32 %30, 8
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %10
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.PStack*, %struct.PStack** %2, align 8
  %35 = getelementptr inbounds %struct.PStack, %struct.PStack* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* @FLG_PEER_BUSY, align 4
  %41 = load %struct.PStack*, %struct.PStack** %2, align 8
  %42 = getelementptr inbounds %struct.PStack, %struct.PStack* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = call i64 @test_bit(i32 %40, i32* %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi i1 [ false, %32 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
