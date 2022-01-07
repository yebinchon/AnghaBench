; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i8*, %struct.tifm_dev* }
%struct.tifm_dev = type { i64 }
%struct.page = type { i32 }

@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@DATA_CARRY = common dso_local global i32 0, align 4
@SOCK_MMCSD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.page*, i32, i32)* @tifm_sd_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_write_fifo(%struct.tifm_sd* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
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
  %17 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
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
  br i1 %27, label %28, label %58

28:                                               ; preds = %4
  %29 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %30 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = and i32 %42, 65280
  %44 = or i32 %34, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.tifm_dev*, %struct.tifm_dev** %9, align 8
  %47 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOCK_MMCSD_DATA, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* @DATA_CARRY, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %55 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %28, %4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %79 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 %77, i8* %81, align 1
  %82 = load i32, i32* @DATA_CARRY, align 4
  %83 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %84 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %106

87:                                               ; preds = %63
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = and i32 %95, 65280
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.tifm_dev*, %struct.tifm_dev** %9, align 8
  %101 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SOCK_MMCSD_DATA, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  br label %59

106:                                              ; preds = %74, %59
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %113 = call i32 @kunmap_atomic(i8* %111, i32 %112)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
