; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.dvb_ringbuffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %12, %13
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i64 [ %26, %19 ], [ 0, %27 ]
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i64 %39, i32* %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  store i32* %45, i32** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %32, %28
  %52 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %53 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i64 %58, i32* %59, i64 %60)
  %62 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %68 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = urem i64 %66, %69
  %71 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %72 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %6, align 8
  ret i64 %73
}

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
