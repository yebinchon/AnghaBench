; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_sense_adapter_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_sense_adapter_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i64, i32 }
%struct.hcp_query_ehea = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_adapter*)* @ehea_sense_adapter_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_sense_adapter_attr(%struct.ehea_adapter* %0) #0 {
  %2 = alloca %struct.ehea_adapter*, align 8
  %3 = alloca %struct.hcp_query_ehea*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.hcp_query_ehea*
  store %struct.hcp_query_ehea* %9, %struct.hcp_query_ehea** %3, align 8
  %10 = load %struct.hcp_query_ehea*, %struct.hcp_query_ehea** %3, align 8
  %11 = icmp ne %struct.hcp_query_ehea* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.ehea_adapter*, %struct.ehea_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hcp_query_ehea*, %struct.hcp_query_ehea** %3, align 8
  %20 = call i64 @ehea_h_query_ehea(i32 %18, %struct.hcp_query_ehea* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @H_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.hcp_query_ehea*, %struct.hcp_query_ehea** %3, align 8
  %29 = getelementptr inbounds %struct.hcp_query_ehea, %struct.hcp_query_ehea* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.ehea_adapter*, %struct.ehea_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.hcp_query_ehea*, %struct.hcp_query_ehea** %3, align 8
  %36 = ptrtoint %struct.hcp_query_ehea* %35 to i64
  %37 = call i32 @free_page(i64 %36)
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @ehea_h_query_ehea(i32, %struct.hcp_query_ehea*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
