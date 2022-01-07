; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_symbolic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfcusb_symbolic_list = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"<unknown ERROR>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hfcusb_symbolic_list*, i32)* @symbolic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @symbolic(%struct.hfcusb_symbolic_list* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hfcusb_symbolic_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfcusb_symbolic_list* %0, %struct.hfcusb_symbolic_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load %struct.hfcusb_symbolic_list*, %struct.hfcusb_symbolic_list** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %8, i64 %10
  %12 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %7
  %16 = load %struct.hfcusb_symbolic_list*, %struct.hfcusb_symbolic_list** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %16, i64 %18
  %20 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.hfcusb_symbolic_list*, %struct.hfcusb_symbolic_list** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %25, i64 %27
  %29 = getelementptr inbounds %struct.hfcusb_symbolic_list, %struct.hfcusb_symbolic_list* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %36

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
