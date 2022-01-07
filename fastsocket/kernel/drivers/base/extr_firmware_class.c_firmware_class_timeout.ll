; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_firmware_class_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_firmware_class.c_firmware_class_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @firmware_class_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @firmware_class_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.firmware_priv*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.firmware_priv*
  store %struct.firmware_priv* %5, %struct.firmware_priv** %3, align 8
  %6 = load %struct.firmware_priv*, %struct.firmware_priv** %3, align 8
  %7 = call i32 @fw_load_abort(%struct.firmware_priv* %6)
  ret void
}

declare dso_local i32 @fw_load_abort(%struct.firmware_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
