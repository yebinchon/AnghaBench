; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_debugfs.c_chip_op_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_debugfs.c_chip_op_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"debugfs chip_op_handler with no callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i64, i8*)* @chip_op_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chip_op_handler(%struct.wl1271* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.wl1271*)*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

13:                                               ; preds = %3
  %14 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %15 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32 (%struct.wl1271*)*
  store i32 (%struct.wl1271*)* %21, i32 (%struct.wl1271*)** %8, align 8
  %22 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %8, align 8
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = call i32 %22(%struct.wl1271* %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %26 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %25)
  br label %27

27:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
