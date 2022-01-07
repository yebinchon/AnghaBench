; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_calc_degraded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_calc_degraded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.md_rdev = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r10conf*)* @calc_degraded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_degraded(%struct.r10conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  %9 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %13 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %10
  %18 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.md_rdev* @rcu_dereference(i32 %25)
  store %struct.md_rdev* %26, %struct.md_rdev** %7, align 8
  %27 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %28 = icmp ne %struct.md_rdev* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i32, i32* @Faulty, align 4
  %31 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* @In_sync, align 4
  %40 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %10
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %55 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %59 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %129

65:                                               ; preds = %52
  %66 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %117, %65
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %70 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %67
  %75 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %76 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.md_rdev* @rcu_dereference(i32 %82)
  store %struct.md_rdev* %83, %struct.md_rdev** %8, align 8
  %84 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %85 = icmp ne %struct.md_rdev* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %74
  %87 = load i32, i32* @Faulty, align 4
  %88 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %74
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %116

95:                                               ; preds = %86
  %96 = load i32, i32* @In_sync, align 4
  %97 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %98 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %97, i32 0, i32 0
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %95
  %102 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %103 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %107 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %101
  br label %115

115:                                              ; preds = %114, %95
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %67

120:                                              ; preds = %67
  %121 = call i32 (...) @rcu_read_unlock()
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %125, %63
  %130 = load i32, i32* %2, align 4
  ret i32 %130
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
