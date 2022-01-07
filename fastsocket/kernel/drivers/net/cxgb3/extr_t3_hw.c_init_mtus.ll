; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_mtus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_mtus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*)* @init_mtus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mtus(i16* %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 88, i16* %4, align 2
  %5 = load i16*, i16** %2, align 8
  %6 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 88, i16* %6, align 2
  %7 = load i16*, i16** %2, align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 2
  store i16 256, i16* %8, align 2
  %9 = load i16*, i16** %2, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 3
  store i16 512, i16* %10, align 2
  %11 = load i16*, i16** %2, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 4
  store i16 576, i16* %12, align 2
  %13 = load i16*, i16** %2, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 5
  store i16 1024, i16* %14, align 2
  %15 = load i16*, i16** %2, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 6
  store i16 1280, i16* %16, align 2
  %17 = load i16*, i16** %2, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 7
  store i16 1492, i16* %18, align 2
  %19 = load i16*, i16** %2, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 8
  store i16 1500, i16* %20, align 2
  %21 = load i16*, i16** %2, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 9
  store i16 2002, i16* %22, align 2
  %23 = load i16*, i16** %2, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 10
  store i16 2048, i16* %24, align 2
  %25 = load i16*, i16** %2, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 11
  store i16 4096, i16* %26, align 2
  %27 = load i16*, i16** %2, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 12
  store i16 4352, i16* %28, align 2
  %29 = load i16*, i16** %2, align 8
  %30 = getelementptr inbounds i16, i16* %29, i64 13
  store i16 8192, i16* %30, align 2
  %31 = load i16*, i16** %2, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 14
  store i16 9000, i16* %32, align 2
  %33 = load i16*, i16** %2, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 15
  store i16 9600, i16* %34, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
