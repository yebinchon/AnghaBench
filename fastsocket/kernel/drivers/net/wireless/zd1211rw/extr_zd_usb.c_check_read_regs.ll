; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_check_read_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_usb.c_check_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { %struct.read_regs_int }
%struct.read_regs_int = type { i32, i64 }
%struct.usb_req_read_regs = type { i64* }
%struct.usb_int_regs = type { %struct.reg_data* }
%struct.reg_data = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"error: actual length %d less than expected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"error: actual length %d exceeds buffer size %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"rd[%d] addr %#06hx expected %#06hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*, %struct.usb_req_read_regs*, i32)* @check_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_read_regs(%struct.zd_usb* %0, %struct.usb_req_read_regs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_usb*, align 8
  %6 = alloca %struct.usb_req_read_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zd_usb_interrupt*, align 8
  %10 = alloca %struct.read_regs_int*, align 8
  %11 = alloca %struct.usb_int_regs*, align 8
  %12 = alloca %struct.reg_data*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %5, align 8
  store %struct.usb_req_read_regs* %1, %struct.usb_req_read_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %14 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %13, i32 0, i32 0
  store %struct.zd_usb_interrupt* %14, %struct.zd_usb_interrupt** %9, align 8
  %15 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %9, align 8
  %16 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %15, i32 0, i32 0
  store %struct.read_regs_int* %16, %struct.read_regs_int** %10, align 8
  %17 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %18 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.usb_int_regs*
  store %struct.usb_int_regs* %20, %struct.usb_int_regs** %11, align 8
  %21 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %22 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @usb_int_regs_length(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %29 = call i32 @zd_usb_dev(%struct.zd_usb* %28)
  %30 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %31 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @usb_int_regs_length(i32 %33)
  %35 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  store i32 0, i32* %4, align 4
  br label %94

36:                                               ; preds = %3
  %37 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %38 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %40, 8
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %44 = call i32 @zd_usb_dev(%struct.zd_usb* %43)
  %45 = load %struct.read_regs_int*, %struct.read_regs_int** %10, align 8
  %46 = getelementptr inbounds %struct.read_regs_int, %struct.read_regs_int* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 8)
  store i32 0, i32* %4, align 4
  br label %94

49:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %90, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load %struct.usb_int_regs*, %struct.usb_int_regs** %11, align 8
  %56 = getelementptr inbounds %struct.usb_int_regs, %struct.usb_int_regs* %55, i32 0, i32 0
  %57 = load %struct.reg_data*, %struct.reg_data** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %57, i64 %59
  store %struct.reg_data* %60, %struct.reg_data** %12, align 8
  %61 = load %struct.reg_data*, %struct.reg_data** %12, align 8
  %62 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %6, align 8
  %65 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %54
  %73 = load %struct.zd_usb*, %struct.zd_usb** %5, align 8
  %74 = call i32 @zd_usb_dev(%struct.zd_usb* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.reg_data*, %struct.reg_data** %12, align 8
  %77 = getelementptr inbounds %struct.reg_data, %struct.reg_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @le16_to_cpu(i64 %78)
  %80 = load %struct.usb_req_read_regs*, %struct.usb_req_read_regs** %6, align 8
  %81 = getelementptr inbounds %struct.usb_req_read_regs, %struct.usb_req_read_regs* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @le16_to_cpu(i64 %86)
  %88 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg_f(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %79, i32 %87)
  store i32 0, i32* %4, align 4
  br label %94

89:                                               ; preds = %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %50

93:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %72, %42, %27
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @usb_int_regs_length(i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
