; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_probe_roms.c_match_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_probe_roms.c_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i16, i16, %struct.pci_driver* }
%struct.pci_driver = type { %struct.pci_device_id* }
%struct.pci_device_id = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i16, i16)* @match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_id(%struct.pci_dev* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.pci_driver*, align 8
  %9 = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 2
  %12 = load %struct.pci_driver*, %struct.pci_driver** %11, align 8
  store %struct.pci_driver* %12, %struct.pci_driver** %8, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %6, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %83

29:                                               ; preds = %20, %3
  %30 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %31 = icmp ne %struct.pci_driver* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %34 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %33, i32 0, i32 0
  %35 = load %struct.pci_device_id*, %struct.pci_device_id** %34, align 8
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi %struct.pci_device_id* [ %35, %32 ], [ null, %36 ]
  store %struct.pci_device_id* %38, %struct.pci_device_id** %9, align 8
  br label %39

39:                                               ; preds = %68, %37
  %40 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %41 = icmp ne %struct.pci_device_id* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %44 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  br i1 %49, label %50, label %71

50:                                               ; preds = %48
  %51 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %52 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %60 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %59, i32 0, i32 1
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %71

67:                                               ; preds = %58, %50
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %70 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %69, i32 1
  store %struct.pci_device_id* %70, %struct.pci_device_id** %9, align 8
  br label %39

71:                                               ; preds = %66, %48
  %72 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %73 = icmp ne %struct.pci_device_id* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %76 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i1 [ false, %71 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %28
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
