; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c__enough.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c__enough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.md_rdev = type { i32 }

@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10conf*, i32, i32)* @_enough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_enough(%struct.r10conf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %32 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = call i32 (...) @rcu_read_lock()
  br label %37

37:                                               ; preds = %85, %35
  %38 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %39 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %70, %37
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %52 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.md_rdev* @rcu_dereference(i32 %58)
  store %struct.md_rdev* %59, %struct.md_rdev** %14, align 8
  %60 = icmp ne %struct.md_rdev* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i32, i32* @In_sync, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %61, %50, %46
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = srem i32 %72, %73
  store i32 %74, i32* %13, align 4
  br label %42

75:                                               ; preds = %42
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %89

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %37, label %88

88:                                               ; preds = %85
  store i32 1, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = call i32 (...) @rcu_read_unlock()
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
