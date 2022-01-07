; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_find_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_find_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_NO_PHANDLE = common dso_local global i32 0, align 4
@of_irq_dflt_pic = common dso_local global %struct.device_node* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*)* @of_irq_find_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @of_irq_find_parent(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device_node* @of_node_get(%struct.device_node* %6)
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %47

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %43, %10
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.device_node*, %struct.device_node** %3, align 8
  %18 = call %struct.device_node* @of_get_parent(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  br label %32

19:                                               ; preds = %11
  %20 = load i32, i32* @of_irq_workarounds, align 4
  %21 = load i32, i32* @OF_IMAP_NO_PHANDLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** @of_irq_dflt_pic, align 8
  %26 = call %struct.device_node* @of_node_get(%struct.device_node* %25)
  store %struct.device_node* %26, %struct.device_node** %4, align 8
  br label %31

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.device_node* @of_find_node_by_phandle(i32 %29)
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %35, %struct.device_node** %3, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call i32* @of_get_property(%struct.device_node* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %42 = icmp eq i32* %41, null
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %11, label %45

45:                                               ; preds = %43
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %46, %struct.device_node** %2, align 8
  br label %47

47:                                               ; preds = %45, %9
  %48 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %48
}

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
