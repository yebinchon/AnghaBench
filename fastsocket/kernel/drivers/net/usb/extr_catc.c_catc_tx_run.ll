; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_tx_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_tx_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catc = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"submit(tx_urb), status %d\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.catc*)* @catc_tx_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catc_tx_run(%struct.catc* %0) #0 {
  %2 = alloca %struct.catc*, align 8
  %3 = alloca i32, align 4
  store %struct.catc* %0, %struct.catc** %2, align 8
  %4 = load %struct.catc*, %struct.catc** %2, align 8
  %5 = getelementptr inbounds %struct.catc, %struct.catc* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.catc*, %struct.catc** %2, align 8
  %10 = getelementptr inbounds %struct.catc, %struct.catc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 63
  %13 = and i32 %12, -64
  %14 = load %struct.catc*, %struct.catc** %2, align 8
  %15 = getelementptr inbounds %struct.catc, %struct.catc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.catc*, %struct.catc** %2, align 8
  %18 = getelementptr inbounds %struct.catc, %struct.catc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.catc*, %struct.catc** %2, align 8
  %21 = getelementptr inbounds %struct.catc, %struct.catc* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.catc*, %struct.catc** %2, align 8
  %25 = getelementptr inbounds %struct.catc, %struct.catc* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.catc*, %struct.catc** %2, align 8
  %28 = getelementptr inbounds %struct.catc, %struct.catc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.catc*, %struct.catc** %2, align 8
  %33 = getelementptr inbounds %struct.catc, %struct.catc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.catc*, %struct.catc** %2, align 8
  %37 = getelementptr inbounds %struct.catc, %struct.catc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.catc*, %struct.catc** %2, align 8
  %40 = getelementptr inbounds %struct.catc, %struct.catc* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.catc*, %struct.catc** %2, align 8
  %44 = getelementptr inbounds %struct.catc, %struct.catc* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32 @usb_submit_urb(%struct.TYPE_4__* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %16
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %16
  %53 = load %struct.catc*, %struct.catc** %2, align 8
  %54 = getelementptr inbounds %struct.catc, %struct.catc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load %struct.catc*, %struct.catc** %2, align 8
  %61 = getelementptr inbounds %struct.catc, %struct.catc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.catc*, %struct.catc** %2, align 8
  %63 = getelementptr inbounds %struct.catc, %struct.catc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.catc*, %struct.catc** %2, align 8
  %66 = getelementptr inbounds %struct.catc, %struct.catc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
