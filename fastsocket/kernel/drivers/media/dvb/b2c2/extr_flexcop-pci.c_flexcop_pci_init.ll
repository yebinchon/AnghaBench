; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-pci.c_flexcop_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_pci = type { %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"card revision %x\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot map io memory\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@flexcop_pci_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@FC_PCI_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_pci*)* @flexcop_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_init(%struct.flexcop_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.flexcop_pci* %0, %struct.flexcop_pci** %3, align 8
  %6 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %7 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %10 = call i32 @pci_read_config_byte(%struct.TYPE_10__* %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %14 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call i32 @pci_enable_device(%struct.TYPE_10__* %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %22 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call i32 @pci_set_master(%struct.TYPE_10__* %23)
  %25 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %26 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* @DRIVER_NAME, align 4
  %29 = call i32 @pci_request_regions(%struct.TYPE_10__* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %92

32:                                               ; preds = %20
  %33 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %34 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i32 @pci_iomap(%struct.TYPE_10__* %35, i32 0, i32 2048)
  %37 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %38 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %40 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %87

47:                                               ; preds = %32
  %48 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %49 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %52 = call i32 @pci_set_drvdata(%struct.TYPE_10__* %50, %struct.flexcop_pci* %51)
  %53 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %54 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %53, i32 0, i32 3
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %57 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @flexcop_pci_isr, align 4
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = load i32, i32* @DRIVER_NAME, align 4
  %64 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %65 = call i32 @request_irq(i32 %60, i32 %61, i32 %62, i32 %63, %struct.flexcop_pci* %64)
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %75

68:                                               ; preds = %47
  %69 = load i32, i32* @FC_PCI_INIT, align 4
  %70 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %71 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %98

75:                                               ; preds = %67
  %76 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %77 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %80 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pci_iounmap(%struct.TYPE_10__* %78, i32 %81)
  %83 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %84 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @pci_set_drvdata(%struct.TYPE_10__* %85, %struct.flexcop_pci* null)
  br label %87

87:                                               ; preds = %75, %43
  %88 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %89 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 @pci_release_regions(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %87, %31
  %93 = load %struct.flexcop_pci*, %struct.flexcop_pci** %3, align 8
  %94 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = call i32 @pci_disable_device(%struct.TYPE_10__* %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %68, %18
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @pci_enable_device(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_request_regions(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_iomap(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_10__*, %struct.flexcop_pci*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.flexcop_pci*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_10__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
