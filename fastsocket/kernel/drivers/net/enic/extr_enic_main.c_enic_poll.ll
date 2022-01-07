; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.enic = type { i32*, i32*, i32* }

@enic_rq_service = common dso_local global i32 0, align 4
@enic_wq_service = common dso_local global i32 0, align 4
@enic_rq_alloc_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @enic_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_poll(%struct.napi_struct* %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %17 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.enic* @netdev_priv(%struct.net_device* %19)
  store %struct.enic* %20, %struct.enic** %6, align 8
  %21 = load %struct.enic*, %struct.enic** %6, align 8
  %22 = call i32 @enic_cq_rq(%struct.enic* %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.enic*, %struct.enic** %6, align 8
  %24 = call i32 @enic_cq_wq(%struct.enic* %23, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = call i32 (...) @enic_legacy_io_intr()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %27 = load %struct.enic*, %struct.enic** %6, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @enic_rq_service, align 4
  %35 = call i32 @vnic_cq_service(i32* %32, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.enic*, %struct.enic** %6, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @enic_wq_service, align 4
  %44 = call i32 @vnic_cq_service(i32* %41, i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %2
  %51 = load %struct.enic*, %struct.enic** %6, align 8
  %52 = getelementptr inbounds %struct.enic, %struct.enic* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @vnic_intr_return_credits(i32* %56, i32 %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %50, %2
  %60 = load %struct.enic*, %struct.enic** %6, align 8
  %61 = getelementptr inbounds %struct.enic, %struct.enic* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* @enic_rq_alloc_buf, align 4
  %65 = call i32 @vnic_rq_fill(i32* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %76 = call i32 @napi_complete(%struct.napi_struct* %75)
  %77 = load %struct.enic*, %struct.enic** %6, align 8
  %78 = getelementptr inbounds %struct.enic, %struct.enic* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @vnic_intr_unmask(i32* %82)
  br label %84

84:                                               ; preds = %74, %70
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_legacy_io_intr(...) #1

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
