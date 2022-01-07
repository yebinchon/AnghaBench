; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_RecvErr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_RecvErr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.strip*)* @RecvErr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RecvErr(i8* %0, %struct.strip* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.strip* %1, %struct.strip** %4, align 8
  %7 = load %struct.strip*, %struct.strip** %4, align 8
  %8 = getelementptr inbounds %struct.strip, %struct.strip* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.strip*, %struct.strip** %4, align 8
  %11 = getelementptr inbounds %struct.strip, %struct.strip* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.strip*, %struct.strip** %4, align 8
  %14 = getelementptr inbounds %struct.strip, %struct.strip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.strip*, %struct.strip** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @DumpData(i8* %18, %struct.strip* %19, i32* %20, i32* %21)
  %23 = load %struct.strip*, %struct.strip** %4, align 8
  %24 = getelementptr inbounds %struct.strip, %struct.strip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local i32 @DumpData(i8*, %struct.strip*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
