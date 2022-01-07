; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov51x_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i64 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"restarting\00", align 1
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@OV519_R51_RESET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_restart(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load i32, i32* @D_STREAM, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.sd*, %struct.sd** %2, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %41 [
    i32 134, label %16
    i32 133, label %16
    i32 132, label %20
    i32 131, label %20
    i32 130, label %26
    i32 129, label %35
    i32 128, label %38
  ]

16:                                               ; preds = %10, %10
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = load i32, i32* @R51x_SYS_RESET, align 4
  %19 = call i32 @reg_w(%struct.sd* %17, i32 %18, i32 0)
  br label %41

20:                                               ; preds = %10, %10
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = call i32 @reg_w(%struct.sd* %21, i32 47, i32 128)
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = load i32, i32* @R51x_SYS_RESET, align 4
  %25 = call i32 @reg_w(%struct.sd* %23, i32 %24, i32 0)
  br label %41

26:                                               ; preds = %10
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = load i32, i32* @OV519_R51_RESET1, align 4
  %29 = call i32 @reg_w(%struct.sd* %27, i32 %28, i32 15)
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = load i32, i32* @OV519_R51_RESET1, align 4
  %32 = call i32 @reg_w(%struct.sd* %30, i32 %31, i32 0)
  %33 = load %struct.sd*, %struct.sd** %2, align 8
  %34 = call i32 @reg_w(%struct.sd* %33, i32 34, i32 29)
  br label %41

35:                                               ; preds = %10
  %36 = load %struct.sd*, %struct.sd** %2, align 8
  %37 = call i32 @reg_w_mask(%struct.sd* %36, i32 15, i32 2, i32 2)
  br label %41

38:                                               ; preds = %10
  %39 = load %struct.sd*, %struct.sd** %2, align 8
  %40 = call i32 @reg_w(%struct.sd* %39, i32 60, i32 35333)
  br label %41

41:                                               ; preds = %9, %10, %38, %35, %26, %20, %16
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
