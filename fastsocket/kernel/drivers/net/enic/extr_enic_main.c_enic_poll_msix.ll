; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_poll_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_poll_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.enic = type { i32*, i32*, i32*, %struct.napi_struct* }

@enic_rq_service = common dso_local global i32 0, align 4
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @enic_poll_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_poll_msix(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.enic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.enic* @netdev_priv(%struct.net_device* %16)
  store %struct.enic* %17, %struct.enic** %6, align 8
  %18 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %19 = load %struct.enic*, %struct.enic** %6, align 8
  %20 = getelementptr inbounds %struct.enic, %struct.enic* %19, i32 0, i32 3
  %21 = load %struct.napi_struct*, %struct.napi_struct** %20, align 8
  %22 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %21, i64 0
  %23 = ptrtoint %struct.napi_struct* %18 to i64
  %24 = ptrtoint %struct.napi_struct* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.enic*, %struct.enic** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @enic_cq_rq(%struct.enic* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.enic*, %struct.enic** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @enic_msix_rq_intr(%struct.enic* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.enic*, %struct.enic** %6, align 8
  %36 = getelementptr inbounds %struct.enic, %struct.enic* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @enic_rq_service, align 4
  %43 = call i32 @vnic_cq_service(i32* %40, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ugt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %2
  %47 = load %struct.enic*, %struct.enic** %6, align 8
  %48 = getelementptr inbounds %struct.enic, %struct.enic* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @vnic_intr_return_credits(i32* %52, i32 %53, i32 0, i32 0)
  br label %55

55:                                               ; preds = %46, %2
  %56 = load %struct.enic*, %struct.enic** %6, align 8
  %57 = getelementptr inbounds %struct.enic, %struct.enic* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* @enic_rq_alloc_buf, align 4
  %63 = call i32 @vnic_rq_fill(i32* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %74 = call i32 @napi_complete(%struct.napi_struct* %73)
  %75 = load %struct.enic*, %struct.enic** %6, align 8
  %76 = getelementptr inbounds %struct.enic, %struct.enic* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @vnic_intr_unmask(i32* %80)
  br label %82

82:                                               ; preds = %72, %68
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @enic_msix_rq_intr(%struct.enic*, i32) #1

declare dso_local i32 @vnic_cq_service(i32*, i32, i32, i32*) #1

declare dso_local i32 @vnic_intr_return_credits(i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_rq_fill(i32*, i32) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @vnic_intr_unmask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
