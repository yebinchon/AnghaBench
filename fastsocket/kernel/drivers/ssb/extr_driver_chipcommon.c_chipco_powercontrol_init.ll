; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_chipcommon.c_chipco_powercontrol_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_chipcommon.c_chipco_powercontrol_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ssb_bus* }
%struct.TYPE_3__ = type { i32 }
%struct.ssb_bus = type { i32, i32 }

@SSB_CHIPCO_CHIPCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_CAP_PCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_SYSCLKCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PLLONDELAY = common dso_local global i32 0, align 4
@SSB_CHIPCO_FREFSELDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*)* @chipco_powercontrol_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipco_powercontrol_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %8, align 8
  store %struct.ssb_bus* %9, %struct.ssb_bus** %3, align 8
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 17185
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %21 = load i32, i32* @SSB_CHIPCO_CHIPCTL, align 4
  %22 = call i32 @chipco_write32(%struct.ssb_chipcommon* %20, i32 %21, i32 932)
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %30 = load i32, i32* @SSB_CHIPCO_CHIPCTL, align 4
  %31 = call i32 @chipco_write32(%struct.ssb_chipcommon* %29, i32 %30, i32 164)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %36 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SSB_CHIPCO_CAP_PCTL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %76

42:                                               ; preds = %34
  %43 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %44 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 10
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %52 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %53 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %54 = load i32, i32* @SSB_CHIPCO_SYSCLKCTL, align 4
  %55 = call i32 @chipco_read32(%struct.ssb_chipcommon* %53, i32 %54)
  %56 = and i32 %55, 65535
  %57 = or i32 %56, 262144
  %58 = call i32 @chipco_write32(%struct.ssb_chipcommon* %51, i32 %52, i32 %57)
  br label %76

59:                                               ; preds = %42
  %60 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %61 = call i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon* %60, i32 1)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %63 = load i32, i32* @SSB_CHIPCO_PLLONDELAY, align 4
  %64 = load i32, i32* %4, align 4
  %65 = mul nsw i32 %64, 150
  %66 = add nsw i32 %65, 999999
  %67 = sdiv i32 %66, 1000000
  %68 = call i32 @chipco_write32(%struct.ssb_chipcommon* %62, i32 %63, i32 %67)
  %69 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %70 = load i32, i32* @SSB_CHIPCO_FREFSELDELAY, align 4
  %71 = load i32, i32* %4, align 4
  %72 = mul nsw i32 %71, 15
  %73 = add nsw i32 %72, 999999
  %74 = sdiv i32 %73, 1000000
  %75 = call i32 @chipco_write32(%struct.ssb_chipcommon* %69, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %41, %59, %50
  ret void
}

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
