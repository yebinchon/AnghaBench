; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_cq_exch_desc.h_cq_fcp_rq_desc_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_cq_exch_desc.h_cq_fcp_rq_desc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cq_fcp_rq_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cq_desc = type { i32 }

@CQ_FCP_RQ_DESC_FLAGS_EOP = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FLAGS_SOP = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FLAGS_PRT = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_TMPL_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_BYTES_WRITTEN_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_PACKET_ERR_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_PACKET_ERR_SHIFT = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_VS_STRIPPED_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_VS_STRIPPED_SHIFT = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FC_CRC_OK_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FCOE_ERR_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FCOE_ERR_SHIFT = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FCS_OK_MASK = common dso_local global i32 0, align 4
@CQ_FCP_RQ_DESC_FCS_OK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cq_fcp_rq_desc*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @cq_fcp_rq_desc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_fcp_rq_desc_dec(%struct.cq_fcp_rq_desc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18) #0 {
  %20 = alloca %struct.cq_fcp_rq_desc*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  store %struct.cq_fcp_rq_desc* %0, %struct.cq_fcp_rq_desc** %20, align 8
  store i32* %1, i32** %21, align 8
  store i32* %2, i32** %22, align 8
  store i32* %3, i32** %23, align 8
  store i32* %4, i32** %24, align 8
  store i32* %5, i32** %25, align 8
  store i32* %6, i32** %26, align 8
  store i32* %7, i32** %27, align 8
  store i32* %8, i32** %28, align 8
  store i32* %9, i32** %29, align 8
  store i32* %10, i32** %30, align 8
  store i32* %11, i32** %31, align 8
  store i32* %12, i32** %32, align 8
  store i32* %13, i32** %33, align 8
  store i32* %14, i32** %34, align 8
  store i32* %15, i32** %35, align 8
  store i32* %16, i32** %36, align 8
  store i32* %17, i32** %37, align 8
  store i32* %18, i32** %38, align 8
  %39 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %40 = bitcast %struct.cq_fcp_rq_desc* %39 to %struct.cq_desc*
  %41 = load i32*, i32** %21, align 8
  %42 = load i32*, i32** %22, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = load i32*, i32** %24, align 8
  %45 = call i32 @cq_desc_dec(%struct.cq_desc* %40, i32* %41, i32* %42, i32* %43, i32* %44)
  %46 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %47 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CQ_FCP_RQ_DESC_FLAGS_EOP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load i32*, i32** %25, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %56 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CQ_FCP_RQ_DESC_FLAGS_SOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32*, i32** %26, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %65 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CQ_FCP_RQ_DESC_FLAGS_PRT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load i32*, i32** %33, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %74 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %28, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %78 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CQ_FCP_RQ_DESC_TMPL_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32*, i32** %29, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %84 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CQ_FCP_RQ_DESC_BYTES_WRITTEN_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32*, i32** %30, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %90 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CQ_FCP_RQ_DESC_PACKET_ERR_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @CQ_FCP_RQ_DESC_PACKET_ERR_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = load i32*, i32** %34, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %98 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CQ_FCP_RQ_DESC_VS_STRIPPED_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @CQ_FCP_RQ_DESC_VS_STRIPPED_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32*, i32** %37, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %106 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %38, align 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %110 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %31, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %114 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CQ_FCP_RQ_DESC_FC_CRC_OK_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32*, i32** %27, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %120 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CQ_FCP_RQ_DESC_FCOE_ERR_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* @CQ_FCP_RQ_DESC_FCOE_ERR_SHIFT, align 4
  %125 = ashr i32 %123, %124
  %126 = load i32*, i32** %35, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %128 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %32, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.cq_fcp_rq_desc*, %struct.cq_fcp_rq_desc** %20, align 8
  %132 = getelementptr inbounds %struct.cq_fcp_rq_desc, %struct.cq_fcp_rq_desc* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CQ_FCP_RQ_DESC_FCS_OK_MASK, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @CQ_FCP_RQ_DESC_FCS_OK_SHIFT, align 4
  %137 = ashr i32 %135, %136
  %138 = load i32*, i32** %36, align 8
  store i32 %137, i32* %138, align 4
  ret void
}

declare dso_local i32 @cq_desc_dec(%struct.cq_desc*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
