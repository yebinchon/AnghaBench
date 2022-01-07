; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_swizzle_abort_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_swizzle_abort_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @swizzle_abort_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swizzle_abort_tag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [8 x i32], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @memcpy(i32* %4, i32* %5, i32 8)
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %36 = load i32, i32* %35, align 16
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
