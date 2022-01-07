; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_select_master_clock_4020.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_select_master_clock_4020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MASTER_CLOCK_4020_MASK = common dso_local global i32 0, align 4
@TRIG_OTHER = common dso_local global i64 0, align 8
@BNC_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@EXT_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@INTERNAL_CLOCK_4020_BITS = common dso_local global i32 0, align 4
@HW_CONFIG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_cmd*)* @select_master_clock_4020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_master_clock_4020(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %6 = load i32, i32* @MASTER_CLOCK_4020_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %7
  store i32 %12, i32* %10, align 8
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TRIG_OTHER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @CR_CHAN(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i32, i32* @BNC_CLOCK_4020_BITS, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 8
  br label %41

34:                                               ; preds = %18
  %35 = load i32, i32* @EXT_CLOCK_4020_BITS, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %34, %27
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* @INTERNAL_CLOCK_4020_BITS, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %41
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %55 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HW_CONFIG_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writew(i32 %53, i64 %59)
  ret void
}

declare dso_local %struct.TYPE_4__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
