; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_match_unit_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_match_unit_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee1394_device_id = type { i32, i32, i32, i32 }
%struct.fw_csr_iterator = type { i32 }

@CSR_VENDOR = common dso_local global i32 0, align 4
@IEEE1394_MATCH_VENDOR_ID = common dso_local global i32 0, align 4
@CSR_MODEL = common dso_local global i32 0, align 4
@IEEE1394_MATCH_MODEL_ID = common dso_local global i32 0, align 4
@CSR_SPECIFIER_ID = common dso_local global i32 0, align 4
@IEEE1394_MATCH_SPECIFIER_ID = common dso_local global i32 0, align 4
@CSR_VERSION = common dso_local global i32 0, align 4
@IEEE1394_MATCH_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.ieee1394_device_id*)* @match_unit_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_unit_directory(i32* %0, i32 %1, %struct.ieee1394_device_id* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee1394_device_id*, align 8
  %7 = alloca %struct.fw_csr_iterator, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee1394_device_id* %2, %struct.ieee1394_device_id** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %7, i32* %11)
  br label %13

13:                                               ; preds = %72, %3
  %14 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %7, i32* %8, i32* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CSR_VENDOR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %6, align 8
  %23 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @IEEE1394_MATCH_VENDOR_ID, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %20, %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CSR_MODEL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %6, align 8
  %37 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @IEEE1394_MATCH_MODEL_ID, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %34, %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @CSR_SPECIFIER_ID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %6, align 8
  %51 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @IEEE1394_MATCH_SPECIFIER_ID, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %48, %44
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @CSR_VERSION, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ieee1394_device_id*, %struct.ieee1394_device_id** %6, align 8
  %65 = getelementptr inbounds %struct.ieee1394_device_id, %struct.ieee1394_device_id* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @IEEE1394_MATCH_VERSION, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %62, %58
  br label %13

73:                                               ; preds = %13
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  ret i32 %79
}

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
