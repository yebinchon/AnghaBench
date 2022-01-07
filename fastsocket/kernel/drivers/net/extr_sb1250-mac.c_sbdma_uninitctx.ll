; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_uninitctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_uninitctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmacdma = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmacdma*)* @sbdma_uninitctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbdma_uninitctx(%struct.sbmacdma* %0) #0 {
  %2 = alloca %struct.sbmacdma*, align 8
  store %struct.sbmacdma* %0, %struct.sbmacdma** %2, align 8
  %3 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %4 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %9 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kfree(i32* %10)
  %12 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %13 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %15 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %18 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %23 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %27 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
