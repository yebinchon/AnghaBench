; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.c___vxge_hw_channel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i64, i64, i64, i64, i64, i64, i32**, i32**, i32*, i32* }

@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vxge_hw_channel_reset(%struct.__vxge_hw_channel* %0) #0 {
  %2 = alloca %struct.__vxge_hw_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.__vxge_hw_channel* %0, %struct.__vxge_hw_channel** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %50, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %7 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %53

10:                                               ; preds = %4
  %11 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %12 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %11, i32 0, i32 9
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %17 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %22, i32 0, i32 9
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  br label %27

27:                                               ; preds = %15, %10
  %28 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %29 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %28, i32 0, i32 7
  %30 = load i32**, i32*** %29, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %34 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %33, i32 0, i32 7
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %40 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %39, i32 0, i32 6
  %41 = load i32**, i32*** %40, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %45 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %44, i32 0, i32 6
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %4

53:                                               ; preds = %4
  %54 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %58 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %60 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %65 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %67 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %69 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @VXGE_HW_OK, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
