; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_sethdraddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_sethdraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_LAPD_NET = common dso_local global i32 0, align 4
@FLG_ORIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, i32*, i32)* @sethdraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sethdraddr(%struct.layer2* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.layer2*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @FLG_LAPD, align 4
  %13 = load %struct.layer2*, %struct.layer2** %5, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 3
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i32, i32* @FLG_LAPD_NET, align 4
  %19 = load %struct.layer2*, %struct.layer2** %5, align 8
  %20 = getelementptr inbounds %struct.layer2, %struct.layer2* %19, i32 0, i32 3
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.layer2*, %struct.layer2** %5, align 8
  %30 = getelementptr inbounds %struct.layer2, %struct.layer2* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 0
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %40 = load %struct.layer2*, %struct.layer2** %5, align 8
  %41 = getelementptr inbounds %struct.layer2, %struct.layer2* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 1
  %44 = or i32 %43, 1
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  store i32 2, i32* %4, align 4
  br label %76

47:                                               ; preds = %3
  %48 = load i32, i32* @FLG_ORIG, align 4
  %49 = load %struct.layer2*, %struct.layer2** %5, align 8
  %50 = getelementptr inbounds %struct.layer2, %struct.layer2* %49, i32 0, i32 3
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.layer2*, %struct.layer2** %5, align 8
  %63 = getelementptr inbounds %struct.layer2, %struct.layer2* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %75

68:                                               ; preds = %58
  %69 = load %struct.layer2*, %struct.layer2** %5, align 8
  %70 = getelementptr inbounds %struct.layer2, %struct.layer2* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %68, %61
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
