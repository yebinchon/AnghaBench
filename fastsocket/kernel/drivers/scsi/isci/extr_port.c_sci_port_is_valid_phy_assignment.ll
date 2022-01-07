; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_is_valid_phy_assignment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_is_valid_phy_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, i64*, %struct.isci_host* }
%struct.isci_host = type { %struct.sci_user_parameters }
%struct.sci_user_parameters = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SCI_MAX_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_port_is_valid_phy_assignment(%struct.isci_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isci_host*, align 8
  %7 = alloca %struct.sci_user_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %11 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %10, i32 0, i32 2
  %12 = load %struct.isci_host*, %struct.isci_host** %11, align 8
  store %struct.isci_host* %12, %struct.isci_host** %6, align 8
  %13 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %14 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %13, i32 0, i32 0
  store %struct.sci_user_parameters* %14, %struct.sci_user_parameters** %7, align 8
  %15 = load i32, i32* @SCI_MAX_PHYS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %17 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %93

24:                                               ; preds = %20, %2
  %25 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %26 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %93

33:                                               ; preds = %29, %24
  %34 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %35 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 0, i32* %3, align 4
  br label %93

45:                                               ; preds = %41, %33
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %66, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SCI_MAX_PHYS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %52 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %59, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SCI_MAX_PHYS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %7, align 8
  %75 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sci_user_parameters*, %struct.sci_user_parameters** %7, align 8
  %83 = getelementptr inbounds %struct.sci_user_parameters, %struct.sci_user_parameters* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %81, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %93

92:                                               ; preds = %73, %69
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %44, %32, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
