; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_debug_fwtrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_debug_fwtrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }

@BFI_IOC_TRC_OFF = common dso_local global i64 0, align 8
@BNA_DBG_FWTRC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_ioc_debug_fwtrc(%struct.bfa_ioc* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* @BFI_IOC_TRC_OFF, align 8
  %11 = load i32, i32* @BNA_DBG_FWTRC_LEN, align 4
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %10, %16
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BNA_DBG_FWTRC_LEN, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @BNA_DBG_FWTRC_LEN, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @bfa_nw_ioc_smem_read(%struct.bfa_ioc* %26, i8* %27, i64 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @bfa_nw_ioc_smem_read(%struct.bfa_ioc*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
