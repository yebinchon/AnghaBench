; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USR1 = common dso_local global i64 0, align 8
@USR1_RRDY = common dso_local global i32 0, align 4
@USR1_TRDY = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i64 0, align 8
@UCR1_TXMPTYEN = common dso_local global i32 0, align 4
@USR1_RTSD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %5, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USR1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @USR1_RRDY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @imx_rxint(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @USR1_TRDY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %31 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UCR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* @UCR1_TXMPTYEN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @imx_txint(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %29, %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @USR1_RTSD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @imx_rtsint(i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @imx_rxint(i32, i8*) #1

declare dso_local i32 @imx_txint(i32, i8*) #1

declare dso_local i32 @imx_rtsint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
