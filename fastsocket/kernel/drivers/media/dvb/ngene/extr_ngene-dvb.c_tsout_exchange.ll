; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-dvb.c_tsout_exchange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-dvb.c_tsout_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { %struct.ngene* }
%struct.ngene = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DF_SWAP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tsout_exchange(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ngene_channel*, align 8
  %12 = alloca %struct.ngene*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ngene_channel*
  store %struct.ngene_channel* %15, %struct.ngene_channel** %11, align 8
  %16 = load %struct.ngene_channel*, %struct.ngene_channel** %11, align 8
  %17 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %16, i32 0, i32 0
  %18 = load %struct.ngene*, %struct.ngene** %17, align 8
  store %struct.ngene* %18, %struct.ngene** %12, align 8
  %19 = load %struct.ngene*, %struct.ngene** %12, align 8
  %20 = getelementptr inbounds %struct.ngene, %struct.ngene* %19, i32 0, i32 0
  %21 = call i32 @dvb_ringbuffer_avail(%struct.TYPE_3__* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = srem i32 %22, 188
  %24 = load i32, i32* %13, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @FillTSBuffer(i8* %33, i32 %36, i32 %37)
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = load %struct.ngene*, %struct.ngene** %12, align 8
  %43 = getelementptr inbounds %struct.ngene, %struct.ngene* %42, i32 0, i32 0
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @dvb_ringbuffer_read(%struct.TYPE_3__* %43, i8* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @DF_SWAP32, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @swap_buffer(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load %struct.ngene*, %struct.ngene** %12, align 8
  %58 = getelementptr inbounds %struct.ngene, %struct.ngene* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @wake_up_interruptible(i32* %59)
  %61 = load i8*, i8** %7, align 8
  ret i8* %61
}

declare dso_local i32 @dvb_ringbuffer_avail(%struct.TYPE_3__*) #1

declare dso_local i32 @FillTSBuffer(i8*, i32, i32) #1

declare dso_local i32 @dvb_ringbuffer_read(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @swap_buffer(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
