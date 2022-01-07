; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_fw_tx_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_fw_tx_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.carl9170fw_txsq_desc = type { i32 }

@TXSQ_MAGIC = common dso_local global i32 0, align 4
@CARL9170FW_TXSQ_DESC_CUR_VER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_fw_tx_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_fw_tx_sequence(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.carl9170fw_txsq_desc*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %6 = load i32, i32* @TXSQ_MAGIC, align 4
  %7 = load i32, i32* @CARL9170FW_TXSQ_DESC_CUR_VER, align 4
  %8 = call %struct.carl9170fw_txsq_desc* @carl9170_fw_find_desc(%struct.ar9170* %5, i32 %6, i32 4, i32 %7)
  store %struct.carl9170fw_txsq_desc* %8, %struct.carl9170fw_txsq_desc** %4, align 8
  %9 = load %struct.carl9170fw_txsq_desc*, %struct.carl9170fw_txsq_desc** %4, align 8
  %10 = icmp ne %struct.carl9170fw_txsq_desc* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.carl9170fw_txsq_desc*, %struct.carl9170fw_txsq_desc** %4, align 8
  %13 = getelementptr inbounds %struct.carl9170fw_txsq_desc, %struct.carl9170fw_txsq_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %17 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %20 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @valid_cpu_addr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %11
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %28
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.carl9170fw_txsq_desc* @carl9170_fw_find_desc(%struct.ar9170*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @valid_cpu_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
