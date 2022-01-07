; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_32.c_pci_busdev_to_OF_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci_32.c_pci_busdev_to_OF_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8* }
%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"pci_busdev_to_OF_node(%d,0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" parent is %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" result is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @pci_busdev_to_OF_node(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = call %struct.device_node* @scan_OF_for_pci_bus(%struct.pci_bus* %15)
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp eq %struct.device_node* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %27 ]
  %30 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.device_node* @scan_OF_for_pci_dev(%struct.device_node* %31, i32 %32)
  store %struct.device_node* %33, %struct.device_node** %7, align 8
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = getelementptr inbounds %struct.device_node, %struct.device_node* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %42 ]
  %45 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %46, %struct.device_node** %3, align 8
  br label %47

47:                                               ; preds = %43, %19
  %48 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %48
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local %struct.device_node* @scan_OF_for_pci_bus(%struct.pci_bus*) #1

declare dso_local %struct.device_node* @scan_OF_for_pci_dev(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
