; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_count_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_count_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @count_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @count_ports(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 6, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %3, %60
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 3
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %31 [
    i32 131, label %22
    i32 128, label %26
    i32 130, label %26
    i32 129, label %30
  ]

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %16, %16, %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %16, %26
  br label %31

31:                                               ; preds = %16, %30
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SELF_ID_MORE_PACKETS(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32* %42, i32** %4, align 8
  br label %61

43:                                               ; preds = %36
  store i32 16, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @SELF_ID_EXTENDED(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @SELF_ID_EXT_SEQUENCE(i32 %53)
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %43
  store i32* null, i32** %4, align 8
  br label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %31
  br label %16

61:                                               ; preds = %56, %40
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @SELF_ID_MORE_PACKETS(i32) #1

declare dso_local i32 @SELF_ID_EXTENDED(i32) #1

declare dso_local i32 @SELF_ID_EXT_SEQUENCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
