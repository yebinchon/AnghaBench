; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-devsets.c_ide_do_devset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-devsets.c_ide_do_devset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 (i32*, i32)*, i32, i32* }

@ide_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_do_devset(i32* %0, %struct.request* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32*, i32)*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  store i32 (i32*, i32)* %9, i32 (i32*, i32)** %6, align 8
  %10 = load i32 (i32*, i32)*, i32 (i32*, i32)** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %10(i32* %11, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i32 @blk_rq_bytes(%struct.request* %27)
  %29 = call i32 @ide_complete_rq(i32* %25, i32 %26, i32 %28)
  %30 = load i32, i32* @ide_stopped, align 4
  ret i32 %30
}

declare dso_local i32 @ide_complete_rq(i32*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
