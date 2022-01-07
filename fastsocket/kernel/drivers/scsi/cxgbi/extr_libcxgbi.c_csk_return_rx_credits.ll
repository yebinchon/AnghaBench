; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_return_rx_credits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_csk_return_rx_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i64, i64, i32, i32, %struct.cxgbi_device* }
%struct.cxgbi_device = type { i64, i64, i64 (%struct.cxgbi_sock*, i64)* }

@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"csk 0x%p,%u,0x%lu,%u, seq %u, wup %u, thre %u, %u.\0A\00", align 1
@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*, i32)* @csk_return_rx_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csk_return_rx_credits(%struct.cxgbi_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 5
  %10 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  store %struct.cxgbi_device* %10, %struct.cxgbi_device** %5, align 8
  %11 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %30 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %33 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @log_debug(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %13, i64 %16, i32 %19, i32 %22, i64 %25, i64 %28, i64 %31, i64 %34)
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CTP_ESTABLISHED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %93

42:                                               ; preds = %2
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %44 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %93

57:                                               ; preds = %42
  %58 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %59 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %93

66:                                               ; preds = %57
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 16384
  %69 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %70 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %79 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76, %66
  %83 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %84 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %83, i32 0, i32 2
  %85 = load i64 (%struct.cxgbi_sock*, i64)*, i64 (%struct.cxgbi_sock*, i64)** %84, align 8
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i64 %85(%struct.cxgbi_sock* %86, i64 %87)
  %89 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %90 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %41, %56, %65, %82, %76
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
