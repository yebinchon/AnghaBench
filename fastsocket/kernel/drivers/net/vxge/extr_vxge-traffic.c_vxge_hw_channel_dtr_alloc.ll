; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i64, i64, i8**, i64, i64, i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_INF_OUT_OF_DESCRIPTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_channel_dtr_alloc(%struct.__vxge_hw_channel* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__vxge_hw_channel*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %struct.__vxge_hw_channel* %0, %struct.__vxge_hw_channel** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %8 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %9, %12
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %37, %15
  %17 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %18 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %17, i32 0, i32 2
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %21 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i8*, i8** %19, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %30 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %33 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %28
  %38 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %39 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  store i8** %40, i8*** %6, align 8
  %41 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %42 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %41, i32 0, i32 5
  %43 = load i8**, i8*** %42, align 8
  %44 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %45 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %44, i32 0, i32 2
  store i8** %43, i8*** %45, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %48 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %47, i32 0, i32 5
  store i8** %46, i8*** %48, align 8
  %49 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %50 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %53 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %55 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %58 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %60 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %65 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %16

70:                                               ; preds = %28
  %71 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %4, align 8
  %72 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %71, i32 0, i32 6
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i8**, i8*** %5, align 8
  store i8* null, i8** %77, align 8
  %78 = load i32, i32* @VXGE_HW_INF_OUT_OF_DESCRIPTORS, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
