; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.fsp_data* }
%struct.fsp_data = type { i32 }

@FSPDRV_FLAG_EN_OPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @fsp_attr_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsp_attr_set_flags(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsp_data*, align 8
  %11 = alloca i64, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load %struct.fsp_data*, %struct.fsp_data** %13, align 8
  store %struct.fsp_data* %14, %struct.fsp_data** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %42, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %38 [
    i32 67, label %25
    i32 99, label %31
  ]

25:                                               ; preds = %19
  %26 = load i32, i32* @FSPDRV_FLAG_EN_OPC, align 4
  %27 = load %struct.fsp_data*, %struct.fsp_data** %10, align 8
  %28 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %41

31:                                               ; preds = %19
  %32 = load i32, i32* @FSPDRV_FLAG_EN_OPC, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.fsp_data*, %struct.fsp_data** %10, align 8
  %35 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %41

38:                                               ; preds = %19
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %47

41:                                               ; preds = %31, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %15

45:                                               ; preds = %15
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
