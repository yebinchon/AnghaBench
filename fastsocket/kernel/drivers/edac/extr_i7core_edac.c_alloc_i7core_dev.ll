; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_alloc_i7core_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_alloc_i7core_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i7core_dev = type { i32, i32, i32, i8* }
%struct.pci_id_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@i7core_edac_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i7core_dev* (i32, %struct.pci_id_table*)* @alloc_i7core_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i7core_dev* @alloc_i7core_dev(i32 %0, %struct.pci_id_table* %1) #0 {
  %3 = alloca %struct.i7core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_id_table*, align 8
  %6 = alloca %struct.i7core_dev*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pci_id_table* %1, %struct.pci_id_table** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.i7core_dev*
  store %struct.i7core_dev* %9, %struct.i7core_dev** %6, align 8
  %10 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %11 = icmp ne %struct.i7core_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.i7core_dev* null, %struct.i7core_dev** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %15 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 1, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  %22 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %23 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %25 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %13
  %29 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %30 = call i32 @kfree(%struct.i7core_dev* %29)
  store %struct.i7core_dev* null, %struct.i7core_dev** %3, align 8
  br label %44

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %34 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pci_id_table*, %struct.pci_id_table** %5, align 8
  %36 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %39 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  %41 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %41, i32* @i7core_edac_list)
  %43 = load %struct.i7core_dev*, %struct.i7core_dev** %6, align 8
  store %struct.i7core_dev* %43, %struct.i7core_dev** %3, align 8
  br label %44

44:                                               ; preds = %31, %28, %12
  %45 = load %struct.i7core_dev*, %struct.i7core_dev** %3, align 8
  ret %struct.i7core_dev* %45
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.i7core_dev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
