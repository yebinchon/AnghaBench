; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_int_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_int_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.lme2510_state* }
%struct.lme2510_state = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lme2510_int_response = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"INT Interupt Service Started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @lme2510_int_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_int_read(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.lme2510_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.lme2510_state*, %struct.lme2510_state** %8, align 8
  store %struct.lme2510_state* %9, %struct.lme2510_state** %4, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.TYPE_6__* @usb_alloc_urb(i32 0, i32 %10)
  %12 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %13 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %12, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %15 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %29 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32* @usb_buffer_alloc(i32 %26, i32 5000, i32 %27, i32* %31)
  %33 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %34 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %36 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %21
  %43 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %44 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_rcvintpipe(i32 %55, i32 10)
  %57 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %58 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @lme2510_int_response, align 4
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %62 = call i32 @usb_fill_int_urb(%struct.TYPE_6__* %45, i32 %50, i32 %56, i32* %59, i32 4096, i32 %60, %struct.dvb_usb_adapter* %61, i32 11)
  %63 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %64 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %65 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %71 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(%struct.TYPE_6__* %72, i32 %73)
  %75 = call i32 @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %42, %39, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_6__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_6__*, i32, i32, i32*, i32, i32, %struct.dvb_usb_adapter*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
