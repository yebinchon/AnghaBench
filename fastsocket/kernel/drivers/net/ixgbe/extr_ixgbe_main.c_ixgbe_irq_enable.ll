; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IXGBE_EIMS_ENABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_EIMS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IXGBE_EIMS_LSC = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP0 = common dso_local global i32 0, align 4
@IXGBE_EIMS_TS = common dso_local global i32 0, align 4
@IXGBE_FLAG_FAN_FAIL_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP1 = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP2 = common dso_local global i32 0, align 4
@IXGBE_EIMS_ECC = common dso_local global i32 0, align 4
@IXGBE_EIMS_MAILBOX = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@IXGBE_EIMS_FLOW_DIR = common dso_local global i32 0, align 4
@IXGBE_EIMS = common dso_local global i32 0, align 4
@IXGBE_EIMS_TIMESYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32, i32)* @ixgbe_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_irq_enable(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  %9 = load i32, i32* @IXGBE_EIMS_RTX_QUEUE, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @IXGBE_EIMS_LSC, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_CAPABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %44 [
    i32 129, label %36
    i32 128, label %40
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* @IXGBE_EIMS_GPI_SDP0, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @IXGBE_EIMS_TS, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %40, %36
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IXGBE_FLAG_FAN_FAIL_CAPABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @IXGBE_EIMS_GPI_SDP1, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %77 [
    i32 129, label %63
    i32 128, label %70
  ]

63:                                               ; preds = %57
  %64 = load i32, i32* @IXGBE_EIMS_GPI_SDP1, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @IXGBE_EIMS_GPI_SDP2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %57, %63
  %71 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @IXGBE_EIMS_MAILBOX, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %70
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @IXGBE_EIMS_FLOW_DIR, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %85, %78
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %98 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %97, i32 0, i32 2
  %99 = load i32, i32* @IXGBE_EIMS, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_5__* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %106 = call i32 @ixgbe_irq_enable_queues(%struct.ixgbe_adapter* %105, i32 -1)
  br label %107

107:                                              ; preds = %104, %96
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 2
  %113 = call i32 @IXGBE_WRITE_FLUSH(%struct.TYPE_5__* %112)
  br label %114

114:                                              ; preds = %110, %107
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ixgbe_irq_enable_queues(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
