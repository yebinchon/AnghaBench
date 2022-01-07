; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_sort_slabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_sort_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i32 }

@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@sort_size = common dso_local global i64 0, align 8
@sort_active = common dso_local global i64 0, align 8
@show_inverted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_slabs() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.slabinfo, align 4
  %5 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %5, %struct.slabinfo** %1, align 8
  br label %6

6:                                                ; preds = %74, %0
  %7 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %8 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %9 = load i32, i32* @slabs, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %8, i64 %10
  %12 = icmp ult %struct.slabinfo* %7, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %6
  %14 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %15 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %14, i64 1
  store %struct.slabinfo* %15, %struct.slabinfo** %2, align 8
  br label %16

16:                                               ; preds = %70, %13
  %17 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %18 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %19 = load i32, i32* @slabs, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %18, i64 %20
  %22 = icmp ult %struct.slabinfo* %17, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %16
  %24 = load i64, i64* @sort_size, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %28 = call i64 @slab_size(%struct.slabinfo* %27)
  %29 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %30 = call i64 @slab_size(%struct.slabinfo* %29)
  %31 = icmp slt i64 %28, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %23
  %34 = load i64, i64* @sort_active, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %38 = call i64 @slab_activity(%struct.slabinfo* %37)
  %39 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %40 = call i64 @slab_activity(%struct.slabinfo* %39)
  %41 = icmp slt i64 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %33
  %44 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %45 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %48 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcasecmp(i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %36
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i64, i64* @show_inverted, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %63 = call i32 @memcpy(%struct.slabinfo* %4, %struct.slabinfo* %62, i32 4)
  %64 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %65 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %66 = call i32 @memcpy(%struct.slabinfo* %64, %struct.slabinfo* %65, i32 4)
  %67 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %68 = call i32 @memcpy(%struct.slabinfo* %67, %struct.slabinfo* %4, i32 4)
  br label %69

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %72 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %71, i32 1
  store %struct.slabinfo* %72, %struct.slabinfo** %2, align 8
  br label %16

73:                                               ; preds = %16
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %76 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %75, i32 1
  store %struct.slabinfo* %76, %struct.slabinfo** %1, align 8
  br label %6

77:                                               ; preds = %6
  ret void
}

declare dso_local i64 @slab_size(%struct.slabinfo*) #1

declare dso_local i64 @slab_activity(%struct.slabinfo*) #1

declare dso_local i32 @strcasecmp(i32, i32) #1

declare dso_local i32 @memcpy(%struct.slabinfo*, %struct.slabinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
