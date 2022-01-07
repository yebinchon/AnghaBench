; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"stopping\00", align 1
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV519_R51_RESET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_stop(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load i32, i32* @D_STREAM, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %33 [
    i32 134, label %10
    i32 133, label %10
    i32 132, label %14
    i32 131, label %14
    i32 130, label %18
    i32 129, label %27
    i32 128, label %30
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = load i32, i32* @R51x_SYS_RESET, align 4
  %13 = call i32 @reg_w(%struct.sd* %11, i32 %12, i32 61)
  br label %33

14:                                               ; preds = %1, %1
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = load i32, i32* @R51x_SYS_RESET, align 4
  %17 = call i32 @reg_w_mask(%struct.sd* %15, i32 %16, i32 58, i32 58)
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.sd*, %struct.sd** %2, align 8
  %20 = load i32, i32* @OV519_R51_RESET1, align 4
  %21 = call i32 @reg_w(%struct.sd* %19, i32 %20, i32 15)
  %22 = load %struct.sd*, %struct.sd** %2, align 8
  %23 = load i32, i32* @OV519_R51_RESET1, align 4
  %24 = call i32 @reg_w(%struct.sd* %22, i32 %23, i32 0)
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = call i32 @reg_w(%struct.sd* %25, i32 34, i32 0)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.sd*, %struct.sd** %2, align 8
  %29 = call i32 @reg_w_mask(%struct.sd* %28, i32 15, i32 0, i32 2)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.sd*, %struct.sd** %2, align 8
  %32 = call i32 @reg_w(%struct.sd* %31, i32 60, i32 2565)
  br label %33

33:                                               ; preds = %1, %30, %27, %18, %14, %10
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
