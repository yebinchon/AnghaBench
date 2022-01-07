; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_scan_logical_unit_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_sbp2.c_sbp2_scan_logical_unit_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_target = type { i32 }
%struct.fw_csr_iterator = type { i32 }

@SBP2_CSR_LOGICAL_UNIT_NUMBER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_target*, i32*)* @sbp2_scan_logical_unit_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_scan_logical_unit_dir(%struct.sbp2_target* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbp2_target*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fw_csr_iterator, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbp2_target* %0, %struct.sbp2_target** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %6, i32* %9)
  br label %11

11:                                               ; preds = %26, %2
  %12 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %6, i32* %7, i32* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SBP2_CSR_LOGICAL_UNIT_NUMBER, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @sbp2_add_logical_unit(%struct.sbp2_target* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %18, %14
  br label %11

27:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local i64 @sbp2_add_logical_unit(%struct.sbp2_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
