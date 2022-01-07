; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_pdc_stable.c_pdcs_osdep2_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_pdc_stable.c_pdcs_osdep2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@pdcs_size = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@pdcs_osid = common dso_local global i64 0, align 8
@OS_ID_LINUX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@PDCS_ADDR_OSD2 = common dso_local global i64 0, align 8
@PDC_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @pdcs_osdep2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pdcs_osdep2_write(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca [4 x i32], align 16
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EACCES, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %108

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %108

28:                                               ; preds = %22
  %29 = load i32, i32* @pdcs_size, align 4
  %30 = icmp sle i32 %29, 224
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @ENOSYS, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %108

37:                                               ; preds = %28
  %38 = load i64, i64* @pdcs_osid, align 8
  %39 = load i64, i64* @OS_ID_LINUX, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* @EPERM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %108

47:                                               ; preds = %37
  %48 = load i32, i32* @pdcs_size, align 4
  %49 = sub nsw i32 %48, 224
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* @EMSGSIZE, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %108

57:                                               ; preds = %47
  store i16 0, i16* %11, align 2
  br label %58

58:                                               ; preds = %101, %57
  %59 = load i16, i16* %11, align 2
  %60 = zext i16 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %58
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %65 = call i32 @memset(i32* %64, i32 0, i32 4)
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %67 = load i8*, i8** %8, align 8
  %68 = load i16, i16* %11, align 2
  %69 = zext i16 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i64, i64* %9, align 8
  %73 = load i16, i16* %11, align 2
  %74 = zext i16 %73 to i64
  %75 = sub i64 %72, %74
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load i64, i64* %9, align 8
  %79 = load i16, i16* %11, align 2
  %80 = zext i16 %79 to i64
  %81 = sub i64 %78, %80
  br label %83

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i64 [ %81, %77 ], [ 4, %82 ]
  %85 = call i32 @memcpy(i32* %66, i8* %71, i64 %84)
  %86 = load i64, i64* @PDCS_ADDR_OSD2, align 8
  %87 = load i16, i16* %11, align 2
  %88 = zext i16 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = bitcast [4 x i32]* %12 to i32**
  %91 = call i64 @pdc_stable_write(i64 %89, i32** %90, i32 16)
  %92 = load i64, i64* @PDC_OK, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i64, i64* @EIO, align 8
  %99 = sub i64 0, %98
  store i64 %99, i64* %5, align 8
  br label %108

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100
  %102 = load i16, i16* %11, align 2
  %103 = zext i16 %102 to i32
  %104 = add nsw i32 %103, 4
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %11, align 2
  br label %58

106:                                              ; preds = %58
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %106, %97, %54, %44, %34, %25, %16
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @pdc_stable_write(i64, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
