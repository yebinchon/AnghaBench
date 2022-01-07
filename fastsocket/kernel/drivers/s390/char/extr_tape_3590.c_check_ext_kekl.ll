; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_check_ext_kekl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_check_ext_kekl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape390_kekl = type { i64, i64 }

@TAPE390_KEKL_TYPE_NONE = common dso_local global i64 0, align 8
@TAPE390_KEKL_TYPE_HASH = common dso_local global i64 0, align 8
@TAPE390_KEKL_TYPE_LABEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape390_kekl*)* @check_ext_kekl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ext_kekl(%struct.tape390_kekl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tape390_kekl*, align 8
  store %struct.tape390_kekl* %0, %struct.tape390_kekl** %3, align 8
  %4 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %5 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TAPE390_KEKL_TYPE_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %12 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TAPE390_KEKL_TYPE_HASH, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %19 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TAPE390_KEKL_TYPE_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %45

24:                                               ; preds = %17
  %25 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %26 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TAPE390_KEKL_TYPE_HASH, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %45

31:                                               ; preds = %24
  %32 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %33 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TAPE390_KEKL_TYPE_HASH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.tape390_kekl*, %struct.tape390_kekl** %3, align 8
  %39 = getelementptr inbounds %struct.tape390_kekl, %struct.tape390_kekl* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TAPE390_KEKL_TYPE_LABEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %37, %31
  store i32 0, i32* %2, align 4
  br label %48

45:                                               ; preds = %43, %30, %23, %16, %9
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
