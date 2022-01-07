; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_comm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Initializing DST.\00", align 1
@DST_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"PIO Enable Failed\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RDC 8820 State RESET Failed.\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_comm_init(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load i32, i32* @verbose, align 4
  %5 = load i32, i32* @DST_INFO, align 4
  %6 = call i32 @dprintk(i32 %4, i32 %5, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %8 = call i64 @dst_pio_enable(%struct.dst_state* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @verbose, align 4
  %12 = load i32, i32* @DST_ERROR, align 4
  %13 = call i32 @dprintk(i32 %11, i32 %12, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %16 = call i64 @rdc_reset_state(%struct.dst_state* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @verbose, align 4
  %20 = load i32, i32* @DST_ERROR, align 4
  %21 = call i32 @dprintk(i32 %19, i32 %20, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %24 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @msleep(i32 100)
  br label %33

31:                                               ; preds = %22
  %32 = call i32 @msleep(i32 5)
  br label %33

33:                                               ; preds = %31, %29
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %18, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i64 @dst_pio_enable(%struct.dst_state*) #1

declare dso_local i64 @rdc_reset_state(%struct.dst_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
