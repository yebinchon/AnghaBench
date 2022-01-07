; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_in_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_in_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_in = type { i32, i32, i32, i32, i32, i32, i32* }

@L1_MODE_NULL = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@HDLC_BITREVERSE = common dso_local global i32 0, align 4
@L1_MODE_HDLC_56K = common dso_local global i64 0, align 8
@HDLC_56KBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st5481_in_mode(%struct.st5481_in* %0, i32 %1) #0 {
  %3 = alloca %struct.st5481_in*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.st5481_in* %0, %struct.st5481_in** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %7 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %15 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %17 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_unlink_urb(i32 %20)
  %22 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %23 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_unlink_urb(i32 %26)
  %28 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %29 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @L1_MODE_NULL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %12
  %34 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %35 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @L1_MODE_TRANS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load i32, i32* @HDLC_BITREVERSE, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %43 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @L1_MODE_HDLC_56K, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @HDLC_56KBIT, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %54 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %53, i32 0, i32 5
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @isdnhdlc_rcv_init(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %33
  %58 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %59 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %62 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @st5481_usb_pipe_reset(i32 %60, i32 %63, i32* null, i32* null)
  %65 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %66 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %69 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %72 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @st5481_usb_device_ctrl_msg(i32 %67, i32 %70, i32 %73, i32* null, i32* null)
  %75 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %76 = call i32 @st5481_start_rcv(%struct.st5481_in* %75)
  br label %85

77:                                               ; preds = %12
  %78 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %79 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.st5481_in*, %struct.st5481_in** %3, align 8
  %82 = getelementptr inbounds %struct.st5481_in, %struct.st5481_in* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @st5481_usb_device_ctrl_msg(i32 %80, i32 %83, i32 0, i32* null, i32* null)
  br label %85

85:                                               ; preds = %11, %77, %57
  ret void
}

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i32 @isdnhdlc_rcv_init(i32*, i32) #1

declare dso_local i32 @st5481_usb_pipe_reset(i32, i32, i32*, i32*) #1

declare dso_local i32 @st5481_usb_device_ctrl_msg(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @st5481_start_rcv(%struct.st5481_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
