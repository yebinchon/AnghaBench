; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_pci_is_same_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_pci_is_same_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA82XX_P3_ADDR_QDR_NET_MAX = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_DDR_NET = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_DDR_NET_MAX = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_OCM0 = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_OCM0_MAX = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_OCM1 = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_OCM1_MAX = common dso_local global i64 0, align 8
@QLA8XXX_ADDR_QDR_NET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i64)* @qla4_82xx_pci_is_same_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_82xx_pci_is_same_window(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @QLA82XX_P3_ADDR_QDR_NET_MAX, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @QLA8XXX_ADDR_DDR_NET, align 8
  %11 = load i64, i64* @QLA8XXX_ADDR_DDR_NET_MAX, align 8
  %12 = call i64 @QLA8XXX_ADDR_IN_RANGE(i64 %9, i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @BUG()
  br label %53

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @QLA8XXX_ADDR_OCM0, align 8
  %19 = load i64, i64* @QLA8XXX_ADDR_OCM0_MAX, align 8
  %20 = call i64 @QLA8XXX_ADDR_IN_RANGE(i64 %17, i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %54

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @QLA8XXX_ADDR_OCM1, align 8
  %26 = load i64, i64* @QLA8XXX_ADDR_OCM1_MAX, align 8
  %27 = call i64 @QLA8XXX_ADDR_IN_RANGE(i64 %24, i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %54

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @QLA8XXX_ADDR_QDR_NET, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @QLA8XXX_ADDR_IN_RANGE(i64 %31, i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @QLA8XXX_ADDR_QDR_NET, align 8
  %39 = sub i64 %37, %38
  %40 = lshr i64 %39, 22
  %41 = and i64 %40, 63
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %14
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %29, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @QLA8XXX_ADDR_IN_RANGE(i64, i64, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
