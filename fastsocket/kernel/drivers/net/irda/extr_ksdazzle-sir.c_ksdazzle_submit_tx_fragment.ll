; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_submit_tx_fragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ksdazzle-sir.c_ksdazzle_submit_tx_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksdazzle_cb = type { i32, i8*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@ksdazzle_send_irq = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksdazzle_cb*)* @ksdazzle_submit_tx_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksdazzle_submit_tx_fragment(%struct.ksdazzle_cb* %0) #0 {
  %2 = alloca %struct.ksdazzle_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ksdazzle_cb* %0, %struct.ksdazzle_cb** %2, align 8
  store i32 7, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %7 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %12 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %16 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 8)
  %19 = load i32, i32* %3, align 4
  %20 = add i32 248, %19
  %21 = trunc i32 %20 to i8
  %22 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %23 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %21, i8* %25, align 1
  %26 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %27 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %31 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @memcpy(i8* %29, i32 %32, i32 %33)
  %35 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %36 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %39 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %42 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %45 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_sndintpipe(i32 %43, i32 %46)
  %48 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %49 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @ksdazzle_send_irq, align 4
  %52 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %53 = call i32 @usb_fill_int_urb(%struct.TYPE_3__* %37, i32 %40, i32 %47, i8* %50, i32 8, i32 %51, %struct.ksdazzle_cb* %52, i32 1)
  %54 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %55 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %59 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32 @usb_submit_urb(%struct.TYPE_3__* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %14
  %66 = load i32, i32* %3, align 4
  br label %68

67:                                               ; preds = %14
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.ksdazzle_cb*, %struct.ksdazzle_cb** %2, align 8
  %71 = getelementptr inbounds %struct.ksdazzle_cb, %struct.ksdazzle_cb* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_3__*, i32, i32, i8*, i32, i32, %struct.ksdazzle_cb*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
