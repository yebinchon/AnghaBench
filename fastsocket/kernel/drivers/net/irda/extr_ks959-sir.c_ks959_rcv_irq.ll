; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_rcv_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_rcv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64, i32*, %struct.ks959_cb* }
%struct.ks959_cb = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"kingsun_rcv_irq: urb asynchronously failed - %d\00", align 1
@OUTSIDE_FRAME = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ks959_rcv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks959_rcv_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ks959_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.ks959_cb*, %struct.ks959_cb** %8, align 8
  store %struct.ks959_cb* %9, %struct.ks959_cb** %3, align 8
  %10 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %11 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @netif_running(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %17 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %29 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %109

30:                                               ; preds = %18
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %30
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %86, %35
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  %47 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %48 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %57 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %55, %58
  %60 = xor i32 %59, 85
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %66 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %46
  %70 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %71 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %74 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %78 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %77, i32 0, i32 2
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @async_unwrap_char(%struct.TYPE_4__* %72, i32* %76, %struct.TYPE_5__* %78, i32 %83)
  br label %85

85:                                               ; preds = %69, %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %39

89:                                               ; preds = %39
  %90 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %91 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %90, i32 0, i32 3
  %92 = call i32 @do_gettimeofday(i32* %91)
  %93 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %94 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OUTSIDE_FRAME, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.ks959_cb*, %struct.ks959_cb** %3, align 8
  %102 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %89, %30
  %104 = load %struct.urb*, %struct.urb** %2, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.urb*, %struct.urb** %2, align 8
  %107 = load i32, i32* @GFP_ATOMIC, align 4
  %108 = call i32 @usb_submit_urb(%struct.urb* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %23, %15
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @err(i8*, i64) #1

declare dso_local i32 @async_unwrap_char(%struct.TYPE_4__*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
