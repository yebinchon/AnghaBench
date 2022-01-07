; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_sync_xmac_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_sync_xmac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.niu_xmac_stats }
%struct.niu_xmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TXMAC_FRM_CNT = common dso_local global i32 0, align 4
@TXMAC_BYTE_CNT = common dso_local global i32 0, align 4
@LINK_FAULT_CNT = common dso_local global i32 0, align 4
@RXMAC_ALIGN_ERR_CNT = common dso_local global i32 0, align 4
@RXMAC_FRAG_CNT = common dso_local global i32 0, align 4
@RXMAC_MC_FRM_CNT = common dso_local global i32 0, align 4
@RXMAC_BC_FRM_CNT = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT1 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT2 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT3 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT4 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT5 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT6 = common dso_local global i32 0, align 4
@RXMAC_HIST_CNT7 = common dso_local global i32 0, align 4
@RXMAC_BT_CNT = common dso_local global i32 0, align 4
@RXMAC_CD_VIO_CNT = common dso_local global i32 0, align 4
@RXMAC_MPSZER_CNT = common dso_local global i32 0, align 4
@RXMAC_CRC_ER_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_sync_xmac_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_sync_xmac_stats(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_xmac_stats*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.niu_xmac_stats* %6, %struct.niu_xmac_stats** %3, align 8
  %7 = load i32, i32* @TXMAC_FRM_CNT, align 4
  %8 = call i64 @nr64_mac(i32 %7)
  %9 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %10 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @TXMAC_BYTE_CNT, align 4
  %16 = call i64 @nr64_mac(i32 %15)
  %17 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %18 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @LINK_FAULT_CNT, align 4
  %24 = call i64 @nr64_mac(i32 %23)
  %25 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %26 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* @RXMAC_ALIGN_ERR_CNT, align 4
  %32 = call i64 @nr64_mac(i32 %31)
  %33 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %34 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* @RXMAC_FRAG_CNT, align 4
  %40 = call i64 @nr64_mac(i32 %39)
  %41 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %42 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load i32, i32* @RXMAC_MC_FRM_CNT, align 4
  %48 = call i64 @nr64_mac(i32 %47)
  %49 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %50 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32, i32* @RXMAC_BC_FRM_CNT, align 4
  %56 = call i64 @nr64_mac(i32 %55)
  %57 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %58 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32, i32* @RXMAC_HIST_CNT1, align 4
  %64 = call i64 @nr64_mac(i32 %63)
  %65 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %66 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load i32, i32* @RXMAC_HIST_CNT2, align 4
  %72 = call i64 @nr64_mac(i32 %71)
  %73 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %74 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i32, i32* @RXMAC_HIST_CNT3, align 4
  %80 = call i64 @nr64_mac(i32 %79)
  %81 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %82 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load i32, i32* @RXMAC_HIST_CNT4, align 4
  %88 = call i64 @nr64_mac(i32 %87)
  %89 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %90 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load i32, i32* @RXMAC_HIST_CNT5, align 4
  %96 = call i64 @nr64_mac(i32 %95)
  %97 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %98 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load i32, i32* @RXMAC_HIST_CNT6, align 4
  %104 = call i64 @nr64_mac(i32 %103)
  %105 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %106 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i32, i32* @RXMAC_HIST_CNT7, align 4
  %112 = call i64 @nr64_mac(i32 %111)
  %113 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %114 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load i32, i32* @RXMAC_BT_CNT, align 4
  %120 = call i64 @nr64_mac(i32 %119)
  %121 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %122 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i32, i32* @RXMAC_CD_VIO_CNT, align 4
  %128 = call i64 @nr64_mac(i32 %127)
  %129 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %130 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load i32, i32* @RXMAC_MPSZER_CNT, align 4
  %136 = call i64 @nr64_mac(i32 %135)
  %137 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %138 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load i32, i32* @RXMAC_CRC_ER_CNT, align 4
  %144 = call i64 @nr64_mac(i32 %143)
  %145 = load %struct.niu_xmac_stats*, %struct.niu_xmac_stats** %3, align 8
  %146 = getelementptr inbounds %struct.niu_xmac_stats, %struct.niu_xmac_stats* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %144
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  ret void
}

declare dso_local i64 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
