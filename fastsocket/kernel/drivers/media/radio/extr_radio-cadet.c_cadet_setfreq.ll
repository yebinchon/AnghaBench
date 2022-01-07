; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-cadet.c_cadet_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, i32, i64, i32, i64 }

@sigtable = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*, i32)* @cadet_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_setfreq(%struct.cadet* %0, i32 %1) #0 {
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.cadet*, %struct.cadet** %3, align 8
  %11 = getelementptr inbounds %struct.cadet, %struct.cadet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  store i32 102400, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %15, 1000
  %17 = udiv i32 %16, 16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 10700
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %38, %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 14
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.cadet*, %struct.cadet** %3, align 8
  %44 = getelementptr inbounds %struct.cadet, %struct.cadet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = udiv i32 %48, 16
  %50 = add i32 %49, 2010
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, 1048576
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.cadet*, %struct.cadet** %3, align 8
  %55 = getelementptr inbounds %struct.cadet, %struct.cadet* %54, i32 0, i32 3
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.cadet*, %struct.cadet** %3, align 8
  %58 = getelementptr inbounds %struct.cadet, %struct.cadet* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @outb(i32 7, i64 %59)
  %61 = load %struct.cadet*, %struct.cadet** %3, align 8
  %62 = getelementptr inbounds %struct.cadet, %struct.cadet* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @inb(i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.cadet*, %struct.cadet** %3, align 8
  %67 = getelementptr inbounds %struct.cadet, %struct.cadet* %66, i32 0, i32 3
  %68 = call i32 @mutex_unlock(i32* %67)
  store i32 3, i32* %7, align 4
  br label %69

69:                                               ; preds = %118, %53
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %121

72:                                               ; preds = %69
  %73 = load %struct.cadet*, %struct.cadet** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %74, %76
  %78 = call i32 @cadet_settune(%struct.cadet* %73, i32 %77)
  %79 = load %struct.cadet*, %struct.cadet** %3, align 8
  %80 = getelementptr inbounds %struct.cadet, %struct.cadet* %79, i32 0, i32 3
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.cadet*, %struct.cadet** %3, align 8
  %83 = getelementptr inbounds %struct.cadet, %struct.cadet* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @outb(i32 7, i64 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.cadet*, %struct.cadet** %3, align 8
  %88 = getelementptr inbounds %struct.cadet, %struct.cadet* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @outb(i32 %86, i64 %90)
  %92 = load %struct.cadet*, %struct.cadet** %3, align 8
  %93 = getelementptr inbounds %struct.cadet, %struct.cadet* %92, i32 0, i32 3
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = call i32 @msleep(i32 100)
  %96 = load %struct.cadet*, %struct.cadet** %3, align 8
  %97 = call i32 @cadet_gettune(%struct.cadet* %96)
  %98 = load %struct.cadet*, %struct.cadet** %3, align 8
  %99 = getelementptr inbounds %struct.cadet, %struct.cadet* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %72
  %104 = load i64**, i64*** @sigtable, align 8
  %105 = load %struct.cadet*, %struct.cadet** %3, align 8
  %106 = getelementptr inbounds %struct.cadet, %struct.cadet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64*, i64** %104, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.cadet*, %struct.cadet** %3, align 8
  %116 = getelementptr inbounds %struct.cadet, %struct.cadet* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %124

117:                                              ; preds = %72
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  br label %69

121:                                              ; preds = %69
  %122 = load %struct.cadet*, %struct.cadet** %3, align 8
  %123 = getelementptr inbounds %struct.cadet, %struct.cadet* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %103
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cadet_settune(%struct.cadet*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cadet_gettune(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
