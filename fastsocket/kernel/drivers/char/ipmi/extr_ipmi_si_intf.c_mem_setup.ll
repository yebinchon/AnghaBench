; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_mem_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@mem_cleanup = common dso_local global i32 0, align 4
@intf_mem_inb = common dso_local global i32 0, align 4
@intf_mem_outb = common dso_local global i32 0, align 4
@intf_mem_inw = common dso_local global i32 0, align 4
@intf_mem_outw = common dso_local global i32 0, align 4
@intf_mem_inl = common dso_local global i32 0, align 4
@intf_mem_outl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid register size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@mem_inq = common dso_local global i32 0, align 4
@mem_outq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_setup(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  %6 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %7 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %107

15:                                               ; preds = %1
  %16 = load i32, i32* @mem_cleanup, align 4
  %17 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %50 [
    i32 1, label %23
    i32 2, label %32
    i32 4, label %41
  ]

23:                                               ; preds = %15
  %24 = load i32, i32* @intf_mem_inb, align 4
  %25 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %26 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @intf_mem_outb, align 4
  %29 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %30 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  br label %61

32:                                               ; preds = %15
  %33 = load i32, i32* @intf_mem_inw, align 4
  %34 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %35 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @intf_mem_outw, align 4
  %38 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %39 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  br label %61

41:                                               ; preds = %15
  %42 = load i32, i32* @intf_mem_inl, align 4
  %43 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %44 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @intf_mem_outl, align 4
  %47 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  br label %61

50:                                               ; preds = %15
  %51 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %52 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %55 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %107

61:                                               ; preds = %41, %32, %23
  %62 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %63 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %66 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %64, %68
  %70 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %71 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %75 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %73, %77
  %79 = sub nsw i32 %69, %78
  store i32 %79, i32* %5, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @DEVICE_NAME, align 4
  %83 = call i32* @request_mem_region(i64 %80, i32 %81, i32 %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %61
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %107

88:                                               ; preds = %61
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32* @ioremap(i64 %89, i32 %90)
  %92 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %93 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32* %91, i32** %94, align 8
  %95 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %96 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @release_mem_region(i64 %101, i32 %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %100, %85, %50, %12
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32* @request_mem_region(i64, i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
