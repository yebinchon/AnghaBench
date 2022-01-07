; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_usb_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_usb_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { %struct.st5481_ctrl }
%struct.st5481_ctrl = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ctrl_msg*, i32 }
%struct.ctrl_msg = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"control msg FIFO full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*, i8*, i8*, i32, i32, i32, i8*)* @usb_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_ctrl_msg(%struct.st5481_adapter* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.st5481_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.st5481_ctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ctrl_msg*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load %struct.st5481_adapter*, %struct.st5481_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %18, i32 0, i32 0
  store %struct.st5481_ctrl* %19, %struct.st5481_ctrl** %15, align 8
  %20 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %15, align 8
  %21 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @fifo_add(i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = call i32 @WARNING(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %65

27:                                               ; preds = %7
  %28 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %15, align 8
  %29 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.ctrl_msg*, %struct.ctrl_msg** %30, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %31, i64 %33
  store %struct.ctrl_msg* %34, %struct.ctrl_msg** %17, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %37 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %41 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = call i8* @cpu_to_le16p(i32* %11)
  %44 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %45 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = call i8* @cpu_to_le16p(i32* %12)
  %48 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %49 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %52 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %56 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.ctrl_msg*, %struct.ctrl_msg** %17, align 8
  %59 = getelementptr inbounds %struct.ctrl_msg, %struct.ctrl_msg* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.st5481_ctrl*, %struct.st5481_ctrl** %15, align 8
  %61 = getelementptr inbounds %struct.st5481_ctrl, %struct.st5481_ctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.st5481_adapter*, %struct.st5481_adapter** %8, align 8
  %64 = call i32 @usb_next_ctrl_msg(i32 %62, %struct.st5481_adapter* %63)
  br label %65

65:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @fifo_add(i32*) #1

declare dso_local i32 @WARNING(i8*) #1

declare dso_local i8* @cpu_to_le16p(i32*) #1

declare dso_local i32 @usb_next_ctrl_msg(i32, %struct.st5481_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
