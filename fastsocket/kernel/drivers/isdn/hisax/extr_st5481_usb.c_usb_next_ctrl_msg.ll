; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_usb_next_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_usb_next_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32 }
%struct.st5481_adapter = type { i32, %struct.st5481_ctrl }
%struct.st5481_ctrl = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ctrl_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"request=0x%02x,value=0x%04x,index=%x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.st5481_adapter*)* @usb_next_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_next_ctrl_msg(%struct.urb* %0, %struct.st5481_adapter* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.st5481_adapter*, align 8
  %5 = alloca %struct.st5481_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store %struct.st5481_adapter* %1, %struct.st5481_adapter** %4, align 8
  %7 = load %struct.st5481_adapter*, %struct.st5481_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %7, i32 0, i32 1
  store %struct.st5481_ctrl* %8, %struct.st5481_ctrl** %5, align 8
  %9 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %9, i32 0, i32 1
  %11 = call i64 @test_and_set_bit(i32 0, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @fifo_remove(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %22 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %21, i32 0, i32 1
  %23 = call i32 @test_and_clear_bit(i32 0, i32* %22)
  br label %65

24:                                               ; preds = %14
  %25 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to i8*
  %33 = load %struct.urb*, %struct.urb** %3, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.urb*, %struct.urb** %3, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.ctrl_msg*
  %39 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.urb*, %struct.urb** %3, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to %struct.ctrl_msg*
  %46 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.urb*, %struct.urb** %3, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.ctrl_msg*
  %53 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %48, i32 %55)
  %57 = load %struct.st5481_adapter*, %struct.st5481_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.urb*, %struct.urb** %3, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.urb*, %struct.urb** %3, align 8
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32 @SUBMIT_URB(%struct.urb* %62, i32 %63)
  br label %65

65:                                               ; preds = %24, %20, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @fifo_remove(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SUBMIT_URB(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
