; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_bt8xx_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dvb_bt8xx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_bt8xx_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dvb_bt8xx_card*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.dvb_bt8xx_card*
  store %struct.dvb_bt8xx_card* %5, %struct.dvb_bt8xx_card** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %6
  %19 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 (i32*, i32*, i64)* @dvb_dmx_swfilter_204, i32 (i32*, i32*, i64)* @dvb_dmx_swfilter
  %27 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %27, i32 0, i32 1
  %29 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 %38, %43
  %45 = getelementptr inbounds i32, i32* %33, i64 %44
  %46 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 %26(i32* %28, i32* %45, i64 %50)
  %52 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  %58 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = urem i64 %57, %63
  %65 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %64, i64* %68, align 8
  br label %6

69:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter_204(i32*, i32*, i64) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
