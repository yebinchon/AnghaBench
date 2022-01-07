; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_update_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_update_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32*, i32, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.l4_kwq_update_pg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@L4_KWQE_OPCODE_VALUE_UPDATE_PG = common dso_local global i32 0, align 4
@L4_LAYER_CODE = common dso_local global i32 0, align 4
@L4_KWQ_UPDATE_PG_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@L4_KWQ_UPDATE_PG_VALIDS_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_update_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_update_pg(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.l4_kwq_update_pg*, align 8
  %5 = alloca [1 x %struct.kwqe*], align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %6 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %6, i32 0, i32 4
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  store %struct.cnic_dev* %8, %struct.cnic_dev** %3, align 8
  %9 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %9, i32 0, i32 3
  %11 = bitcast i32* %10 to %struct.l4_kwq_update_pg*
  store %struct.l4_kwq_update_pg* %11, %struct.l4_kwq_update_pg** %4, align 8
  %12 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %13 = call i32 @memset(%struct.l4_kwq_update_pg* %12, i32 0, i32 44)
  %14 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %15 = bitcast %struct.l4_kwq_update_pg* %14 to %struct.kwqe*
  %16 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  store %struct.kwqe* %15, %struct.kwqe** %16, align 8
  %17 = load i32, i32* @L4_KWQE_OPCODE_VALUE_UPDATE_PG, align 4
  %18 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %19 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @L4_LAYER_CODE, align 4
  %21 = load i32, i32* @L4_KWQ_UPDATE_PG_LAYER_CODE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %24 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %29 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %31 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %36 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %38 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %43 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %45 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %50 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %52 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %57 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %59 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %64 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %66 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %71 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %73 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %76 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @L4_KWQ_UPDATE_PG_VALIDS_DA, align 4
  %78 = load %struct.l4_kwq_update_pg*, %struct.l4_kwq_update_pg** %4, align 8
  %79 = getelementptr inbounds %struct.l4_kwq_update_pg, %struct.l4_kwq_update_pg* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %81 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %80, i32 0, i32 0
  %82 = load i32 (%struct.cnic_dev*, %struct.kwqe**, i32)*, i32 (%struct.cnic_dev*, %struct.kwqe**, i32)** %81, align 8
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %84 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  %85 = call i32 %82(%struct.cnic_dev* %83, %struct.kwqe** %84, i32 1)
  ret i32 %85
}

declare dso_local i32 @memset(%struct.l4_kwq_update_pg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
