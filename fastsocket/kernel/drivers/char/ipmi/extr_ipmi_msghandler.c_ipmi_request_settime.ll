; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_request_settime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_request_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ipmi_addr = type { i32 }
%struct.kernel_ipmi_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_request_settime(%struct.TYPE_4__* %0, %struct.ipmi_addr* %1, i64 %2, %struct.kernel_ipmi_msg* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.ipmi_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.kernel_ipmi_msg*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.kernel_ipmi_msg* %3, %struct.kernel_ipmi_msg** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %51

26:                                               ; preds = %8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ipmi_addr*, %struct.ipmi_addr** %11, align 8
  %31 = call i32 @check_addr(i32 %29, %struct.ipmi_addr* %30, i8* %18, i8* %19)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %20, align 4
  store i32 %35, i32* %9, align 4
  br label %51

36:                                               ; preds = %26
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipmi_addr*, %struct.ipmi_addr** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %13, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i8, i8* %18, align 1
  %47 = load i8, i8* %19, align 1
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @i_ipmi_request(%struct.TYPE_4__* %37, i32 %40, %struct.ipmi_addr* %41, i64 %42, %struct.kernel_ipmi_msg* %43, i8* %44, i32* null, i32* null, i32 %45, i8 zeroext %46, i8 zeroext %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %36, %34, %23
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @check_addr(i32, %struct.ipmi_addr*, i8*, i8*) #1

declare dso_local i32 @i_ipmi_request(%struct.TYPE_4__*, i32, %struct.ipmi_addr*, i64, %struct.kernel_ipmi_msg*, i8*, i32*, i32*, i32, i8 zeroext, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
