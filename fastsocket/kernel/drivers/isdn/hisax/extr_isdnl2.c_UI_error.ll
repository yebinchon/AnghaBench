; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_UI_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_UI_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sk_buff = type { i32*, i64 }

@FLG_ORIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, %struct.sk_buff*)* @UI_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_error(%struct.PStack* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @FLG_ORIG, align 4
  %13 = load %struct.PStack*, %struct.PStack** %4, align 8
  %14 = getelementptr inbounds %struct.PStack, %struct.PStack* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 76, i32* %3, align 4
  br label %43

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.PStack*, %struct.PStack** %4, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.PStack*, %struct.PStack** %4, align 8
  %36 = getelementptr inbounds %struct.PStack, %struct.PStack* %35, i32 0, i32 0
  %37 = call i64 @l2addrsize(%struct.TYPE_2__* %36)
  %38 = add nsw i64 %34, %37
  %39 = add nsw i64 %38, 1
  %40 = icmp sgt i64 %30, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 79, i32* %3, align 4
  br label %43

42:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @l2addrsize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
