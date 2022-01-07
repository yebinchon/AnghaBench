; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov519_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.sd = type { i32 }

@ov519_configure.init_519 = internal constant [10 x %struct.ov_regvals] [%struct.ov_regvals { i32 90, i32 109 }, %struct.ov_regvals { i32 83, i32 155 }, %struct.ov_regvals { i32 128, i32 255 }, %struct.ov_regvals { i32 93, i32 3 }, %struct.ov_regvals { i32 73, i32 1 }, %struct.ov_regvals { i32 72, i32 0 }, %struct.ov_regvals { i32 130, i32 238 }, %struct.ov_regvals { i32 129, i32 15 }, %struct.ov_regvals { i32 129, i32 0 }, %struct.ov_regvals { i32 34, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov519_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov519_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.ov_regvals* getelementptr inbounds ([10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* @ov519_configure.init_519, i64 0, i64 0))
  %5 = call i32 @write_regvals(%struct.sd* %3, %struct.ov_regvals* getelementptr inbounds ([10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* @ov519_configure.init_519, i64 0, i64 0), i32 %4)
  ret void
}

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
