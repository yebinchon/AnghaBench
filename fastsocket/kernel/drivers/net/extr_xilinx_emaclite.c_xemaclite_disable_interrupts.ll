; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xilinx_emaclite.c_xemaclite_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_local = type { i64, i64, i64 }

@XEL_GIER_OFFSET = common dso_local global i64 0, align 8
@XEL_GIER_GIE_MASK = common dso_local global i32 0, align 4
@XEL_TSR_OFFSET = common dso_local global i64 0, align 8
@XEL_TSR_XMIT_IE_MASK = common dso_local global i32 0, align 4
@XEL_BUFFER_OFFSET = common dso_local global i64 0, align 8
@XEL_RSR_OFFSET = common dso_local global i64 0, align 8
@XEL_RSR_RECV_IE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_local*)* @xemaclite_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xemaclite_disable_interrupts(%struct.net_local* %0) #0 {
  %2 = alloca %struct.net_local*, align 8
  %3 = alloca i32, align 4
  store %struct.net_local* %0, %struct.net_local** %2, align 8
  %4 = load %struct.net_local*, %struct.net_local** %2, align 8
  %5 = getelementptr inbounds %struct.net_local, %struct.net_local* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XEL_GIER_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* @XEL_GIER_GIE_MASK, align 4
  %10 = call i32 @out_be32(i64 %8, i32 %9)
  %11 = load %struct.net_local*, %struct.net_local** %2, align 8
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @in_be32(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.net_local*, %struct.net_local** %2, align 8
  %18 = getelementptr inbounds %struct.net_local, %struct.net_local* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @XEL_TSR_XMIT_IE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @out_be32(i64 %21, i32 %25)
  %27 = load %struct.net_local*, %struct.net_local** %2, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %1
  %32 = load %struct.net_local*, %struct.net_local** %2, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @in_be32(i64 %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.net_local*, %struct.net_local** %2, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @XEL_TSR_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @XEL_TSR_XMIT_IE_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @out_be32(i64 %46, i32 %50)
  br label %52

52:                                               ; preds = %31, %1
  %53 = load %struct.net_local*, %struct.net_local** %2, align 8
  %54 = getelementptr inbounds %struct.net_local, %struct.net_local* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @in_be32(i64 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.net_local*, %struct.net_local** %2, align 8
  %60 = getelementptr inbounds %struct.net_local, %struct.net_local* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @XEL_RSR_RECV_IE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @out_be32(i64 %63, i32 %67)
  %69 = load %struct.net_local*, %struct.net_local** %2, align 8
  %70 = getelementptr inbounds %struct.net_local, %struct.net_local* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %52
  %74 = load %struct.net_local*, %struct.net_local** %2, align 8
  %75 = getelementptr inbounds %struct.net_local, %struct.net_local* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @in_be32(i64 %80)
  store i32 %81, i32* %3, align 4
  %82 = load %struct.net_local*, %struct.net_local** %2, align 8
  %83 = getelementptr inbounds %struct.net_local, %struct.net_local* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XEL_BUFFER_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @XEL_RSR_OFFSET, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @XEL_RSR_RECV_IE_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = call i32 @out_be32(i64 %88, i32 %92)
  br label %94

94:                                               ; preds = %73, %52
  ret void
}

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @in_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
