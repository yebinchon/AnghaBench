; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_dma.c_dma_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pub = type { i32 }
%struct.dma_info = type { i32, i32, %struct.dma_info*, %struct.dma_info*, i32, i64, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_detach(%struct.dma_pub* %0) #0 {
  %2 = alloca %struct.dma_pub*, align 8
  %3 = alloca %struct.dma_info*, align 8
  store %struct.dma_pub* %0, %struct.dma_pub** %2, align 8
  %4 = load %struct.dma_pub*, %struct.dma_pub** %2, align 8
  %5 = bitcast %struct.dma_pub* %4 to %struct.dma_info*
  store %struct.dma_info* %5, %struct.dma_info** %3, align 8
  %6 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %7 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %10 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @brcms_dbg_dma(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %14 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %19 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %22 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %25 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %29 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %35 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(i32 %20, i32 %23, i32* %33, i32 %36)
  br label %38

38:                                               ; preds = %17, %1
  %39 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %40 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %45 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %48 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %51 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %55 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %61 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_free_coherent(i32 %46, i32 %49, i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %43, %38
  %65 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %66 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %65, i32 0, i32 3
  %67 = load %struct.dma_info*, %struct.dma_info** %66, align 8
  %68 = call i32 @kfree(%struct.dma_info* %67)
  %69 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %70 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %69, i32 0, i32 2
  %71 = load %struct.dma_info*, %struct.dma_info** %70, align 8
  %72 = call i32 @kfree(%struct.dma_info* %71)
  %73 = load %struct.dma_info*, %struct.dma_info** %3, align 8
  %74 = call i32 @kfree(%struct.dma_info* %73)
  ret void
}

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dma_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
