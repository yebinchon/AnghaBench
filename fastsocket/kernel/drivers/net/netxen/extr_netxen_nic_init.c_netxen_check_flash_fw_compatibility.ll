; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_check_flash_fw_compatibility.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_check_flash_fw_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NX_FW_VERSION_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to read flash fwversion\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NETXEN_MIN_P3_FW_SUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"Flash fw[%d.%d.%d] is < min fw supported[4.0.505]. Please update firmware on flash\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_check_flash_fw_compatibility(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @NX_IS_REVISION_P2(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = load i32, i32* @NX_FW_VERSION_OFFSET, align 4
  %16 = bitcast i64* %4 to i32*
  %17 = call i64 @netxen_rom_fast_read(%struct.netxen_adapter* %14, i32 %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %13
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @NETXEN_DECODE_VERSION(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* @NETXEN_MIN_P3_FW_SUPP, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %49

35:                                               ; preds = %27
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @_major(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @_minor(i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @_build(i64 %44)
  %46 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %35, %34, %19, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i64 @netxen_rom_fast_read(%struct.netxen_adapter*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @NETXEN_DECODE_VERSION(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @_major(i64) #1

declare dso_local i32 @_minor(i64) #1

declare dso_local i32 @_build(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
