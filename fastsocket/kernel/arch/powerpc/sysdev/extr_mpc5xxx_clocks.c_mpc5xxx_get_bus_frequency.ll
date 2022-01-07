; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpc5xxx_clocks.c_mpc5xxx_get_bus_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpc5xxx_clocks.c_mpc5xxx_get_bus_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc5xxx_get_bus_frequency(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = call i32 @of_node_get(%struct.device_node* %5)
  br label %7

7:                                                ; preds = %16, %1
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = call %struct.device_node* @of_get_parent(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %3, align 8
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %21, %struct.device_node** %2, align 8
  br label %7

22:                                               ; preds = %15, %7
  %23 = load %struct.device_node*, %struct.device_node** %2, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.device_node*, %struct.device_node** %2, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ 0, %34 ]
  ret i32 %36
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
