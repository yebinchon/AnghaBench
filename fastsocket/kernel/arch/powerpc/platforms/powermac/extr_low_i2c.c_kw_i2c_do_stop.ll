; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_do_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_kw_i2c_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_host_kw = type { i32, i32 }

@reg_control = common dso_local global i32 0, align 4
@KW_I2C_CTL_STOP = common dso_local global i32 0, align 4
@state_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmac_i2c_host_kw*, i32)* @kw_i2c_do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kw_i2c_do_stop(%struct.pmac_i2c_host_kw* %0, i32 %1) #0 {
  %3 = alloca %struct.pmac_i2c_host_kw*, align 8
  %4 = alloca i32, align 4
  store %struct.pmac_i2c_host_kw* %0, %struct.pmac_i2c_host_kw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @reg_control, align 4
  %6 = load i32, i32* @KW_I2C_CTL_STOP, align 4
  %7 = call i32 @kw_write_reg(i32 %5, i32 %6)
  %8 = load i32, i32* @state_stop, align 4
  %9 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %10 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %13 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret void
}

declare dso_local i32 @kw_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
