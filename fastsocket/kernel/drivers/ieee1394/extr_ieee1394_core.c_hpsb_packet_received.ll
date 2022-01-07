; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_packet_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_packet_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"received packet during reset; ignoring\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"received packet\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"received packet with bogus transaction code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_packet_received(%struct.hpsb_host* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hpsb_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %11 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @HPSB_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %44

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dump_packet(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %18, i64 %19, i32 -1)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %41 [
    i32 128, label %27
    i32 131, label %27
    i32 133, label %27
    i32 135, label %27
    i32 129, label %33
    i32 130, label %33
    i32 132, label %33
    i32 134, label %33
    i32 136, label %33
    i32 137, label %40
  ]

27:                                               ; preds = %17, %17, %17, %17
  %28 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @handle_packet_response(%struct.hpsb_host* %28, i32 %29, i32* %30, i64 %31)
  br label %44

33:                                               ; preds = %17, %17, %17, %17, %17
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @handle_incoming_packet(%struct.hpsb_host* %34, i32 %35, i32* %36, i64 %37, i32 %38)
  br label %44

40:                                               ; preds = %17
  br label %44

41:                                               ; preds = %17
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, ...) @HPSB_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %15, %41, %40, %33, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HPSB_DEBUG(i8*, ...) #1

declare dso_local i32 @dump_packet(i8*, i32*, i64, i32) #1

declare dso_local i32 @handle_packet_response(%struct.hpsb_host*, i32, i32*, i64) #1

declare dso_local i32 @handle_incoming_packet(%struct.hpsb_host*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
