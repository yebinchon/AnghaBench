; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32 }

@WL3501_BLKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*, i32*, i32)* @wl3501_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_receive(%struct.wl3501_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wl3501_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 12
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %16 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 2
  %19 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %14, i32 %18, i32* %7, i32 4)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @WL3501_BLKSZ, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %3
  %27 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %28 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %29 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @WL3501_BLKSZ, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %27, i32 %33, i32* %34, i32 %38)
  %40 = load i32, i32* @WL3501_BLKSZ, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @WL3501_BLKSZ, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %9, align 8
  br label %63

52:                                               ; preds = %3
  %53 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %54 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %55 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %53, i32 %59, i32* %60, i32 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %52, %26
  br label %64

64:                                               ; preds = %101, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @WL3501_BLKSZ, align 4
  %70 = sub nsw i32 %69, 5
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 5
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @WL3501_BLKSZ, align 4
  %78 = sub nsw i32 %77, 5
  %79 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %73, i32 %75, i32* %76, i32 %78)
  %80 = load i32, i32* @WL3501_BLKSZ, align 4
  %81 = sub nsw i32 %80, 5
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @WL3501_BLKSZ, align 4
  %85 = sub nsw i32 %84, 5
  %86 = load i32*, i32** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %9, align 8
  %89 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 2
  %92 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %89, i32 %91, i32* %8, i32 4)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %7, align 4
  br label %101

94:                                               ; preds = %67
  %95 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 5
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %95, i32 %97, i32* %98, i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %94, %72
  br label %64

102:                                              ; preds = %64
  ret i32 0
}

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
