; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_aux_bap_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_aux_bap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SWS0 = common dso_local global i64 0, align 8
@SWS2 = common dso_local global i64 0, align 8
@do8bitIO = common dso_local global i32 0, align 4
@DATA0 = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32*, i32, i32)* @aux_bap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_bap_read(%struct.airo_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 0
  %19 = load i64, i64* %15, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %22 = load i64, i64* @SWS0, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @IN4500(%struct.airo_info* %21, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %28 = load i64, i64* @SWS2, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @IN4500(%struct.airo_info* %27, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @aux_setup(%struct.airo_info* %33, i32 %34, i32 %35, i32* %9)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %108, %4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %109

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 1
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 1
  br label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i32 [ %53, %51 ], [ %57, %54 ]
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @do8bitIO, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %64 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DATA0, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @insw(i64 %72, i32* %76, i32 %77)
  br label %97

79:                                               ; preds = %58
  %80 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %81 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DATA0, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %16, align 4
  %95 = shl i32 %94, 1
  %96 = call i32 @insb(i64 %89, i32* %93, i32 %95)
  br label %97

97:                                               ; preds = %79, %62
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @aux_setup(%struct.airo_info* %105, i32 %106, i32 4, i32* %9)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %104, %97
  br label %40

109:                                              ; preds = %40
  %110 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %111 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %110, i32 0, i32 0
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* @SUCCESS, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i64) #1

declare dso_local i32 @aux_setup(%struct.airo_info*, i32, i32, i32*) #1

declare dso_local i32 @insw(i64, i32*, i32) #1

declare dso_local i32 @insb(i64, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
