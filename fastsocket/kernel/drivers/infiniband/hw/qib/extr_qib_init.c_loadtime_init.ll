; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_loadtime_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_loadtime_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@QLOGIC_IB_R_SOFTWARE_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_R_SOFTWARE_MASK = common dso_local global i32 0, align 4
@QIB_CHIP_SWVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Driver only handles version %d, chip swversion is %d (%llx), failng\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@QLOGIC_IB_R_EMULATOR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@qib_mini_init = common dso_local global i64 0, align 8
@verify_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*)* @loadtime_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadtime_init(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @QLOGIC_IB_R_SOFTWARE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @QLOGIC_IB_R_SOFTWARE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @QIB_CHIP_SWVERSION, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = load i32, i32* @QIB_CHIP_SWVERSION, align 4
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QLOGIC_IB_R_SOFTWARE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @QLOGIC_IB_R_SOFTWARE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = call i32 @qib_dev_err(%struct.qib_devdata* %14, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %22, i64 %26)
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %86

30:                                               ; preds = %1
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QLOGIC_IB_R_EMULATOR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @qib_devinfo(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 7
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 6
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 5
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %55, i32 0, i32 4
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 2
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load i64, i64* @qib_mini_init, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %86

67:                                               ; preds = %45
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %69 = call i32 @init_pioavailregs(%struct.qib_devdata* %68)
  store i32 %69, i32* %3, align 4
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = call i32 @init_shadow_tids(%struct.qib_devdata* %70)
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %73 = call i32 @qib_get_eeprom_info(%struct.qib_devdata* %72)
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 1
  %76 = call i32 @init_timer(%struct.TYPE_2__* %75)
  %77 = load i32, i32* @verify_interrupt, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %82 = ptrtoint %struct.qib_devdata* %81 to i64
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %67, %66, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32, i64) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_pioavailregs(%struct.qib_devdata*) #1

declare dso_local i32 @init_shadow_tids(%struct.qib_devdata*) #1

declare dso_local i32 @qib_get_eeprom_info(%struct.qib_devdata*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
