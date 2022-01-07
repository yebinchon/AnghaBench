; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_reset_digital.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_reset_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32 }
%struct.dib0090_config = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EN_PLL = common dso_local global i32 0, align 4
@EN_DIGCLK = common dso_local global i32 0, align 4
@EN_CRYSTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.dib0090_config*)* @dib0090_reset_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_reset_digital(%struct.dvb_frontend* %0, %struct.dib0090_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_config*, align 8
  %5 = alloca %struct.dib0090_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dib0090_config* %1, %struct.dib0090_config** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib0090_state*, %struct.dib0090_state** %7, align 8
  store %struct.dib0090_state* %8, %struct.dib0090_state** %5, align 8
  %9 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %10 = call i32 @HARD_RESET(%struct.dib0090_state* %9)
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %12 = load i32, i32* @EN_PLL, align 4
  %13 = call i32 @dib0090_write_reg(%struct.dib0090_state* %11, i32 36, i32 %12)
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %15 = load i32, i32* @EN_DIGCLK, align 4
  %16 = load i32, i32* @EN_PLL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EN_CRYSTAL, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dib0090_write_reg(%struct.dib0090_state* %14, i32 27, i32 %19)
  %21 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %22 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %23 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 %26, 11
  %28 = or i32 %27, 512
  %29 = or i32 %28, 256
  %30 = call i32 @dib0090_write_reg(%struct.dib0090_state* %21, i32 32, i32 %29)
  %31 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %32 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %2
  %36 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %37 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %38 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = shl i32 %42, 14
  %44 = or i32 0, %43
  %45 = or i32 %44, 1024
  %46 = or i32 %45, 512
  %47 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %48 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 5
  %51 = or i32 %46, %50
  %52 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %53 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 4
  %56 = or i32 %51, %55
  %57 = call i32 @dib0090_write_reg(%struct.dib0090_state* %36, i32 35, i32 %56)
  br label %77

58:                                               ; preds = %2
  %59 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %60 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %61 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = shl i32 %65, 14
  %67 = or i32 0, %66
  %68 = or i32 %67, 1024
  %69 = or i32 %68, 512
  %70 = or i32 %69, 224
  %71 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %72 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 4
  %75 = or i32 %70, %74
  %76 = call i32 @dib0090_write_reg(%struct.dib0090_state* %59, i32 35, i32 %75)
  br label %77

77:                                               ; preds = %58, %35
  %78 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %79 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %80 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 15
  %84 = or i32 %83, 8192
  %85 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %86 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 12
  %90 = or i32 %84, %89
  %91 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %92 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 6
  %96 = or i32 %90, %95
  %97 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %98 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %96, %100
  %102 = call i32 @dib0090_write_reg(%struct.dib0090_state* %78, i32 33, i32 %101)
  ret void
}

declare dso_local i32 @HARD_RESET(%struct.dib0090_state*) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
