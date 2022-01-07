; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-ci.c_ciintf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.budget_ci*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@MC1 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@MASK_11 = common dso_local global i32 0, align 4
@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CIVERSION = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@SLOTSTATUS_NONE = common dso_local global i64 0, align 8
@CICONTROL_CAMDETECT = common dso_local global i32 0, align 4
@SLOTSTATUS_PRESENT = common dso_local global i64 0, align 8
@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_FR = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_DA = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ciintf_read_attribute_mem = common dso_local global i32 0, align 4
@ciintf_write_attribute_mem = common dso_local global i32 0, align 4
@ciintf_read_cam_control = common dso_local global i32 0, align 4
@ciintf_write_cam_control = common dso_local global i32 0, align 4
@ciintf_slot_reset = common dso_local global i32 0, align 4
@ciintf_slot_shutdown = common dso_local global i32 0, align 4
@ciintf_slot_ts_enable = common dso_local global i32 0, align 4
@ciintf_poll_slot_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"budget_ci: CI interface detected, but initialisation failed.\0A\00", align 1
@ciintf_interrupt = common dso_local global i32 0, align 4
@SAA7146_GPIO_IRQLO = common dso_local global i32 0, align 4
@SAA7146_GPIO_IRQHI = common dso_local global i32 0, align 4
@MASK_03 = common dso_local global i32 0, align 4
@CICONTROL_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"budget_ci: CI interface initialised\0A\00", align 1
@DVB_CA_EN50221_CAMCHANGE_REMOVED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_INSERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.budget_ci*)* @ciintf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciintf_init(%struct.budget_ci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.budget_ci*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.budget_ci* %0, %struct.budget_ci** %3, align 8
  %9 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %10 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %11, align 8
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %4, align 8
  %13 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %14 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %13, i32 0, i32 2
  %15 = call i32 @memset(%struct.TYPE_7__* %14, i32 0, i32 4)
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = load i32, i32* @MC1, align 4
  %18 = load i32, i32* @MASK_27, align 4
  %19 = load i32, i32* @MASK_11, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @saa7146_write(%struct.saa7146_dev* %16, i32 %17, i32 %20)
  %22 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %23 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %22, i32 0, i32 3
  %24 = load i32, i32* @DEBICICTL, align 4
  %25 = load i32, i32* @DEBIADDR_CIVERSION, align 4
  %26 = call i32 @ttpci_budget_debiread(%struct.TYPE_6__* %23, i32 %24, i32 %25, i32 1, i32 1, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 160
  %29 = icmp ne i32 %28, 160
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %174

33:                                               ; preds = %1
  %34 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %35 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %34, i32 0, i32 3
  %36 = load i32, i32* @DEBICICTL, align 4
  %37 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %38 = call i32 @ttpci_budget_debiread(%struct.TYPE_6__* %35, i32 %36, i32 %37, i32 1, i32 1, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* @SLOTSTATUS_NONE, align 8
  %40 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %41 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CICONTROL_CAMDETECT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i64, i64* @SLOTSTATUS_PRESENT, align 8
  %48 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %49 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 162
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %54 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %55 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %58 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_FR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_DA, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %63 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %67 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 9
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @ciintf_read_attribute_mem, align 4
  %70 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %71 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 8
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @ciintf_write_attribute_mem, align 4
  %74 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %75 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @ciintf_read_cam_control, align 4
  %78 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %79 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @ciintf_write_cam_control, align 4
  %82 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %83 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @ciintf_slot_reset, align 4
  %86 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %87 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @ciintf_slot_shutdown, align 4
  %90 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %91 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @ciintf_slot_ts_enable, align 4
  %94 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %95 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @ciintf_poll_slot_status, align 4
  %98 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %99 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %102 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %103 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store %struct.budget_ci* %101, %struct.budget_ci** %104, align 8
  %105 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %106 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %109 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %108, i32 0, i32 2
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dvb_ca_en50221_init(i32* %107, %struct.TYPE_7__* %109, i32 %110, i32 1)
  store i32 %111, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %64
  %114 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %174

115:                                              ; preds = %64
  %116 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %117 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %115
  %121 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %122 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %121, i32 0, i32 4
  %123 = load i32, i32* @ciintf_interrupt, align 4
  %124 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %125 = ptrtoint %struct.budget_ci* %124 to i64
  %126 = call i32 @tasklet_init(i32* %122, i32 %123, i64 %125)
  %127 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %128 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SLOTSTATUS_NONE, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %134 = load i32, i32* @SAA7146_GPIO_IRQLO, align 4
  %135 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %133, i32 0, i32 %134)
  br label %140

136:                                              ; preds = %120
  %137 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %138 = load i32, i32* @SAA7146_GPIO_IRQHI, align 4
  %139 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %137, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %142 = load i32, i32* @MASK_03, align 4
  %143 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %115
  %145 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %146 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %145, i32 0, i32 3
  %147 = load i32, i32* @DEBICICTL, align 4
  %148 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %149 = load i32, i32* @CICONTROL_RESET, align 4
  %150 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_6__* %146, i32 %147, i32 %148, i32 1, i32 %149, i32 1, i32 0)
  %151 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %153 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %156 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %144
  %160 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_REMOVED, align 4
  store i32 %160, i32* %5, align 4
  %161 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %162 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SLOTSTATUS_NONE, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_INSERTED, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %159
  %169 = load %struct.budget_ci*, %struct.budget_ci** %3, align 8
  %170 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %169, i32 0, i32 2
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @dvb_ca_en50221_camchange_irq(%struct.TYPE_7__* %170, i32 0, i32 %171)
  br label %173

173:                                              ; preds = %168, %144
  store i32 0, i32* %2, align 4
  br label %180

174:                                              ; preds = %113, %30
  %175 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %176 = load i32, i32* @MC1, align 4
  %177 = load i32, i32* @MASK_27, align 4
  %178 = call i32 @saa7146_write(%struct.saa7146_dev* %175, i32 %176, i32 %177)
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %174, %173
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @ttpci_budget_debiread(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_init(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_camchange_irq(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
