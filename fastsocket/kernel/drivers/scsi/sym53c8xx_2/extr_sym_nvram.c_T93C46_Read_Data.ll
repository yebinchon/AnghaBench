; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Read_Data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Read_Data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*, i16*, i32, i8*)* @T93C46_Read_Data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @T93C46_Read_Data(%struct.sym_device* %0, i16* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_device*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.sym_device* %0, %struct.sym_device** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %38, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = or i32 384, %18
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @T93C46_Send_Command(%struct.sym_device* %17, i32 %19, i8* %11, i8* %20)
  %22 = load i8, i8* %11, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %29 = load i16*, i16** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @T93C46_Read_Word(%struct.sym_device* %28, i16* %32, i8* %33)
  %35 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @T93C46_Stop(%struct.sym_device* %35, i8* %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %12

41:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @T93C46_Send_Command(%struct.sym_device*, i32, i8*, i8*) #1

declare dso_local i32 @T93C46_Read_Word(%struct.sym_device*, i16*, i8*) #1

declare dso_local i32 @T93C46_Stop(%struct.sym_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
