; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_setreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_sentelic.c_fsp_attr_set_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.psmouse*, i8*, i8*, i64)* @fsp_attr_set_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsp_attr_set_setreg(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @simple_strtoul(i8* %14, i8** %12, i32 16)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %19, %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %64

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i64 @strict_strtoul(i8* %32, i32 16, i64* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %11, align 8
  %37 = icmp ugt i64 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %30
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %64

41:                                               ; preds = %35
  %42 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %43 = call i64 @fsp_reg_write_enable(%struct.psmouse* %42, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* @EIO, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %64

48:                                               ; preds = %41
  %49 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @fsp_reg_write(%struct.psmouse* %49, i64 %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* @EIO, align 8
  %56 = sub i64 0, %55
  br label %59

57:                                               ; preds = %48
  %58 = load i64, i64* %9, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i64 [ %56, %54 ], [ %58, %57 ]
  store i64 %60, i64* %13, align 8
  %61 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %62 = call i64 @fsp_reg_write_enable(%struct.psmouse* %61, i32 0)
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %59, %45, %38, %27
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i64 @fsp_reg_write_enable(%struct.psmouse*, i32) #1

declare dso_local i64 @fsp_reg_write(%struct.psmouse*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
