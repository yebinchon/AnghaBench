; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_xfer_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, %struct.mmc_request*, i32, i64, i32*, i64, %struct.TYPE_2__* }
%struct.mmc_request = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, %struct.mmc_request*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_data*)* @omap_hsmmc_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %7 = icmp ne %struct.mmc_data* %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  store %struct.mmc_request* %11, %struct.mmc_request** %5, align 8
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  br label %108

31:                                               ; preds = %23, %16, %8
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %32, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %33, align 8
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %38 = call i32 @mmc_request_done(i32 %36, %struct.mmc_request* %37)
  br label %108

39:                                               ; preds = %2
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mmc_dev(i32 %54)
  %56 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %63 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %64 = call i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host* %62, %struct.mmc_data* %63)
  %65 = call i32 @dma_unmap_sg(i32 %55, i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %51, %46, %39
  %67 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %87

84:                                               ; preds = %66
  %85 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %71
  %88 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %94 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %93, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %94, align 8
  %95 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %98, i32 0, i32 3
  %100 = load %struct.mmc_request*, %struct.mmc_request** %99, align 8
  %101 = call i32 @mmc_request_done(i32 %97, %struct.mmc_request* %100)
  br label %108

102:                                              ; preds = %87
  %103 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %104 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %103, i32 %106, i32* null)
  br label %108

108:                                              ; preds = %102, %92, %31, %28
  ret void
}

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_get_dma_dir(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
