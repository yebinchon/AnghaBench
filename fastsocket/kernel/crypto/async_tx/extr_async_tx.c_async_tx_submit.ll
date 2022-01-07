; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_tx.c_async_tx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_tx.c_async_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.dma_async_tx_descriptor*, i32, %struct.dma_chan*, %struct.dma_async_tx_descriptor*, i32, i32 }
%struct.async_submit_ctl = type { i32, i32, i32, %struct.dma_async_tx_descriptor* }

@ASYNC_TX_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_tx_submit(%struct.dma_chan* %0, %struct.dma_async_tx_descriptor* %1, %struct.async_submit_ctl* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.async_submit_ctl*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_async_tx_descriptor* %1, %struct.dma_async_tx_descriptor** %5, align 8
  store %struct.async_submit_ctl* %2, %struct.async_submit_ctl** %6, align 8
  %9 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %10 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %9, i32 0, i32 3
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  store %struct.dma_async_tx_descriptor* %11, %struct.dma_async_tx_descriptor** %7, align 8
  %12 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %13 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %18 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %23 = icmp ne %struct.dma_async_tx_descriptor* %22, null
  br i1 %23, label %24, label %92

24:                                               ; preds = %3
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %26 = call i64 @async_tx_test_ack(%struct.dma_async_tx_descriptor* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %29, i32 0, i32 4
  %31 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %30, align 8
  %32 = icmp ne %struct.dma_async_tx_descriptor* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %34, i32 0, i32 1
  %36 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %35, align 8
  %37 = icmp ne %struct.dma_async_tx_descriptor* %36, null
  br label %38

38:                                               ; preds = %33, %28, %24
  %39 = phi i1 [ true, %28 ], [ true, %24 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %46 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %45, i32 0, i32 1
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %46, align 8
  %48 = icmp ne %struct.dma_async_tx_descriptor* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %50, i32 0, i32 3
  %52 = load %struct.dma_chan*, %struct.dma_chan** %51, align 8
  %53 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %54 = icmp eq %struct.dma_chan* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %57 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %58 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %57, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %56, %struct.dma_async_tx_descriptor** %58, align 8
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %60 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %61 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %60, i32 0, i32 4
  store %struct.dma_async_tx_descriptor* %59, %struct.dma_async_tx_descriptor** %61, align 8
  store i32 128, i32* %8, align 4
  br label %63

62:                                               ; preds = %49
  store i32 130, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %55
  br label %73

64:                                               ; preds = %38
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %65, i32 0, i32 3
  %67 = load %struct.dma_chan*, %struct.dma_chan** %66, align 8
  %68 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %69 = icmp eq %struct.dma_chan* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 129, i32* %8, align 4
  br label %72

71:                                               ; preds = %64
  store i32 130, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %63
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %74, i32 0, i32 2
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %91 [
    i32 128, label %78
    i32 130, label %79
    i32 129, label %83
  ]

78:                                               ; preds = %73
  br label %91

79:                                               ; preds = %73
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %81 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %82 = call i32 @async_tx_channel_switch(%struct.dma_async_tx_descriptor* %80, %struct.dma_async_tx_descriptor* %81)
  br label %91

83:                                               ; preds = %73
  %84 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %85 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %84, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %85, align 8
  %86 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %86, i32 0, i32 0
  %88 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %87, align 8
  %89 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %90 = call i32 %88(%struct.dma_async_tx_descriptor* %89)
  br label %91

91:                                               ; preds = %73, %83, %79, %78
  br label %100

92:                                               ; preds = %3
  %93 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %94 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %93, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %94, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %95, i32 0, i32 0
  %97 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %96, align 8
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %99 = call i32 %97(%struct.dma_async_tx_descriptor* %98)
  br label %100

100:                                              ; preds = %92, %91
  %101 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %6, align 8
  %102 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ASYNC_TX_ACK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %109 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %108)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %112 = icmp ne %struct.dma_async_tx_descriptor* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %115 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %114)
  br label %116

116:                                              ; preds = %113, %110
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @async_tx_test_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @async_tx_channel_switch(%struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
