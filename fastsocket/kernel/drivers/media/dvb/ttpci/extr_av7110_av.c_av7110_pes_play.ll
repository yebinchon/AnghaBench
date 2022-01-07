; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_pes_play.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_pes_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"resync\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pread=0x%08lx, pwrite=0x%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_pes_play(i8* %0, %struct.dvb_ringbuffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dvb_ringbuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dvb_ringbuffer* %1, %struct.dvb_ringbuffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %14, i32 0, i32 0
  %16 = call i32 @wake_up(i32* %15)
  store i32 -1, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %56
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %20 = call i32 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %24, i32 0, i32 0
  %26 = call i32 @wake_up(i32* %25)
  store i32 -1, i32* %4, align 4
  br label %98

27:                                               ; preds = %18
  %28 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %29 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %28, i32 0)
  %30 = shl i32 %29, 24
  store i32 %30, i32* %9, align 4
  %31 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %32 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %31, i32 1)
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %37 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %36, i32 2)
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %42 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %41, i32 3)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, -16
  %47 = icmp eq i32 %46, 480
  br i1 %47, label %55, label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -32
  %51 = icmp eq i32 %50, 448
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 445
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %48, %27
  br label %60

56:                                               ; preds = %52
  %57 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %59 = call i32 @DVB_RINGBUFFER_SKIP(%struct.dvb_ringbuffer* %58, i32 1)
  br label %18

60:                                               ; preds = %55
  %61 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %62 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %61, i32 4)
  %63 = shl i32 %62, 8
  store i32 %63, i32* %10, align 4
  %64 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %65 = call i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer* %64, i32 5)
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 6
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %60
  %78 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %79 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %78, i32 0, i32 0
  %80 = call i32 @wake_up(i32* %79)
  store i32 -1, i32* %4, align 4
  br label %98

81:                                               ; preds = %73
  %82 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @dvb_ringbuffer_read(%struct.dvb_ringbuffer* %82, i8* %83, i64 %85)
  %87 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %88 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %91 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %89, i64 %92)
  %94 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  %95 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %94, i32 0, i32 0
  %96 = call i32 @wake_up(i32* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %81, %77, %23, %13
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dvb_ringbuffer_avail(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @DVB_RINGBUFFER_PEEK(%struct.dvb_ringbuffer*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @DVB_RINGBUFFER_SKIP(%struct.dvb_ringbuffer*, i32) #1

declare dso_local i32 @dvb_ringbuffer_read(%struct.dvb_ringbuffer*, i8*, i64) #1

declare dso_local i32 @dprintk(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
