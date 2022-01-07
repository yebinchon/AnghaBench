; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i32 }

@OCI2C_CONTROL = common dso_local global i32 0, align 4
@OCI2C_CTRL_EN = common dso_local global i32 0, align 4
@OCI2C_CTRL_IEN = common dso_local global i32 0, align 4
@OCI2C_PRELOW = common dso_local global i32 0, align 4
@OCI2C_PREHIGH = common dso_local global i32 0, align 4
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_IACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocores_i2c*)* @ocores_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocores_init(%struct.ocores_i2c* %0) #0 {
  %2 = alloca %struct.ocores_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %2, align 8
  %5 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %6 = load i32, i32* @OCI2C_CONTROL, align 4
  %7 = call i32 @oc_getreg(%struct.ocores_i2c* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %9 = load i32, i32* @OCI2C_CONTROL, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @OCI2C_CTRL_EN, align 4
  %12 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = call i32 @oc_setreg(%struct.ocores_i2c* %8, i32 %9, i32 %15)
  %17 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %18 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 500
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %23 = load i32, i32* @OCI2C_PRELOW, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @oc_setreg(%struct.ocores_i2c* %22, i32 %23, i32 %25)
  %27 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %28 = load i32, i32* @OCI2C_PREHIGH, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 8
  %31 = call i32 @oc_setreg(%struct.ocores_i2c* %27, i32 %28, i32 %30)
  %32 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %33 = load i32, i32* @OCI2C_CMD, align 4
  %34 = load i32, i32* @OCI2C_CMD_IACK, align 4
  %35 = call i32 @oc_setreg(%struct.ocores_i2c* %32, i32 %33, i32 %34)
  %36 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %37 = load i32, i32* @OCI2C_CONTROL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OCI2C_CTRL_IEN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @OCI2C_CTRL_EN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @oc_setreg(%struct.ocores_i2c* %36, i32 %37, i32 %42)
  ret void
}

declare dso_local i32 @oc_getreg(%struct.ocores_i2c*, i32) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
