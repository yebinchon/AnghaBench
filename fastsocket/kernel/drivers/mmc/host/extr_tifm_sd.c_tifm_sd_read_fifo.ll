; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i8*, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }
%struct.page = type { i32 }

@KM_BIO_DST_IRQ = common dso_local global i32 0, align 4
@DATA_CARRY = common dso_local global i32 0, align 4
@SOCK_MMCSD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.page*, i32, i32)* @tifm_sd_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_read_fifo(%struct.tifm_sd* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tifm_sd*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tifm_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tifm_sd* %0, %struct.tifm_sd** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %14 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %13, i32 0, i32 2
  %15 = load %struct.tifm_dev*, %struct.tifm_dev** %14, align 8
  store %struct.tifm_dev* %15, %struct.tifm_dev** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = load i32, i32* @KM_BIO_DST_IRQ, align 4
  %18 = call i8* @kmap_atomic(%struct.page* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %10, align 8
  %22 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %23 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DATA_CARRY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %4
  %29 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %30 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 %33, i8* %38, align 1
  %39 = load i32, i32* @DATA_CARRY, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %42 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %28, %4
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.tifm_dev*, %struct.tifm_dev** %9, align 8
  %52 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOCK_MMCSD_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %59, i8* %64, align 1
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %50
  %69 = load i32, i32* %12, align 4
  %70 = lshr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %74 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 %72, i8* %76, align 1
  %77 = load i32, i32* @DATA_CARRY, align 4
  %78 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %79 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %92

82:                                               ; preds = %50
  %83 = load i32, i32* %12, align 4
  %84 = lshr i32 %83, 8
  %85 = and i32 %84, 255
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 %86, i8* %91, align 1
  br label %46

92:                                               ; preds = %68, %46
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i32, i32* @KM_BIO_DST_IRQ, align 4
  %99 = call i32 @kunmap_atomic(i8* %97, i32 %98)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
