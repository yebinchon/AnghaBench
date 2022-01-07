; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_output_slabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_output_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i64 }

@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@show_numa = common dso_local global i64 0, align 8
@show_track = common dso_local global i64 0, align 8
@validate = common dso_local global i64 0, align 8
@shrink = common dso_local global i64 0, align 8
@set_debug = common dso_local global i64 0, align 8
@show_ops = common dso_local global i64 0, align 8
@show_slab = common dso_local global i64 0, align 8
@show_report = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_slabs() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %2, %struct.slabinfo** %1, align 8
  br label %3

3:                                                ; preds = %72, %0
  %4 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %5 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %6 = load i32, i32* @slabs, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %5, i64 %7
  %9 = icmp ult %struct.slabinfo* %4, %8
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %12 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %72

16:                                               ; preds = %10
  %17 = load i64, i64* @show_numa, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %21 = call i32 @slab_numa(%struct.slabinfo* %20, i32 0)
  br label %71

22:                                               ; preds = %16
  %23 = load i64, i64* @show_track, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %27 = call i32 @show_tracking(%struct.slabinfo* %26)
  br label %70

28:                                               ; preds = %22
  %29 = load i64, i64* @validate, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %33 = call i32 @slab_validate(%struct.slabinfo* %32)
  br label %69

34:                                               ; preds = %28
  %35 = load i64, i64* @shrink, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %39 = call i32 @slab_shrink(%struct.slabinfo* %38)
  br label %68

40:                                               ; preds = %34
  %41 = load i64, i64* @set_debug, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %45 = call i32 @slab_debug(%struct.slabinfo* %44)
  br label %67

46:                                               ; preds = %40
  %47 = load i64, i64* @show_ops, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %51 = call i32 @ops(%struct.slabinfo* %50)
  br label %66

52:                                               ; preds = %46
  %53 = load i64, i64* @show_slab, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %57 = call i32 @slabcache(%struct.slabinfo* %56)
  br label %65

58:                                               ; preds = %52
  %59 = load i64, i64* @show_report, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %63 = call i32 @report(%struct.slabinfo* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %37
  br label %69

69:                                               ; preds = %68, %31
  br label %70

70:                                               ; preds = %69, %25
  br label %71

71:                                               ; preds = %70, %19
  br label %72

72:                                               ; preds = %71, %15
  %73 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %74 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %73, i32 1
  store %struct.slabinfo* %74, %struct.slabinfo** %1, align 8
  br label %3

75:                                               ; preds = %3
  ret void
}

declare dso_local i32 @slab_numa(%struct.slabinfo*, i32) #1

declare dso_local i32 @show_tracking(%struct.slabinfo*) #1

declare dso_local i32 @slab_validate(%struct.slabinfo*) #1

declare dso_local i32 @slab_shrink(%struct.slabinfo*) #1

declare dso_local i32 @slab_debug(%struct.slabinfo*) #1

declare dso_local i32 @ops(%struct.slabinfo*) #1

declare dso_local i32 @slabcache(%struct.slabinfo*) #1

declare dso_local i32 @report(%struct.slabinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
