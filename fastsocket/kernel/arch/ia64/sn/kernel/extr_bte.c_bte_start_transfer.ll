; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte.c_bte_start_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte.c_bte_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bteinfo_s = type { i32 }

@IBLS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bteinfo_s*, i32, i32)* @bte_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bte_start_transfer(%struct.bteinfo_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bteinfo_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bteinfo_s* %0, %struct.bteinfo_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i64 (...) @is_shub2()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.bteinfo_s*, %struct.bteinfo_s** %4, align 8
  %11 = load i32, i32* @IBLS_BUSY, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  %16 = or i32 %11, %15
  %17 = call i32 @BTE_CTRL_STORE(%struct.bteinfo_s* %10, i32 %16)
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.bteinfo_s*, %struct.bteinfo_s** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BTE_LNSTAT_STORE(%struct.bteinfo_s* %19, i32 %20)
  %22 = load %struct.bteinfo_s*, %struct.bteinfo_s** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BTE_CTRL_STORE(%struct.bteinfo_s* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %9
  ret void
}

declare dso_local i64 @is_shub2(...) #1

declare dso_local i32 @BTE_CTRL_STORE(%struct.bteinfo_s*, i32) #1

declare dso_local i32 @BTE_LNSTAT_STORE(%struct.bteinfo_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
