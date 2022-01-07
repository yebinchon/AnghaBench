; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_convert_atmel_pri.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_convert_atmel_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i64, %struct.TYPE_2__*, %struct.cfi_pri_amdstd* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cfi_pri_amdstd = type { i32, i32 }
%struct.cfi_pri_atmel = type { i32, i64 }

@AT49BV6416 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i8*)* @fixup_convert_atmel_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_convert_atmel_pri(%struct.mtd_info* %0, i8* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca %struct.cfi_pri_amdstd*, align 8
  %8 = alloca %struct.cfi_pri_atmel, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.map_info*, %struct.map_info** %10, align 8
  store %struct.map_info* %11, %struct.map_info** %5, align 8
  %12 = load %struct.map_info*, %struct.map_info** %5, align 8
  %13 = getelementptr inbounds %struct.map_info, %struct.map_info* %12, i32 0, i32 0
  %14 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  store %struct.cfi_private* %14, %struct.cfi_private** %6, align 8
  %15 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 2
  %17 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %16, align 8
  store %struct.cfi_pri_amdstd* %17, %struct.cfi_pri_amdstd** %7, align 8
  %18 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %19 = call i32 @memcpy(%struct.cfi_pri_atmel* %8, %struct.cfi_pri_amdstd* %18, i32 16)
  %20 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %21 = bitcast %struct.cfi_pri_amdstd* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  %23 = call i32 @memset(i8* %22, i32 0, i32 3)
  %24 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %30 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %33 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AT49BV6416, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %8, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %43 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %42, i32 0, i32 1
  store i32 3, i32* %43, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %46 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %45, i32 0, i32 1
  store i32 2, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %59

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %54 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %53, i32 0, i32 1
  store i32 2, i32* %54, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %7, align 8
  %57 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %56, i32 0, i32 1
  store i32 3, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %61 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %65 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.cfi_pri_atmel*, %struct.cfi_pri_amdstd*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
