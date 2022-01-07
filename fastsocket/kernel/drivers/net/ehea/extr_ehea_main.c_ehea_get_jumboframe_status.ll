; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_jumboframe_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_jumboframe_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hcp_ehea_port_cb4 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no mem for cb4\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_PORT_CB4 = common dso_local global i32 0, align 4
@H_PORT_CB4_JUMBO = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port*, i32*)* @ehea_get_jumboframe_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_get_jumboframe_status(%struct.ehea_port* %0, i32* %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hcp_ehea_port_cb4*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64 @get_zeroed_page(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hcp_ehea_port_cb4*
  store %struct.hcp_ehea_port_cb4* %12, %struct.hcp_ehea_port_cb4** %5, align 8
  %13 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %14 = icmp ne %struct.hcp_ehea_port_cb4* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %26 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @H_PORT_CB4, align 4
  %29 = load i32, i32* @H_PORT_CB4_JUMBO, align 4
  %30 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %31 = call i64 @ehea_h_query_ehea_port(i32 %24, i32 %27, i32 %28, i32 %29, %struct.hcp_ehea_port_cb4* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @H_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %19
  %36 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %37 = getelementptr inbounds %struct.hcp_ehea_port_cb4, %struct.hcp_ehea_port_cb4* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  store i32 1, i32* %41, align 4
  br label %63

42:                                               ; preds = %35
  %43 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %44 = getelementptr inbounds %struct.hcp_ehea_port_cb4, %struct.hcp_ehea_port_cb4* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %46 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @H_PORT_CB4, align 4
  %54 = load i32, i32* @H_PORT_CB4_JUMBO, align 4
  %55 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %56 = call i64 @ehea_h_modify_ehea_port(i32 %49, i32 %52, i32 %53, i32 %54, %struct.hcp_ehea_port_cb4* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @H_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32*, i32** %4, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %42
  br label %63

63:                                               ; preds = %62, %40
  br label %67

64:                                               ; preds = %19
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %69 = ptrtoint %struct.hcp_ehea_port_cb4* %68 to i64
  %70 = call i32 @free_page(i64 %69)
  br label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %15
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i64 @ehea_h_query_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb4*) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb4*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
