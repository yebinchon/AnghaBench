; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_local = type { i64, i64, i64 }

@XEL_TSR_OFFSET = common dso_local global i64 0, align 8
@XEL_TSR_XMIT_IE_MASK = common dso_local global i32 0, align 4
@XEL_BUFFER_OFFSET = common dso_local global i64 0, align 8
@XEL_RSR_OFFSET = common dso_local global i64 0, align 8
@XEL_RSR_RECV_IE_MASK = common dso_local global i32 0, align 4
@XEL_GIER_OFFSET = common dso_local global i64 0, align 8
@XEL_GIER_GIE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_local*)* @xemaclite_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_enable_interrupts(%struct.net_local* %0) #0 {
  %2 = alloca %struct.net_local*, align 8
  %3 = alloca i32, align 4
  store %struct.net_local* %0, %struct.net_local** %2, align 8
  %4 = load %struct.net_local*, %struct.net_local** %2, align 8
  %5 = getelementptr inbounds %struct.net_local, %struct.net_local* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @in_be32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.net_local*, %struct.net_local** %2, align 8
  %11 = getelementptr inbounds %struct.net_local, %struct.net_local* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @XEL_TSR_XMIT_IE_MASK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @out_be32(i64 %14, i32 %17)
  %19 = load %struct.net_local*, %struct.net_local** %2, align 8
  %20 = getelementptr inbounds %struct.net_local, %struct.net_local* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.net_local*, %struct.net_local** %2, align 8
  %25 = getelementptr inbounds %struct.net_local, %struct.net_local* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @in_be32(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.net_local*, %struct.net_local** %2, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @XEL_TSR_XMIT_IE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @out_be32(i64 %38, i32 %41)
  br label %43

43:                                               ; preds = %23, %1
  %44 = load %struct.net_local*, %struct.net_local** %2, align 8
  %45 = getelementptr inbounds %struct.net_local, %struct.net_local* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @XEL_RSR_RECV_IE_MASK, align 4
  %50 = call i32 @out_be32(i64 %48, i32 %49)
  %51 = load %struct.net_local*, %struct.net_local** %2, align 8
  %52 = getelementptr inbounds %struct.net_local, %struct.net_local* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load %struct.net_local*, %struct.net_local** %2, align 8
  %57 = getelementptr inbounds %struct.net_local, %struct.net_local* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @XEL_RSR_RECV_IE_MASK, align 4
  %64 = call i32 @out_be32(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %43
  %66 = load %struct.net_local*, %struct.net_local** %2, align 8
  %67 = getelementptr inbounds %struct.net_local, %struct.net_local* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XEL_GIER_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* @XEL_GIER_GIE_MASK, align 4
  %72 = call i32 @out_be32(i64 %70, i32 %71)
  ret void
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
