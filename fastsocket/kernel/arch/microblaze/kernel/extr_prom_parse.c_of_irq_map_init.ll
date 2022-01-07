; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_irq_map_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom_parse.c_of_irq_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_OLDWORLD_MAC = common dso_local global i32 0, align 4
@OF_IMAP_NO_PHANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AppleKiwi\00", align 1
@of_irq_dflt_pic = common dso_local global %struct.device_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_irq_map_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @of_irq_workarounds, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @OF_IMAP_OLDWORLD_MAC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @OF_IMAP_NO_PHANDLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %16

16:                                               ; preds = %38, %31, %24, %15
  %17 = load %struct.device_node*, %struct.device_node** %3, align 8
  %18 = call %struct.device_node* @of_find_all_nodes(%struct.device_node* %17)
  store %struct.device_node* %18, %struct.device_node** %3, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  %22 = call i32* @of_get_property(%struct.device_node* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %16

25:                                               ; preds = %20
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %16

32:                                               ; preds = %25
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %16

39:                                               ; preds = %32
  %40 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %40, %struct.device_node** @of_irq_dflt_pic, align 8
  br label %41

41:                                               ; preds = %39, %16
  br label %42

42:                                               ; preds = %9, %41, %10
  ret void
}

declare dso_local %struct.device_node* @of_find_all_nodes(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
