; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_scan.c_ssb_iounmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_scan.c_ssb_iounmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_iounmap(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %14 [
    i32 128, label %6
    i32 130, label %6
    i32 131, label %11
    i32 129, label %13
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @iounmap(i32* %9)
  br label %14

11:                                               ; preds = %1
  %12 = call i32 @SSB_BUG_ON(i32 1)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13, %11, %6
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %16 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @SSB_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
