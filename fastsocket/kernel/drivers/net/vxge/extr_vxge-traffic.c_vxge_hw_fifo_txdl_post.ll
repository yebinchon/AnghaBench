; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_fifo_txdl_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_fifo = type { %struct.TYPE_4__*, i32, %struct.__vxge_hw_channel }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.__vxge_hw_channel = type { i32 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, i64 }
%struct.vxge_hw_fifo_txd = type { i32 }

@VXGE_HW_FIFO_TXD_GATHER_CODE_LAST = common dso_local global i32 0, align 4
@VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_fifo_txdl_post(%struct.__vxge_hw_fifo* %0, i8* %1) #0 {
  %3 = alloca %struct.__vxge_hw_fifo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__vxge_hw_fifo_txdl_priv*, align 8
  %6 = alloca %struct.vxge_hw_fifo_txd*, align 8
  %7 = alloca %struct.vxge_hw_fifo_txd*, align 8
  %8 = alloca %struct.__vxge_hw_channel*, align 8
  store %struct.__vxge_hw_fifo* %0, %struct.__vxge_hw_fifo** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %9, i32 0, i32 2
  store %struct.__vxge_hw_channel* %10, %struct.__vxge_hw_channel** %8, align 8
  %11 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo* %11, i8* %12)
  store %struct.__vxge_hw_fifo_txdl_priv* %13, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.vxge_hw_fifo_txd*
  store %struct.vxge_hw_fifo_txd* %15, %struct.vxge_hw_fifo_txd** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.vxge_hw_fifo_txd*
  %18 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %19 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %17, i64 %22
  store %struct.vxge_hw_fifo_txd* %23, %struct.vxge_hw_fifo_txd** %6, align 8
  %24 = load i32, i32* @VXGE_HW_FIFO_TXD_GATHER_CODE_LAST, align 4
  %25 = call i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32 %24)
  %26 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %6, align 8
  %27 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @VXGE_HW_FIFO_TXD_LIST_OWN_ADAPTER, align 4
  %31 = load %struct.vxge_hw_fifo_txd*, %struct.vxge_hw_fifo_txd** %7, align 8
  %32 = getelementptr inbounds %struct.vxge_hw_fifo_txd, %struct.vxge_hw_fifo_txd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %36 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %35, i32 0, i32 2
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @vxge_hw_channel_dtr_post(%struct.__vxge_hw_channel* %36, i8* %37)
  %39 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %40 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %41 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.__vxge_hw_fifo_txdl_priv*, %struct.__vxge_hw_fifo_txdl_priv** %5, align 8
  %45 = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, %struct.__vxge_hw_fifo_txdl_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %49 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @__vxge_hw_non_offload_db_post(%struct.__vxge_hw_fifo* %39, i32 %43, i32 %47, i32 %50)
  %52 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %53 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %59 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %66 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %72 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %70, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %2
  %79 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %80 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %3, align 8
  %86 = getelementptr inbounds %struct.__vxge_hw_fifo, %struct.__vxge_hw_fifo* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 %84, i64* %89, align 8
  br label %90

90:                                               ; preds = %78, %2
  ret void
}

declare dso_local %struct.__vxge_hw_fifo_txdl_priv* @__vxge_hw_fifo_txdl_priv(%struct.__vxge_hw_fifo*, i8*) #1

declare dso_local i32 @VXGE_HW_FIFO_TXD_GATHER_CODE(i32) #1

declare dso_local i32 @vxge_hw_channel_dtr_post(%struct.__vxge_hw_channel*, i8*) #1

declare dso_local i32 @__vxge_hw_non_offload_db_post(%struct.__vxge_hw_fifo*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
