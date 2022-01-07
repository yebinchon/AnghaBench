; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_ide_special_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_ide_special_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.request*)* @ide_special_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_special_rq(i32* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %24 [
    i32 129, label %13
    i32 128, label %13
    i32 131, label %17
    i32 130, label %21
  ]

13:                                               ; preds = %2, %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = call i32 @ide_do_park_unpark(i32* %14, %struct.request* %15)
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = call i32 @ide_do_devset(i32* %18, %struct.request* %19)
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ide_do_reset(i32* %22)
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %13, %17, %21, %24
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ide_do_park_unpark(i32*, %struct.request*) #1

declare dso_local i32 @ide_do_devset(i32*, %struct.request*) #1

declare dso_local i32 @ide_do_reset(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
