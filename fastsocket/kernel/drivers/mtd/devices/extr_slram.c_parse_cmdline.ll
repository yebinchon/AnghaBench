; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_slram.c_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"slram: devname=%s, devstart=0x%lx, devlength=0x%lx\0A\00", align 1
@SLRAM_BLK_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"slram: Illegal length parameter.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %13, %3
  %20 = call i32 (...) @unregister_devices()
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %81

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @simple_strtoul(i8* %24, i8** %8, i32 0)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @handle_unit(i64 %26, i8* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 43
  br i1 %32, label %33, label %49

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @simple_strtoul(i8* %34, i8** %8, i32 0)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @handle_unit(i64 %36, i8* %37)
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %77

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %56

49:                                               ; preds = %23
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = call i64 @simple_strtoul(i8* %51, i8** %8, i32 0)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @handle_unit(i64 %53, i8* %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %49, %45
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %57, i64 %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @SLRAM_BLK_SZ, align 8
  %63 = urem i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %77

66:                                               ; preds = %56
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @register_device(i8* %67, i64 %68, i64 %69)
  store i64 %70, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = call i32 (...) @unregister_devices()
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %81

76:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %81

77:                                               ; preds = %65, %44
  %78 = call i32 @E(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %76, %72, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @unregister_devices(...) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @handle_unit(i64, i8*) #1

declare dso_local i32 @T(i8*, i8*, i64, i64) #1

declare dso_local i64 @register_device(i8*, i64, i64) #1

declare dso_local i32 @E(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
