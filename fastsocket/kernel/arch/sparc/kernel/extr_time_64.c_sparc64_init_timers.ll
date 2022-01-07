; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_64.c_sparc64_init_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_64.c_sparc64_init_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@tlb_type = common dso_local global i64 0, align 8
@spitfire = common dso_local global i64 0, align 8
@hbtick_operations = common dso_local global i32 0, align 4
@tick_ops = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"stick-frequency\00", align 1
@tick_operations = common dso_local global i32 0, align 4
@stick_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @sparc64_init_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sparc64_init_timers() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %1, align 8
  %8 = load i64, i64* @tlb_type, align 8
  %9 = load i64, i64* @spitfire, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %0
  %12 = call i64 asm sideeffect "rdpr %ver, $0", "=&r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = lshr i64 %13, 48
  %15 = and i64 %14, 65535
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %16, 32
  %18 = and i64 %17, 65535
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 19
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  store i32* @hbtick_operations, i32** @tick_ops, align 8
  %25 = load %struct.device_node*, %struct.device_node** %1, align 8
  %26 = call i64 @of_getintprop_default(%struct.device_node* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %26, i64* %2, align 8
  br label %32

27:                                               ; preds = %21, %11
  store i32* @tick_operations, i32** @tick_ops, align 8
  %28 = call i64 (...) @local_cpu_data()
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %27, %24
  br label %36

33:                                               ; preds = %0
  store i32* @stick_operations, i32** @tick_ops, align 8
  %34 = load %struct.device_node*, %struct.device_node** %1, align 8
  %35 = call i64 @of_getintprop_default(%struct.device_node* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i64 @of_getintprop_default(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @local_cpu_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 788}
