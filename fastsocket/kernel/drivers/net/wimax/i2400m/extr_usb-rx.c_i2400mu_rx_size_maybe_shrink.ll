; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_size_maybe_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_size_maybe_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"RX: expected size shrank to %zu [adjusted -8] from %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"RX: expected size shrank to %zu from %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400mu*)* @i2400mu_rx_size_maybe_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400mu_rx_size_maybe_shrink(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  store i64 512, i64* %3, align 8
  %7 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %8 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %12 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 100
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %17 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %27 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %30 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %28, %32
  store i64 %33, i64* %5, align 8
  %34 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %35 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %25
  %43 = load i64, i64* %6, align 8
  %44 = urem i64 %43, 512
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 8
  store i64 %48, i64* %6, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %52 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @d_printf(i32 1, %struct.device* %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %53)
  br label %62

55:                                               ; preds = %42
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %59 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @d_printf(i32 1, %struct.device* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %66 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %68 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %70 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %74 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %62, %25
  br label %76

76:                                               ; preds = %75, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
