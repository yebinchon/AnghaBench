; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_manage.c_e1000e_mng_write_dhcp_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_manage.c_e1000e_mng_write_dhcp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_host_mng_command_header = type { i64, i64, i64, i32, i32 }

@E1000_MNG_DHCP_TX_PAYLOAD_CMD = common dso_local global i32 0, align 4
@HICR = common dso_local global i32 0, align 4
@E1000_HICR_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_mng_write_dhcp_info(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_host_mng_command_header, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @E1000_MNG_DHCP_TX_PAYLOAD_CMD, align 4
  %12 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %19 = call i64 @e1000_mng_enable_host_if(%struct.e1000_hw* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %4, align 8
  br label %49

24:                                               ; preds = %3
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.e1000_host_mng_command_header, %struct.e1000_host_mng_command_header* %8, i32 0, i32 0
  %29 = call i64 @e1000_mng_host_if_write(%struct.e1000_hw* %25, i32* %26, i32 %27, i32 32, i64* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %4, align 8
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = call i64 @e1000_mng_write_cmd_header(%struct.e1000_hw* %35, %struct.e1000_host_mng_command_header* %8)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @HICR, align 4
  %43 = call i32 @er32(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @HICR, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @E1000_HICR_C, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ew32(i32 %44, i32 %47)
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %41, %39, %32, %22
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @e1000_mng_enable_host_if(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_mng_host_if_write(%struct.e1000_hw*, i32*, i32, i32, i64*) #1

declare dso_local i64 @e1000_mng_write_cmd_header(%struct.e1000_hw*, %struct.e1000_host_mng_command_header*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
