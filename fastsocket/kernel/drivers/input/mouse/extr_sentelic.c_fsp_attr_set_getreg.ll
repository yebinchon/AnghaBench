; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_getreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.fsp_data* }
%struct.fsp_data = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @fsp_attr_set_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsp_attr_set_getreg(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsp_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load %struct.fsp_data*, %struct.fsp_data** %14, align 8
  store %struct.fsp_data* %15, %struct.fsp_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strict_strtoul(i8* %16, i32 16, i64* %11)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %41

25:                                               ; preds = %19
  %26 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @fsp_reg_read(%struct.psmouse* %26, i64 %27, i32* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, i64* @EIO, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.fsp_data*, %struct.fsp_data** %10, align 8
  %36 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.fsp_data*, %struct.fsp_data** %10, align 8
  %39 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %33, %30, %22
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i64 @fsp_reg_read(%struct.psmouse*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
