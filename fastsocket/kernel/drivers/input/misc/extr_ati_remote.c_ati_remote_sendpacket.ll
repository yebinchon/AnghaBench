; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_sendpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_sendpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@SEND_FLAG_IN_PROGRESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sendpacket: usb_submit_urb failed: %d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@SEND_FLAG_COMPLETE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_remote*, i32, i8*)* @ati_remote_sendpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_sendpacket(%struct.ati_remote* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ati_remote*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ati_remote* %0, %struct.ati_remote** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %10 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @LO(i32 %16)
  %18 = call i32 @memcpy(i64 %14, i8* %15, i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call signext i8 @HI(i32 %19)
  %21 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %22 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 %20, i8* %27, align 1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @LO(i32 %28)
  %30 = add nsw i64 %29, 1
  %31 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %32 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i64 %30, i64* %34, align 8
  %35 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %36 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %39 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @SEND_FLAG_IN_PROGRESS, align 4
  %43 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %44 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %46 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call i32 @usb_submit_urb(%struct.TYPE_5__* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %3
  %53 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %54 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %89

60:                                               ; preds = %3
  %61 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %62 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %65 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %60
  %73 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %74 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SEND_FLAG_COMPLETE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %72, %60
  %80 = phi i1 [ true, %60 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* @HZ, align 4
  %83 = call i32 @wait_event_timeout(i32 %63, i32 %81, i32 %82)
  %84 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %85 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @usb_kill_urb(%struct.TYPE_5__* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %52
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @LO(i32) #1

declare dso_local signext i8 @HI(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
