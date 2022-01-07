; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_get_bootld_offs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_get_bootld_offs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.uni_data_desc = type { i32 }

@QLCNIC_BOOTLD_START = common dso_local global i64 0, align 8
@QLCNIC_UNI_DIR_SECT_BOOTLD = common dso_local global i32 0, align 4
@QLCNIC_UNI_BOOTLD_IDX_OFF = common dso_local global i32 0, align 4
@QLCNIC_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.qlcnic_adapter*)* @qlcnic_get_bootld_offs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qlcnic_get_bootld_offs(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.uni_data_desc*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %5 = load i64, i64* @QLCNIC_BOOTLD_START, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %7 = load i32, i32* @QLCNIC_UNI_DIR_SECT_BOOTLD, align 4
  %8 = load i32, i32* @QLCNIC_UNI_BOOTLD_IDX_OFF, align 4
  %9 = call %struct.uni_data_desc* @qlcnic_get_data_desc(%struct.qlcnic_adapter* %6, i32 %7, i32 %8)
  store %struct.uni_data_desc* %9, %struct.uni_data_desc** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLCNIC_UNIFIED_ROMIMAGE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  %19 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  ret i32* %29
}

declare dso_local %struct.uni_data_desc* @qlcnic_get_data_desc(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
