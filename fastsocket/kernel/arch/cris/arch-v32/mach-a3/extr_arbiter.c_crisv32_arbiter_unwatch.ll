; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_arbiter.c_crisv32_arbiter_unwatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_arbiter.c_crisv32_arbiter_unwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@arbiter_lock = common dso_local global i32 0, align 4
@ARBITERS = common dso_local global i32 0, align 4
@marb_bar = common dso_local global i32 0, align 4
@regi_marb_bar = common dso_local global i32 0, align 4
@rw_intr_mask = common dso_local global i32 0, align 4
@marb_foo = common dso_local global i32 0, align 4
@regi_marb_foo = common dso_local global i32 0, align 4
@NUMBER_OF_BP = common dso_local global i32 0, align 4
@watches = common dso_local global %struct.TYPE_3__** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_arbiter_unwatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @crisv32_arbiter_init()
  %8 = call i32 @spin_lock(i32* @arbiter_lock)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %112, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ARBITERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %115

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @marb_bar, align 4
  %18 = load i32, i32* @regi_marb_bar, align 4
  %19 = load i32, i32* @rw_intr_mask, align 4
  %20 = call i32 @REG_RD_INT(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @marb_foo, align 4
  %23 = load i32, i32* @regi_marb_foo, align 4
  %24 = load i32, i32* @rw_intr_mask, align 4
  %25 = call i32 @REG_RD_INT(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 8
  %30 = shl i32 255, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 8
  %34 = ashr i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %112

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NUMBER_OF_BP, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @watches, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %44, %38
  %57 = call i32 @spin_unlock(i32* @arbiter_lock)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %117

60:                                               ; preds = %44
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @watches, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = call i32 @memset(%struct.TYPE_3__* %68, i32 0, i32 4)
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, -2
  store i32 %74, i32* %5, align 4
  br label %96

75:                                               ; preds = %60
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, -3
  store i32 %80, i32* %5, align 4
  br label %95

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, -5
  store i32 %86, i32* %5, align 4
  br label %94

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, -9
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @marb_bar, align 4
  %101 = load i32, i32* @regi_marb_bar, align 4
  %102 = load i32, i32* @rw_intr_mask, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @REG_WR_INT(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %111

105:                                              ; preds = %96
  %106 = load i32, i32* @marb_foo, align 4
  %107 = load i32, i32* @regi_marb_foo, align 4
  %108 = load i32, i32* @rw_intr_mask, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @REG_WR_INT(i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111, %37
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %9

115:                                              ; preds = %9
  %116 = call i32 @spin_unlock(i32* @arbiter_lock)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %56
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @crisv32_arbiter_init(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @REG_RD_INT(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @REG_WR_INT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
