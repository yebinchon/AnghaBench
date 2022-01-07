; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_port_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@port_cleanup = common dso_local global i32 0, align 4
@port_inb = common dso_local global i32 0, align 4
@port_outb = common dso_local global i32 0, align 4
@port_inw = common dso_local global i32 0, align 4
@port_outw = common dso_local global i32 0, align 4
@port_inl = common dso_local global i32 0, align 4
@port_outl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid register size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_setup(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  %6 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %7 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load i32, i32* @port_cleanup, align 4
  %17 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %50 [
    i32 1, label %23
    i32 2, label %32
    i32 4, label %41
  ]

23:                                               ; preds = %15
  %24 = load i32, i32* @port_inb, align 4
  %25 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %26 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @port_outb, align 4
  %29 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %30 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  br label %61

32:                                               ; preds = %15
  %33 = load i32, i32* @port_inw, align 4
  %34 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %35 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @port_outw, align 4
  %38 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %39 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  br label %61

41:                                               ; preds = %15
  %42 = load i32, i32* @port_inl, align 4
  %43 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %44 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @port_outl, align 4
  %47 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  br label %61

50:                                               ; preds = %15
  %51 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %52 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %55 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %111

61:                                               ; preds = %41, %32, %23
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %65 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %72 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = add i32 %69, %75
  %77 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %78 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DEVICE_NAME, align 4
  %82 = call i32* @request_region(i32 %76, i32 %80, i32 %81)
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %106

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %89, %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %93 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %91, %95
  %97 = add i32 %90, %96
  %98 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %99 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @release_region(i32 %97, i32 %101)
  br label %85

103:                                              ; preds = %85
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %111

106:                                              ; preds = %68
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %62

110:                                              ; preds = %62
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %103, %50, %12
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32* @request_region(i32, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
