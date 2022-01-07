; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_group_address_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_group_address_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_dot11_grp_addr_tbl = type { i32, i64, i64 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx group address tbl\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADDRESS_GROUP_MAX_LEN = common dso_local global i32 0, align 4
@DOT11_GROUP_ADDRESS_TBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set group addr table: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_group_address_tbl(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_dot11_grp_addr_tbl*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1251_debug(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32 24, i32 %7)
  store %struct.acx_dot11_grp_addr_tbl* %8, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %9 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %10 = icmp ne %struct.acx_dot11_grp_addr_tbl* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %16 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %18 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %20 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ADDRESS_GROUP_MAX_LEN, align 4
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  %24 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %25 = load i32, i32* @DOT11_GROUP_ADDRESS_TBL, align 4
  %26 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %27 = call i32 @wl1251_cmd_configure(%struct.wl1251* %24, i32 %25, %struct.acx_dot11_grp_addr_tbl* %26, i32 24)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @wl1251_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %34

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %30, %11
  %35 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %3, align 8
  %36 = call i32 @kfree(%struct.acx_dot11_grp_addr_tbl* %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_dot11_grp_addr_tbl*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_dot11_grp_addr_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
