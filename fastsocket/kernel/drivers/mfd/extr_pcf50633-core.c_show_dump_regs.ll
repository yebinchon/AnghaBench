; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_show_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_show_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcf50633 = type { i32 }

@show_dump_regs.address_no_read = internal global [6 x i32] [i32 132, i32 131, i32 130, i32 129, i32 128, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dump_regs(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pcf50633*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.pcf50633* @dev_get_drvdata(%struct.device* %13)
  store %struct.pcf50633* %14, %struct.pcf50633** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %62, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 64
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* @show_dump_regs.address_no_read, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %35
  store i32 0, i32* %36, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.pcf50633*, %struct.pcf50633** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @pcf50633_reg_read(%struct.pcf50633* %38, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %20

50:                                               ; preds = %20
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @hex_dump_to_buffer(i32* %51, i32 64, i32 16, i32 1, i8* %52, i32 128, i32 0)
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  store i8 10, i8* %59, align 1
  %61 = load i8*, i8** %12, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %16

67:                                               ; preds = %16
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  ret i32 %73
}

declare dso_local %struct.pcf50633* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
