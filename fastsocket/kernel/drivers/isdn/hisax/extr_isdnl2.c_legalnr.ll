; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_legalnr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_legalnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.Layer2 }
%struct.Layer2 = type { i32, i32, i32 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, i32)* @legalnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legalnr(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Layer2*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.PStack*, %struct.PStack** %4, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  store %struct.Layer2* %8, %struct.Layer2** %6, align 8
  %9 = load i32, i32* @FLG_MOD128, align 4
  %10 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %11 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %17 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = urem i32 %19, 128
  %21 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %22 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %25 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %23, %26
  %28 = urem i32 %27, 128
  %29 = icmp ule i32 %20, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %34 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  %37 = urem i32 %36, 8
  %38 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %39 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.Layer2*, %struct.Layer2** %6, align 8
  %42 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  %45 = urem i32 %44, 8
  %46 = icmp ule i32 %37, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %31, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
