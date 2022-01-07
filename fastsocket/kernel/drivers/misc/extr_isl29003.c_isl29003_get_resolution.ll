; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_get_resolution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_isl29003.c_isl29003_get_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ISL29003_REG_COMMAND = common dso_local global i32 0, align 4
@ISL29003_RES_MASK = common dso_local global i32 0, align 4
@ISL29003_RES_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @isl29003_get_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29003_get_resolution(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %3 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %4 = load i32, i32* @ISL29003_REG_COMMAND, align 4
  %5 = load i32, i32* @ISL29003_RES_MASK, align 4
  %6 = load i32, i32* @ISL29003_RES_SHIFT, align 4
  %7 = call i32 @__isl29003_read_reg(%struct.i2c_client* %3, i32 %4, i32 %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @__isl29003_read_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
