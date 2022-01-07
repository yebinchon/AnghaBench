; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to setup interrupt capabilities\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for queue vectors\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_init_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %6 = call i32 @ixgbevf_set_num_queues(%struct.ixgbevf_adapter* %5)
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %8 = call i32 @ixgbevf_set_interrupt_capability(%struct.ixgbevf_adapter* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 3
  %14 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %17 = call i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 3
  %23 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %26 = call i32 @ixgbevf_alloc_queues(%struct.ixgbevf_adapter* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %51

31:                                               ; preds = %24
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %32, i32 0, i32 3
  %34 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %40 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32 %42, i32 %45)
  %47 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %48, i32 0, i32 1
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  store i32 0, i32* %2, align 4
  br label %59

51:                                               ; preds = %29
  %52 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %53 = call i32 @ixgbevf_free_q_vectors(%struct.ixgbevf_adapter* %52)
  br label %54

54:                                               ; preds = %51, %20
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %56 = call i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter* %55)
  br label %57

57:                                               ; preds = %54, %11
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ixgbevf_set_num_queues(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_set_interrupt_capability(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @hw_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_alloc_queues(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_free_q_vectors(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
