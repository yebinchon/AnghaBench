; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.tg3_napi* }
%struct.tg3_napi = type { i32, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@TG3_HW_STATUS_SIZE = common dso_local global i32 0, align 4
@TG3_TX_RING_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_init_rings(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = call i32 @tg3_free_rings(%struct.tg3* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %78, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %8
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  %17 = load %struct.tg3_napi*, %struct.tg3_napi** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %17, i64 %19
  store %struct.tg3_napi* %20, %struct.tg3_napi** %5, align 8
  %21 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %22 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %24 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %26 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %25, i32 0, i32 6
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %30 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %34 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %33, i32 0, i32 6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* @TG3_HW_STATUS_SIZE, align 4
  %37 = call i32 @memset(%struct.TYPE_2__* %35, i32 0, i32 %36)
  %38 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %39 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %41 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %43 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %14
  %47 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %48 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* @TG3_TX_RING_BYTES, align 4
  %51 = call i32 @memset(%struct.TYPE_2__* %49, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %46, %14
  %53 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %54 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %61 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.tg3*, %struct.tg3** %3, align 8
  %64 = call i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3* %63)
  %65 = call i32 @memset(%struct.TYPE_2__* %62, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.tg3*, %struct.tg3** %3, align 8
  %68 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %69 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %68, i32 0, i32 0
  %70 = call i64 @tg3_rx_prodring_alloc(%struct.tg3* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.tg3*, %struct.tg3** %3, align 8
  %74 = call i32 @tg3_free_rings(%struct.tg3* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %8

81:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %72
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @tg3_free_rings(%struct.tg3*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3*) #1

declare dso_local i64 @tg3_rx_prodring_alloc(%struct.tg3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
