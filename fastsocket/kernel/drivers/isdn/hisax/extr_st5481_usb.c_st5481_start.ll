; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32, %struct.st5481_intr }
%struct.st5481_intr = type { i32 }

@st5481_start.init_cmd_table = internal constant [25 x i32] [i32 129, i32 0, i32 128, i32 0, i32 131, i32 13, i32 132, i32 41, i32 130, i32 20, i32 137, i32 1, i32 136, i32 134, i32 139, i32 6, i32 141, i32 20, i32 138, i32 6, i32 140, i32 20, i32 135, i32 418, i32 0], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ST5481_CMD_PUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st5481_start(%struct.st5481_adapter* %0) #0 {
  %2 = alloca %struct.st5481_adapter*, align 8
  %3 = alloca %struct.st5481_intr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %2, align 8
  %7 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %7, i32 0, i32 1
  store %struct.st5481_intr* %8, %struct.st5481_intr** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = call i32 @DBG(i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %10, i32 0, i32 0
  store i32 134, i32* %11, align 4
  %12 = load %struct.st5481_intr*, %struct.st5481_intr** %3, align 8
  %13 = getelementptr inbounds %struct.st5481_intr, %struct.st5481_intr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @SUBMIT_URB(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %24, %1
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [25 x i32], [25 x i32]* @st5481_start.init_cmd_table, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [25 x i32], [25 x i32]* @st5481_start.init_cmd_table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %30, i32 %31, i32 %32, i32* null, i32* null)
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.st5481_adapter*, %struct.st5481_adapter** %2, align 8
  %36 = load i32, i32* @ST5481_CMD_PUP, align 4
  %37 = call i32 @st5481_ph_command(%struct.st5481_adapter* %35, i32 %36)
  ret void
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @SUBMIT_URB(i32, i32) #1

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i32, i32, i32*, i32*) #1

declare dso_local i32 @st5481_ph_command(%struct.st5481_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
