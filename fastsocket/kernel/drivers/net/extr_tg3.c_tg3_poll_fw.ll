; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_poll_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_poll_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@NO_FWARE_REPORTED = common dso_local global i32 0, align 4
@IS_SSB_CORE = common dso_local global i32 0, align 4
@ASIC_REV_5906 = common dso_local global i64 0, align 8
@VCPU_STATUS = common dso_local global i32 0, align 4
@VCPU_STATUS_INIT_DONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX_MAGIC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No firmware running\0A\00", align 1
@CHIPREV_ID_57765_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_poll_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_poll_fw(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %8 = call i64 @tg3_flag(%struct.tg3* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @IS_SSB_CORE, align 4
  %14 = call i64 @tg3_flag(%struct.tg3* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %83

17:                                               ; preds = %11
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = call i64 @tg3_asic_rev(%struct.tg3* %18)
  %20 = load i64, i64* @ASIC_REV_5906, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* @VCPU_STATUS, align 4
  %28 = call i32 @tr32(i32 %27)
  %29 = load i32, i32* @VCPU_STATUS_INIT_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %83

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 100)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 100000
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.tg3*, %struct.tg3** %3, align 8
  %47 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX, align 4
  %48 = call i32 @tg3_read_mem(%struct.tg3* %46, i32 %47, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX_MAGIC1, align 4
  %51 = xor i32 %50, -1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %59

54:                                               ; preds = %45
  %55 = call i32 @udelay(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %42

59:                                               ; preds = %53, %42
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 100000
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.tg3*, %struct.tg3** %3, align 8
  %64 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %65 = call i64 @tg3_flag(%struct.tg3* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.tg3*, %struct.tg3** %3, align 8
  %69 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %70 = call i32 @tg3_flag_set(%struct.tg3* %68, i32 %69)
  %71 = load %struct.tg3*, %struct.tg3** %3, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @netdev_info(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %67, %62, %59
  %76 = load %struct.tg3*, %struct.tg3** %3, align 8
  %77 = call i64 @tg3_chip_rev_id(%struct.tg3* %76)
  %78 = load i64, i64* @CHIPREV_ID_57765_A0, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @mdelay(i32 10)
  br label %82

82:                                               ; preds = %80, %75
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %38, %32, %16, %10
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_read_mem(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
