; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i64*, i64*, i32, i32, i32 (i32, i32)*, i32 }
%struct.qib_pportdata = type { i64 }

@QIB_MAX_IB_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_disarm_piobufs_set(%struct.qib_devdata* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_pportdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @QIB_MAX_IB_PORTS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.qib_pportdata*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %27, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %16, i64 %25
  store %struct.qib_pportdata* null, %struct.qib_pportdata** %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %17

30:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i64*, i64** %5, align 8
  %38 = call i64 @test_bit(i32 %36, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %98

41:                                               ; preds = %35
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.qib_pportdata* @is_sdma_buf(%struct.qib_devdata* %42, i32 %43)
  store %struct.qib_pportdata* %44, %struct.qib_pportdata** %7, align 8
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %46 = icmp ne %struct.qib_pportdata* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %50 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %16, i64 %51
  store %struct.qib_pportdata* %48, %struct.qib_pportdata** %52, align 8
  br label %98

53:                                               ; preds = %41
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 3
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = call i64 @test_bit(i32 %58, i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 1
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = call i64 @test_bit(i32 %66, i64* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %64
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @find_ctxt(%struct.qib_devdata* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %53
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %80 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @__set_bit(i32 %78, i32 %81)
  store i32 0, i32* %12, align 4
  br label %93

83:                                               ; preds = %72, %64
  store i32 1, i32* %12, align 4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 5
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @QIB_SENDCTRL_DISARM_BUF(i32 %90)
  %92 = call i32 %86(i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %83, %77
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %95 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %94, i32 0, i32 3
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %47, %40
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %31

101:                                              ; preds = %31
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %16, i64 %110
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %111, align 8
  %113 = icmp ne %struct.qib_pportdata* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %16, i64 %116
  %118 = load %struct.qib_pportdata*, %struct.qib_pportdata** %117, align 8
  %119 = call i32 @qib_cancel_sends(%struct.qib_pportdata* %118)
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local %struct.qib_pportdata* @is_sdma_buf(%struct.qib_devdata*, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @find_ctxt(%struct.qib_devdata*, i32) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @QIB_SENDCTRL_DISARM_BUF(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @qib_cancel_sends(%struct.qib_pportdata*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
