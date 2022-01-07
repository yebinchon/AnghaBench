; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_service_bnx2x_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_service_bnx2x_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_2__, i32 (%struct.cnic_dev.0*, i64)*, %struct.TYPE_2__ }
%struct.cnic_dev.0 = type opaque
%struct.TYPE_2__ = type { i64, i32 }
%struct.bnx2x = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i64 0, align 8
@IGU_SEG_ACCESS_DEF = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cnic_service_bnx2x_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_service_bnx2x_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.cnic_dev*
  store %struct.cnic_dev* %9, %struct.cnic_dev** %3, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 2
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %4, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bnx2x* @netdev_priv(i32 %15)
  store %struct.bnx2x* %16, %struct.bnx2x** %5, align 8
  %17 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %86

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %64
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %30 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %31 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %30, i32 0, i32 3
  %32 = call i64 @cnic_service_bnx2x_kcq(%struct.cnic_dev* %29, %struct.TYPE_2__* %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %34 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %39 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_KCQ_IDX, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @CNIC_WR16(%struct.cnic_dev* %33, i32 %37, i64 %43)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = call i32 @CNIC_SUPPORTS_FCOE(%struct.bnx2x* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %28
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 2
  %51 = load i32 (%struct.cnic_dev.0*, i64)*, i32 (%struct.cnic_dev.0*, i64)** %50, align 8
  %52 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %53 = bitcast %struct.cnic_dev* %52 to %struct.cnic_dev.0*
  %54 = load i64, i64* %6, align 8
  %55 = call i32 %51(%struct.cnic_dev.0* %53, i64 %54)
  br label %86

56:                                               ; preds = %28
  %57 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %58 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %59 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %58, i32 0, i32 1
  %60 = call i64 @cnic_service_bnx2x_kcq(%struct.cnic_dev* %57, %struct.TYPE_2__* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %28

65:                                               ; preds = %56
  %66 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %67 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %68 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MAX_KCQ_IDX, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @CNIC_WR16(%struct.cnic_dev* %66, i32 %70, i64 %76)
  %78 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %79 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %80 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IGU_SEG_ACCESS_DEF, align 4
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @IGU_INT_ENABLE, align 4
  %85 = call i32 @cnic_ack_igu_sb(%struct.cnic_dev* %78, i32 %81, i32 %82, i64 %83, i32 %84, i32 1)
  br label %86

86:                                               ; preds = %26, %65, %48
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @cnic_service_bnx2x_kcq(%struct.cnic_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i32, i64) #1

declare dso_local i32 @CNIC_SUPPORTS_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @cnic_ack_igu_sb(%struct.cnic_dev*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
