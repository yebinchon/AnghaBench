; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@I8K_SMM_GET_TEMP = common dso_local global i32 0, align 4
@I8K_MAX_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i8k_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_get_temp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smm_regs, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %8 = load i32, i32* @I8K_SMM_GET_TEMP, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = call i32 @i8k_smm(%struct.smm_regs* %4)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
