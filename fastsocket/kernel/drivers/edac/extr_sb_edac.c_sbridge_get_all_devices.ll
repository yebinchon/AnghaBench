; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_get_all_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_get_all_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_id_table = type { i32, i64 }
%struct.pci_dev = type { i32 }

@pci_dev_descr_sbridge_table = common dso_local global %struct.pci_id_table* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sbridge_get_all_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbridge_get_all_devices(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_id_table*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  %8 = load %struct.pci_id_table*, %struct.pci_id_table** @pci_dev_descr_sbridge_table, align 8
  store %struct.pci_id_table* %8, %struct.pci_id_table** %7, align 8
  br label %9

9:                                                ; preds = %53, %1
  %10 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %11 = icmp ne %struct.pci_id_table* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %14 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %56

19:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %50, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %23 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sbridge_get_onedevice(%struct.pci_dev** %6, i32* %28, %struct.pci_id_table* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %39 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %49

41:                                               ; preds = %34
  %42 = call i32 (...) @sbridge_put_all_devices()
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %57

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %27, label %49

49:                                               ; preds = %46, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.pci_id_table*, %struct.pci_id_table** %7, align 8
  %55 = getelementptr inbounds %struct.pci_id_table, %struct.pci_id_table* %54, i32 1
  store %struct.pci_id_table* %55, %struct.pci_id_table** %7, align 8
  br label %9

56:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @sbridge_get_onedevice(%struct.pci_dev**, i32*, %struct.pci_id_table*, i32) #1

declare dso_local i32 @sbridge_put_all_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
