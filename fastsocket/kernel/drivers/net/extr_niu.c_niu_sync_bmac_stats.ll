; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_sync_bmac_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_sync_bmac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.niu_bmac_stats }
%struct.niu_bmac_stats = type { i32, i32, i32, i32, i32, i32 }

@BTXMAC_BYTE_CNT = common dso_local global i32 0, align 4
@BTXMAC_FRM_CNT = common dso_local global i32 0, align 4
@BRXMAC_FRAME_CNT = common dso_local global i32 0, align 4
@BRXMAC_ALIGN_ERR_CNT = common dso_local global i32 0, align 4
@BRXMAC_CODE_VIOL_ERR_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_sync_bmac_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_sync_bmac_stats(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_bmac_stats*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.niu_bmac_stats* %6, %struct.niu_bmac_stats** %3, align 8
  %7 = load i32, i32* @BTXMAC_BYTE_CNT, align 4
  %8 = call i64 @nr64_mac(i32 %7)
  %9 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %10 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @BTXMAC_FRM_CNT, align 4
  %16 = call i64 @nr64_mac(i32 %15)
  %17 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %18 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @BRXMAC_FRAME_CNT, align 4
  %24 = call i64 @nr64_mac(i32 %23)
  %25 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %26 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* @BRXMAC_ALIGN_ERR_CNT, align 4
  %32 = call i64 @nr64_mac(i32 %31)
  %33 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %34 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* @BRXMAC_ALIGN_ERR_CNT, align 4
  %40 = call i64 @nr64_mac(i32 %39)
  %41 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %42 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load i32, i32* @BRXMAC_CODE_VIOL_ERR_CNT, align 4
  %48 = call i64 @nr64_mac(i32 %47)
  %49 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %50 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  ret void
}

declare dso_local i64 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
