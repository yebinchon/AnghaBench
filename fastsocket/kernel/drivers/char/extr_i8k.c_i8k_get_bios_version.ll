; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_bios_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_bios_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32 }

@I8K_SMM_BIOS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i8k_get_bios_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_get_bios_version() #0 {
  %1 = alloca %struct.smm_regs, align 4
  %2 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %1, i32 0, i32 0
  %3 = load i32, i32* @I8K_SMM_BIOS_VERSION, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i64 @i8k_smm(%struct.smm_regs* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %11

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i64 [ %4, %6 ], [ %10, %7 ]
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

declare dso_local i64 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
