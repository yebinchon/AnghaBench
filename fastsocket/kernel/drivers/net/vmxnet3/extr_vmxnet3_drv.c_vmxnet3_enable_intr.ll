; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_enable_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_REG_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*, i32)* @vmxnet3_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_enable_intr(%struct.vmxnet3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %6 = load i64, i64* @VMXNET3_REG_IMR, align 8
  %7 = load i32, i32* %4, align 4
  %8 = mul i32 %7, 8
  %9 = zext i32 %8 to i64
  %10 = add nsw i64 %6, %9
  %11 = call i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter* %5, i64 %10, i32 0)
  ret void
}

declare dso_local i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
