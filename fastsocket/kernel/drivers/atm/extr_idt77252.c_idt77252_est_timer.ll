; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_est_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_est_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_map = type { i64, i64, i32, i32, %struct.rate_estimator*, %struct.idt77252_dev* }
%struct.rate_estimator = type { i32, i64, i64, i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.idt77252_dev = type { i32 }

@TCMDQ_LACR = common dso_local global i32 0, align 4
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @idt77252_est_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_est_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vc_map*, align 8
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca %struct.rate_estimator*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.vc_map*
  store %struct.vc_map* %12, %struct.vc_map** %3, align 8
  %13 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %14 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %13, i32 0, i32 5
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %14, align 8
  store %struct.idt77252_dev* %15, %struct.idt77252_dev** %4, align 8
  %16 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %17 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %16, i32 0, i32 3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %21 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %20, i32 0, i32 4
  %22 = load %struct.rate_estimator*, %struct.rate_estimator** %21, align 8
  store %struct.rate_estimator* %22, %struct.rate_estimator** %5, align 8
  %23 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %24 = icmp ne %struct.rate_estimator* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %134

26:                                               ; preds = %1
  %27 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %28 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %32 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %37 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 7, %38
  %40 = shl i32 %35, %39
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %43 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %42, i32 0, i32 6
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %47 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %51 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = ashr i64 %49, %52
  %54 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %55 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %59 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 31
  %62 = ashr i64 %61, 5
  %63 = trunc i64 %62 to i32
  %64 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %65 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %67 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %71 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %26
  %76 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %77 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %75, %26
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @idt77252_rate_logindex(%struct.idt77252_dev* %81, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %86 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %91 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %89, %80
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %96 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %102 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @TCMDQ_LACR, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %106 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = shl i64 %107, 16
  %109 = or i64 %104, %108
  %110 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %111 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = or i64 %109, %113
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %117 = call i32 @writel(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %99, %93
  %119 = load i64, i64* @jiffies, align 8
  %120 = load i32, i32* @HZ, align 4
  %121 = sdiv i32 %120, 4
  %122 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %123 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %119, %126
  %128 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %129 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.rate_estimator*, %struct.rate_estimator** %5, align 8
  %132 = getelementptr inbounds %struct.rate_estimator, %struct.rate_estimator* %131, i32 0, i32 5
  %133 = call i32 @add_timer(%struct.TYPE_2__* %132)
  br label %134

134:                                              ; preds = %118, %25
  %135 = load %struct.vc_map*, %struct.vc_map** %3, align 8
  %136 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %135, i32 0, i32 3
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @idt77252_rate_logindex(%struct.idt77252_dev*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
