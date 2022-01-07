; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_find_pe_dn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_find_pe_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"rtas_msi: using PE dn %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.pci_dev*, i32*)* @find_pe_dn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @find_pe_dn(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %7)
  store %struct.device_node* %8, %struct.device_node** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call %struct.device_node* @find_device_pe(%struct.device_node* %13)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = call %struct.device_node* @of_get_parent(%struct.device_node* %19)
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  store i32 8, i32* %25, align 4
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %30, %struct.device_node** %3, align 8
  br label %31

31:                                               ; preds = %24, %23, %17, %11
  %32 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %32
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local %struct.device_node* @find_device_pe(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
