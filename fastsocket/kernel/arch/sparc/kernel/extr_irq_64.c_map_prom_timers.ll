; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_map_prom_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_map_prom_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun5_timer = type { i32 }
%struct.device_node = type { %struct.device_node*, i32, %struct.device_node* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"counter-timer\00", align 1
@prom_timers = common dso_local global %struct.sun5_timer* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"PROM does not have timer mapped, trying to continue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @map_prom_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_prom_timers() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = alloca i32*, align 8
  %3 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %1, align 8
  %4 = load %struct.device_node*, %struct.device_node** %1, align 8
  %5 = getelementptr inbounds %struct.device_node, %struct.device_node* %4, i32 0, i32 2
  %6 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %6, %struct.device_node** %1, align 8
  br label %7

7:                                                ; preds = %17, %0
  %8 = load %struct.device_node*, %struct.device_node** %1, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load %struct.device_node*, %struct.device_node** %1, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.device_node*, %struct.device_node** %1, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %1, align 8
  br label %7

21:                                               ; preds = %16, %7
  %22 = load %struct.device_node*, %struct.device_node** %1, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store %struct.sun5_timer* null, %struct.sun5_timer** @prom_timers, align 8
  br label %38

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %1, align 8
  %27 = call i32* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @prom_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sun5_timer* null, %struct.sun5_timer** @prom_timers, align 8
  br label %38

32:                                               ; preds = %25
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.sun5_timer*
  store %struct.sun5_timer* %37, %struct.sun5_timer** @prom_timers, align 8
  br label %38

38:                                               ; preds = %32, %30, %24
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @prom_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
