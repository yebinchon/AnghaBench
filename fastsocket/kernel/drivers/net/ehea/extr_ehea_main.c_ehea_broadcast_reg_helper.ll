; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_broadcast_reg_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_broadcast_reg_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EHEA_BCMC_BROADCAST = common dso_local global i32 0, align 4
@EHEA_BCMC_UNTAGGED = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%sregistering bc address failed (tagged)\00", align 1
@H_REG_BCMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@EIO = common dso_local global i32 0, align 4
@EHEA_BCMC_VLANID_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%sregistering bc address failed (vlan)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port*, i32)* @ehea_broadcast_reg_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @EHEA_BCMC_BROADCAST, align 4
  %9 = load i32, i32* @EHEA_BCMC_UNTAGGED, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %17 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @ehea_h_reg_dereg_bcmc(i32 %15, i32 %18, i32 %19, i32 %22, i32 0, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @H_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @H_REG_BCMC, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @ehea_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %68

37:                                               ; preds = %2
  %38 = load i32, i32* @EHEA_BCMC_BROADCAST, align 4
  %39 = load i32, i32* @EHEA_BCMC_VLANID_ALL, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %42 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %47 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @ehea_h_reg_dereg_bcmc(i32 %45, i32 %48, i32 %49, i32 %52, i32 0, i32 %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @H_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %37
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @H_REG_BCMC, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @ehea_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %37
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @ehea_h_reg_dereg_bcmc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ehea_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
