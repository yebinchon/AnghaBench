; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_bios_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_bios_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, i64, %struct.firmware* }
%struct.firmware = type { i32* }

@NX_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@NX_UNI_BIOS_VERSION_OFF = common dso_local global i32 0, align 4
@NX_BIOS_VERSION_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netxen_adapter*)* @nx_get_bios_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nx_get_bios_version(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 2
  %9 = load %struct.firmware*, %struct.firmware** %8, align 8
  store %struct.firmware* %9, %struct.firmware** %4, align 8
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NX_UNIFIED_ROMIMAGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.firmware*, %struct.firmware** %4, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* @NX_UNI_BIOS_VERSION_OFF, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @cpu_to_le32(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = shl i64 %29, 16
  %31 = load i64, i64* %5, align 8
  %32 = lshr i64 %31, 8
  %33 = and i64 %32, 65280
  %34 = add i64 %30, %33
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 24
  %37 = add i64 %34, %36
  store i64 %37, i64* %2, align 8
  br label %46

38:                                               ; preds = %1
  %39 = load %struct.firmware*, %struct.firmware** %4, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NX_BIOS_VERSION_OFFSET, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @cpu_to_le32(i32 %44)
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %38, %18
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
