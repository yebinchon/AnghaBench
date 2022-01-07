; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_init.c_qib_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata*, i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_devdata*, i32)* }
%struct.qib_pportdata = type { i32, i32*, i32*, i32 }

@QIBL_LINKDOWN = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBL_LINKV = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@QIB_STATUS_IB_READY = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_PKEY_ENB = common dso_local global i32 0, align 4
@QIB_SENDCTRL_CLEAR = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@QIB_SENDCTRL_AVAIL_DIS = common dso_local global i32 0, align 4
@QIB_SENDCTRL_SEND_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_shutdown_device(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %5
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 5
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i64 %16
  store %struct.qib_pportdata* %17, %struct.qib_pportdata** %3, align 8
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i32, i32* @QIBL_LINKDOWN, align 4
  %22 = load i32, i32* @QIBL_LINKINIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @QIBL_LINKARMED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @QIBL_LINKV, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 3
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %39 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %11
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %5

50:                                               ; preds = %5
  %51 = load i32, i32* @QIB_INITTED, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 7
  %59 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %58, align 8
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %61 = call i32 %59(%struct.qib_devdata* %60, i32 0)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %93, %50
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %65 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 5
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %71, i64 %73
  store %struct.qib_pportdata* %74, %struct.qib_pportdata** %3, align 8
  %75 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %76 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %75, i32 0, i32 6
  %77 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %76, align 8
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %79 = load i32, i32* @QIB_RCVCTRL_TAILUPD_DIS, align 4
  %80 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @QIB_RCVCTRL_PKEY_ENB, align 4
  %85 = or i32 %83, %84
  %86 = call i32 %77(%struct.qib_pportdata* %78, i32 %85, i32 -1)
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 3
  %89 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %88, align 8
  %90 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %91 = load i32, i32* @QIB_SENDCTRL_CLEAR, align 4
  %92 = call i32 %89(%struct.qib_pportdata* %90, i32 %91)
  br label %93

93:                                               ; preds = %68
  %94 = load i32, i32* %4, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %62

96:                                               ; preds = %62
  %97 = call i32 @udelay(i32 20)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %151, %96
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %154

104:                                              ; preds = %98
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %105, i32 0, i32 5
  %107 = load %struct.qib_pportdata*, %struct.qib_pportdata** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %107, i64 %109
  store %struct.qib_pportdata* %110, %struct.qib_pportdata** %3, align 8
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 4
  %113 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %112, align 8
  %114 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %115 = call i32 %113(%struct.qib_pportdata* %114, i32 0)
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %104
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %124 = call i32 @qib_teardown_sdma(%struct.qib_pportdata* %123)
  br label %125

125:                                              ; preds = %122, %104
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 3
  %128 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %127, align 8
  %129 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %130 = load i32, i32* @QIB_SENDCTRL_AVAIL_DIS, align 4
  %131 = load i32, i32* @QIB_SENDCTRL_SEND_DIS, align 4
  %132 = or i32 %130, %131
  %133 = call i32 %128(%struct.qib_pportdata* %129, i32 %132)
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 2
  %136 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %135, align 8
  %137 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %138 = call i32 %136(%struct.qib_pportdata* %137)
  %139 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %140 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %125
  %144 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %145 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @destroy_workqueue(i32* %146)
  %148 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %149 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %125
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %98

154:                                              ; preds = %98
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %156 = call i32 @qib_update_eeprom_log(%struct.qib_devdata* %155)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_teardown_sdma(%struct.qib_pportdata*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qib_update_eeprom_log(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
