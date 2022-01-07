; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_cache_ring_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_cache_ring_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__**, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_cache_ring_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_cache_ring_register(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %45 [
    i32 133, label %14
    i32 134, label %44
    i32 132, label %44
    i32 129, label %44
    i32 128, label %44
    i32 131, label %44
    i32 130, label %44
  ]

14:                                               ; preds = %1
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @Q_IDX_82576(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 4
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %33, i64 %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i64 %30, i64* %38, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %14
  br label %44

44:                                               ; preds = %1, %1, %1, %1, %1, %1, %43
  br label %45

45:                                               ; preds = %1, %44
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 4
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %56, i64* %64, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %83, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %80, i32* %88, align 4
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %69

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92
  ret void
}

declare dso_local i64 @Q_IDX_82576(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
