; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_receive_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_receive_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32*, i64, %struct.mcs_cb* }
%struct.mcs_cb = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mcs_receive_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_receive_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mcs_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  store %struct.mcs_cb* %9, %struct.mcs_cb** %4, align 8
  %10 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %11 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = call i32 @netif_running(%struct.TYPE_3__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %119

22:                                               ; preds = %16
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %115

27:                                               ; preds = %22
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %3, align 8
  %31 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %32 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 576000
  br i1 %34, label %35, label %82

35:                                               ; preds = %27
  %36 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %37 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %40 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %44 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %43, i32 0, i32 2
  %45 = call i32 @async_unwrap_char(%struct.TYPE_3__* %38, i32* %42, i32* %44, i32 192)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %68, %35
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %54 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %57 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %61 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %60, i32 0, i32 2
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @async_unwrap_char(%struct.TYPE_3__* %55, i32* %59, i32* %61, i32 %66)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %73 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %76 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %80 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %79, i32 0, i32 2
  %81 = call i32 @async_unwrap_char(%struct.TYPE_3__* %74, i32* %78, i32* %80, i32 193)
  br label %111

82:                                               ; preds = %27
  %83 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %84 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 576000
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %89 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1152000
  br i1 %91, label %92, label %101

92:                                               ; preds = %87, %82
  %93 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %94 = load %struct.urb*, %struct.urb** %2, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.urb*, %struct.urb** %2, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mcs_unwrap_mir(%struct.mcs_cb* %93, i32* %96, i32 %99)
  br label %110

101:                                              ; preds = %87
  %102 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %103 = load %struct.urb*, %struct.urb** %2, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.urb*, %struct.urb** %2, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @mcs_unwrap_fir(%struct.mcs_cb* %102, i32* %105, i32 %108)
  br label %110

110:                                              ; preds = %101, %92
  br label %111

111:                                              ; preds = %110, %71
  %112 = load %struct.mcs_cb*, %struct.mcs_cb** %4, align 8
  %113 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %112, i32 0, i32 1
  %114 = call i32 @do_gettimeofday(i32* %113)
  br label %115

115:                                              ; preds = %111, %22
  %116 = load %struct.urb*, %struct.urb** %2, align 8
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call i32 @usb_submit_urb(%struct.urb* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %21, %15
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_3__*) #1

declare dso_local i32 @async_unwrap_char(%struct.TYPE_3__*, i32*, i32*, i32) #1

declare dso_local i32 @mcs_unwrap_mir(%struct.mcs_cb*, i32*, i32) #1

declare dso_local i32 @mcs_unwrap_fir(%struct.mcs_cb*, i32*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
