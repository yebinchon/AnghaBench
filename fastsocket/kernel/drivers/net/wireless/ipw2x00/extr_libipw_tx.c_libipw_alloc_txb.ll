; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_alloc_txb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_alloc_txb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_txb = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.libipw_txb* (i32, i32, i32, i32)* @libipw_alloc_txb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.libipw_txb* @libipw_alloc_txb(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.libipw_txb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.libipw_txb*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.libipw_txb* @kmalloc(i32 %16, i32 %17)
  store %struct.libipw_txb* %18, %struct.libipw_txb** %10, align 8
  %19 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %20 = icmp ne %struct.libipw_txb* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.libipw_txb* null, %struct.libipw_txb** %5, align 8
  br label %101

22:                                               ; preds = %4
  %23 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %24 = call i32 @memset(%struct.libipw_txb* %23, i32 0, i32 16)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %27 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %30 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %72, %22
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @__dev_alloc_skb(i32 %38, i32 %39)
  %41 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %42 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %48 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %35
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %11, align 4
  br label %75

62:                                               ; preds = %35
  %63 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %64 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @skb_reserve(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %31

75:                                               ; preds = %59, %31
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i32, i32* %11, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %88 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %11, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_kfree_skb_any(i32 %94)
  br label %83

96:                                               ; preds = %83
  %97 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  %98 = call i32 @kfree(%struct.libipw_txb* %97)
  store %struct.libipw_txb* null, %struct.libipw_txb** %5, align 8
  br label %101

99:                                               ; preds = %75
  %100 = load %struct.libipw_txb*, %struct.libipw_txb** %10, align 8
  store %struct.libipw_txb* %100, %struct.libipw_txb** %5, align 8
  br label %101

101:                                              ; preds = %99, %96, %21
  %102 = load %struct.libipw_txb*, %struct.libipw_txb** %5, align 8
  ret %struct.libipw_txb* %102
}

declare dso_local %struct.libipw_txb* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.libipw_txb*, i32, i32) #1

declare dso_local i32 @__dev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @kfree(%struct.libipw_txb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
