; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_guest_set_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_guest_set_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GUEST_PL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad stack segment %i\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bad stack pages %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guest_set_stack(%struct.lg_cpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 3
  %11 = load i32, i32* @GUEST_PL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @kill_guest(%struct.lg_cpu* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ugt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @kill_guest(%struct.lg_cpu* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %27 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %30 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %33 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %37 = call i32 @pin_stack_pages(%struct.lg_cpu* %36)
  ret void
}

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*, i32) #1

declare dso_local i32 @pin_stack_pages(%struct.lg_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
