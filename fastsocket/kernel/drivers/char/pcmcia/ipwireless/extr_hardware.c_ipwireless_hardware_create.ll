; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipwireless_hardware_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipwireless_hardware_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NL_NUM_OF_PRIORITIES = common dso_local global i32 0, align 4
@ipwireless_do_tasklet = common dso_local global i32 0, align 4
@ipw_receive_data_work = common dso_local global i32 0, align 4
@ipwireless_setup_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipw_hardware* @ipwireless_hardware_create() #0 {
  %1 = alloca %struct.ipw_hardware*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_hardware*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ipw_hardware* @kzalloc(i32 64, i32 %4)
  store %struct.ipw_hardware* %5, %struct.ipw_hardware** %3, align 8
  %6 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %7 = icmp ne %struct.ipw_hardware* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.ipw_hardware* null, %struct.ipw_hardware** %1, align 8
  br label %64

9:                                                ; preds = %0
  %10 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %13 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %18, i32 0, i32 11
  store i64 0, i64* %19, align 8
  %20 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %21 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %20, i32 0, i32 3
  store i16 -1, i16* %21, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %34, %9
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @NL_NUM_OF_PRIORITIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %28 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %27, i32 0, i32 10
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %39 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %38, i32 0, i32 9
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %42 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %41, i32 0, i32 8
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %45 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %44, i32 0, i32 7
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %48 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %47, i32 0, i32 6
  %49 = load i32, i32* @ipwireless_do_tasklet, align 4
  %50 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %51 = ptrtoint %struct.ipw_hardware* %50 to i64
  %52 = call i32 @tasklet_init(i32* %48, i32 %49, i64 %51)
  %53 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %54 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %53, i32 0, i32 5
  %55 = load i32, i32* @ipw_receive_data_work, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %58 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %57, i32 0, i32 4
  %59 = load i32, i32* @ipwireless_setup_timer, align 4
  %60 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %61 = ptrtoint %struct.ipw_hardware* %60 to i64
  %62 = call i32 @setup_timer(i32* %58, i32 %59, i64 %61)
  %63 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  store %struct.ipw_hardware* %63, %struct.ipw_hardware** %1, align 8
  br label %64

64:                                               ; preds = %37, %8
  %65 = load %struct.ipw_hardware*, %struct.ipw_hardware** %1, align 8
  ret %struct.ipw_hardware* %65
}

declare dso_local %struct.ipw_hardware* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
