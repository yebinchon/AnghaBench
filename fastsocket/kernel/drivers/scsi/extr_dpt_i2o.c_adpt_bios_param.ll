; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_bios_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_dpt_i2o.c_adpt_bios_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"adpt_bios_param: exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @adpt_bios_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adpt_bios_param(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8192
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 18, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %31

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 131072
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 64, i32* %9, align 4
  store i32 32, i32* %10, align 4
  br label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 262144
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 65, i32* %9, align 4
  store i32 63, i32* %10, align 4
  br label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 524288
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 128, i32* %9, align 4
  store i32 63, i32* %10, align 4
  br label %28

27:                                               ; preds = %23
  store i32 255, i32* %9, align 4
  store i32 63, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @sector_div(i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 252, i32* %9, align 4
  store i32 63, i32* %10, align 4
  store i32 1111, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = call i32 @PDEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @PDEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
